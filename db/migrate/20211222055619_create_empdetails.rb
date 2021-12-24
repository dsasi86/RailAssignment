class CreateEmpdetails < ActiveRecord::Migration[7.0]
  def change
    create_table :empdetails do |t|
      t.string :Name
      t.integer :Age
      t.string :Gender
      t.string :Designation
      t.string :contact_number
      t.text :address

      t.timestamps
    end
  end
end
