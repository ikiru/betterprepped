class CreateQuestionCatagories < ActiveRecord::Migration[5.1]
  def change
    create_table :question_catagories do |t|
      t.string :question
      t.references :report, foreign_key: true

      t.timestamps
    end
  end
end
