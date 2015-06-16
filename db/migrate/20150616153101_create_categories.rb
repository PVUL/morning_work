class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name, uniqueness: true, null: false
    end
  end
end
