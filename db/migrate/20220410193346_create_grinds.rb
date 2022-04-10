class CreateGrinds < ActiveRecord::Migration[6.1]
  def change
    create_table :grinds do |t|
      t.integer :grinder_setting
      t.string :coffee_name
      t.string :extraction_type
      t.text :comments

      t.timestamps
    end
  end
end
