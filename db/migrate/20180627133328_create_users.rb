class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :uid
      t.string :provider
      t.string :name
      t.string :nickname
      t.string :location
      t.string :image

      t.timestamps
    end
  end
end
