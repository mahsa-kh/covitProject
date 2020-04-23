class AddEmployeeNumberToBusiness < ActiveRecord::Migration[6.0]
  def change
    add_column :businesses, :employee_no, :integer
  end
end
