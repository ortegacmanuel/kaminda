class InlineFormsCreateInlineFormsKeys < ActiveRecord::Migration[5.0]

  def self.up
    create_table :inline_forms_keys do |t|
      t.string :name 
      t.timestamps
    end
  end

  def self.down
    drop_table :inline_forms_keys
  end

end
