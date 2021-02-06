class CreateModreviews < ActiveRecord::Migration[6.0]
  def change
    create_table :modreviews do |t|
      t.text :body
      t.references :unimodule, null: false, foreign_key: true

      t.timestamps
    end
  end
end
