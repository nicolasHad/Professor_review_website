class AddColumnToProfessors < ActiveRecord::Migration[6.0]
  def change
    add_column :professors, :position, :string
  end
end
