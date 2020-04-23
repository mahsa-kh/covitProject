class AddEmployeeNumberToBusiness < ActiveRecord::Migration[6.0]
  def change
    add_column :businesses, :employee_no, :string
    add_column :businesses, :integer, :string
  end
end
