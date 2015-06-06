class CreateSelections < ActiveRecord::Migration
  def change
    create_table :selections do |t|
      t.belongs_to :answer
      t.belongs_to :parrails 
      t.timestamps null: false
    end
  end
end
