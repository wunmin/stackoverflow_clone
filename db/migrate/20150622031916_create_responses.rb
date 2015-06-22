class CreateResponses < ActiveRecord::Migration
  def change
    create_table :responses do |t|
      t.text :description
      t.belongs_to :user
      t.references :responseable, polymorphic: true
      t.timestamps null: false
    end
  end
end
