class AddAssignedInJobs < ActiveRecord::Migration[6.0]
  def change
    add_column :jobs, :assigned_by, :string
  end
end
