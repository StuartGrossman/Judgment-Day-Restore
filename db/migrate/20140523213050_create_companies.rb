class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
    	t.string :title
    	t.integer :size
    	t.string :industry 
    	t.string :location
    	t.text :description
    	t.string :url
      t.timestamps
    end
  end
end
