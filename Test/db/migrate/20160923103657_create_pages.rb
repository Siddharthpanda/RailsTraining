class CreatePages < ActiveRecord::Migration[5.0]
  def up
    create_table :pages do |t|
    	t.integer "subjct_id"
    	t.string "name"
    	t.string "permalink"
    	t.integer "position"
    	t.boolean "visible", default: false
      t.timestamps
    end
    add_index("pages", "subjct_id")
    add_index("pages", "permalink")
  end
  def down
  	drop_table :pages
  end
end
