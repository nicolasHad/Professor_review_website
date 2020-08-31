class CreateProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :profiles do |t|
      t.string :photo
      t.references :professor, null: false, foreign_key: true

      t.timestamps
    end
  end
end
