class CreateInterviews < ActiveRecord::Migration[5.1]
  def change
    create_table :interviews do |t|
      t.string :interview_number
      t.references :position, foreign_key: true
      t.references :interview_type, foreign_key: true
      t.text :interview_comments

      t.timestamps
    end
  end
end
