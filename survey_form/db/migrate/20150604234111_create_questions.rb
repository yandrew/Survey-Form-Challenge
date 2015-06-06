class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.text :content
      t.references :survey, index: true, foreign_key: true
      t.integer :importance
      t.string :question_type
      t.boolean :gender_question
      t.timestamps null: false
    end
  end
end
