class CreateInterviews < ActiveRecord::Migration[5.1]
  def change
    create_table :interviews do |t|
      t.string :round
      t.string :comment

      t.timestamps
    end
  end
end
