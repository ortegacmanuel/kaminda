class InlineFormsCreateLocales < ActiveRecord::Migration[5.0]

  def self.up
    create_table :locales do |t|
      t.string :name 
      t.string :title 
      t.timestamps
    end
  end

  def self.down
    drop_table :locales
  end

end
