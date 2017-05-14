class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :menu1
      t.string :menu2
      t.string :menu3
      t.string :menu4
      t.string :menu5
      t.string :menu6
      t.string :menu7
      t.string :menu8
      t.string :menu9
      t.string :menu10
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
