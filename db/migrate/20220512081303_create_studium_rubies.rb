class CreateStudiumRubies < ActiveRecord::Migration[7.0]
  def change
    create_table :studium_rubies do |t|
      t.string :First_name
      t.string :Last_Name
      t.string :Email
      t.string :Phone
      t.string :Instagram

      t.timestamps
    end
  end
end
