class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.text :content
      t.integer :importance
      # t.belongs_to :survey

      t.string :question_type
      t.boolean :gender_question, :default => false
      t.timestamps null: false
    end
  end
end
