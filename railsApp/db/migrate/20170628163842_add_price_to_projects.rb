class AddPriceToProjects < ActiveRecord::Migration[5.1]
  def change
    add_column :projects, :price, :string
  end
end
