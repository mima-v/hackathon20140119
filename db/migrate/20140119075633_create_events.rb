class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.integer :location_id, null: false
      t.string :name, null: false, limit: 20
      t.string :description, null: false, limit: 32
      t.string :image
      t.integer :max_member
      t.integer :now_member
      t.datetime :opened_at, null: false
      t.datetime :closed_at

      t.timestamps
    end
  end
end
