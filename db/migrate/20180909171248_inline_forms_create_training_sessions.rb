class InlineFormsCreateTrainingSessions < ActiveRecord::Migration[5.0]

  def self.up
    create_table :training_sessions do |t|
      t.string :name 
      t.belongs_to :user 
      t.timestamps
    end
  end

  def self.down
    drop_table :training_sessions
  end

end
