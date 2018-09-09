class TrainingTry < ApplicationRecord
  attr_reader :per_page
  @per_page = 7
  attr_writer :inline_forms_attribute_list
  has_paper_trail

  belongs_to :training_session
  belongs_to :training_unit

  def _presentation
    "#{training_unit.name} - #{correct? ? 'correct' : 'wrong'}"
  end

  def correct?
    result == 1
  end

  def wrong?
    result == 0
  end

  def inline_forms_attribute_list
    @inline_forms_attribute_list ||= [
      [ :name , "name", :text_field ],
      [ :training_unit, 'training_unit', :dropdown],
      [ :result , "result", :radio_button, { 0 => 'wrong', 1 => 'correct' } ],
    ]
  end


  def self.not_accessible_through_html?
    true
  end

  def self.order_by_clause
    nil
  end
end
