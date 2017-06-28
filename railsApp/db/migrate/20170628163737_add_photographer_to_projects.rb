class AddPhotographerToProjects < ActiveRecord::Migration[5.1]
  def change
    add_column :projects, :photographer, :string
  end
end
