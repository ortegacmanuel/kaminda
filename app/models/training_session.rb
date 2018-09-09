class TrainingSession < ApplicationRecord
  attr_reader :per_page
  @per_page = 7
  attr_writer :inline_forms_attribute_list
  has_paper_trail

  belongs_to :user
  has_many :training_tries

  def _presentation
    "#{name} <br>correct: #{correct_count} wrong: #{wrong_count}".html_safe
  end

  def correct_count
    training_tries.count(&:correct?)
  end

  def wrong_count
    training_tries.count(&:wrong?)
  end

  def inline_forms_attribute_list
    @inline_forms_attribute_list ||= [
      [ :name, "name", :text_field ],
      [ :user, 'user', :dropdown],
      [ :training_tries, "training_tries", :associated ],
    ]
  end


  def self.not_accessible_through_html?
    false
  end

  def self.order_by_clause
    nil
  end
end
