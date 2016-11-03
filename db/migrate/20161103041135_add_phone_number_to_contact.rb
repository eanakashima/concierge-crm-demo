class AddPhoneNumberToContact < ActiveRecord::Migration[5.0]
  def change
    add_column :contacts, :phone, :text
  end
end
