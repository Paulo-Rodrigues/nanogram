class Followers < ActiveRecord::Migration[6.0]
  def change
    create_table :follows, force:  true do |t|
      t.references :followable, polymorphic: true, null: false
      t.references :follower, polymorphic: true, null: false
      t.timestamps
    end

    add_index :follows, ["follower_id", "follower_type"], name: "fk_follows"
    add_index :follows, ["followable_id", "followable_type"], name: "fk_followables"
  end
end
