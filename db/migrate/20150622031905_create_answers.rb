class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.text :description
      t.belongs_to :user
      t.belongs_to :question
      t.boolean :best, default: false
      t.integer :votes_count, default: 0
      t.timestamps null: false
    end
  end
end
