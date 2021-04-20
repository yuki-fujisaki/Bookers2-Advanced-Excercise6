class CreateRelationships < ActiveRecord::Migration[5.2]
  def change
    create_table :relationships do |t|
      t.references :follower, null: false, foreign_key: false
      t.references :followed, null: false, foreign_key: false

      t.timestamps
    end
  end
end
