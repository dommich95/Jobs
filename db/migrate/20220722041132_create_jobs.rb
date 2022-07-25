class CreateJobs < ActiveRecord::Migration[5.2]
  def change
    create_table :jobs do |t|
      t.text :task
      t.text :location
      t.text :description
      t.text :duration
      t.text :image
      t.string :user_id

      t.timestamps
    end
  end
end
