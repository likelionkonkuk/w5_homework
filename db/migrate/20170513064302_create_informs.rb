class CreateInforms < ActiveRecord::Migration
  def change
    create_table :informs do |t|
      t.string :title
      t.string :content

      t.timestamps null: false
    end
  end
end
