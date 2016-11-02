class CreateContacts < ActiveRecord::Migration[5.0]
  def change
    create_table :contacts do |t|
      t.text :name
      t.text :email

      t.timestamps
    end
  end
end
