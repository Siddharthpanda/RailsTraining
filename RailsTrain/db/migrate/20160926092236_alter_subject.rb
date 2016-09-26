class AlterSubject < ActiveRecord::Migration[5.0]
  def up
  	add_column("subjects", "position", :integer)
  	add_column("subjects", "visible", :boolean, :default => false)
  end
end
