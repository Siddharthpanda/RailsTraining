class AlterSubjects < ActiveRecord::Migration[5.0]
  def up
  	add_column("subjects", "name", :string, :limit => 25)
  	
  end
end
