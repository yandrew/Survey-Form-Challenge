class CreateResponses < ActiveRecord::Migration
  def change
    create_table :responses do |t|
    	t.belongs_to :user
    	t.belongs_to :question
    	t.belongs_to :answer
    	t.boolean :male
      t.timestamps null: false
    end
  end
end
