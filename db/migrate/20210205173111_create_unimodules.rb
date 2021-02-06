class CreateUnimodules < ActiveRecord::Migration[6.0]
  def change
    create_table :unimodules do |t|
      t.string :code
      t.string :title

      t.timestamps
    end
  end
end
