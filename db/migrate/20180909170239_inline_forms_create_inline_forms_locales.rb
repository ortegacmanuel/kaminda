class InlineFormsCreateInlineFormsLocales < ActiveRecord::Migration[5.0]

  def self.up
    create_table :inline_forms_locales do |t|
      t.string :name 
      t.belongs_to :inline_forms_translations 
      t.timestamps
    end
  end

  def self.down
    drop_table :inline_forms_locales
  end

end
