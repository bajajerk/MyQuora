class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :question
      t.references :User, index: true, foreign_key: true
      t.string :content
      t.boolean :anonymous

      t.timestamps null: false
    end
  end
end
