class CreateContactDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :contact_details do |t|
      t.string :address
      t.string :phone_number
      t.string :cv_id

      t.timestamps
    end
  end
end
