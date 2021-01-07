class CreateDegrees < ActiveRecord::Migration[6.0]
  def change
    create_table :degrees do |t|
      t.string :code
      t.string :title

      t.timestamps
    end
  end
end
