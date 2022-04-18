class AddNameToGrinds < ActiveRecord::Migration[6.1]
  def change
    add_column :grinds, :grind_name, :string
  end
end
