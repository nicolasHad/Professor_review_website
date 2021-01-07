class CreateDegreeReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :degree_reviews do |t|
      t.text :body
      t.references :degree, null: false, foreign_key: true

      t.timestamps
    end
  end
end
