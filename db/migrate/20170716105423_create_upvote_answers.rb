class CreateUpvoteAnswers < ActiveRecord::Migration
  def change
    create_table :upvote_answers do |t|
      t.references :answer, index: true, foreign_key: true
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
