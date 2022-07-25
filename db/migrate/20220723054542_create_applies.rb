class CreateApplies < ActiveRecord::Migration[5.2]
  def change
    create_table :applies do |t|
      t.text :name
      t.text :family
      t.text :description
      t.integer :user_id

      t.timestamps
    end
  end
end
