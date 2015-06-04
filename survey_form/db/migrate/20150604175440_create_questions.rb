class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.text :content
      t.integer :importance
      t.question_type :string
      t.timestamps null: false
    end
  end
end
