class CreateCvs < ActiveRecord::Migration[5.2]
  def change
    create_table :cvs do |t|
      t.string :user_id

      t.timestamps
    end
  end
end
