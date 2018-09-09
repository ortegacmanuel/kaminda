class InlineFormsCreateTrainingUnits < ActiveRecord::Migration[5.0]

  def self.up
    create_table :training_units do |t|
      t.string :name 
      t.text :description 
      t.string :external_link 
      t.string :external_id 
      t.timestamps
    end
  end

  def self.down
    drop_table :training_units
  end

end
