class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :title, null: false
      t.text :description, null: false
      t.integer :views_count, default: 0
      t.integer :votes_count, default: 0
      t.belongs_to :user
      t.timestamps null: false
    end
  end
end
