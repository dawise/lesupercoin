class CreateAnnonces < ActiveRecord::Migration
  def change
    create_table :annonces do |t|
      t.string :picture_url
      t.string :title
      t.integer :price
      t.string :telephone
      t.string :author

      t.timestamps
    end
  end
end
