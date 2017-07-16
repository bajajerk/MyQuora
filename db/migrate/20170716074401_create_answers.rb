class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.references :User, index: true, foreign_key: true
      t.references :question, index: true, foreign_key: true
      t.string :content

      t.timestamps null: false
    end
  end
end
