class CreateCheckouts < ActiveRecord::Migration
  def change
    create_table :checkouts do |t|
      t.string :name, null: false
      t.date :date, null: false
      t.belongs_to :book
    end
  end
end
