class InlineFormsCreateTrainingTries < ActiveRecord::Migration[5.0]

  def self.up
    create_table :training_tries do |t|
      t.string :name
      t.integer :result
      t.belongs_to :training_unit
      t.belongs_to :training_session
      t.timestamps
    end
  end

  def self.down
    drop_table :training_tries
  end

end
