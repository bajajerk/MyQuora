class CreateUpvoteQuestions < ActiveRecord::Migration
  def change
    create_table :upvote_questions do |t|
      t.references :question, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
