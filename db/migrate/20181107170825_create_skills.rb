class CreateSkills < ActiveRecord::Migration[5.2]
  def change
    create_table :skills do |t|
      t.string :name
      t.string :percentage
      t.string :cv_id

      t.timestamps
    end
  end
end
