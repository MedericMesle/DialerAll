class AddGrinderModel < ActiveRecord::Migration[6.1]
  def change
    add_column :grinds, :grinder_name, :string
  end
end
