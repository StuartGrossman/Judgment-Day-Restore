class Addtocompanies < ActiveRecord::Migration
  def change
  	remove_column :companies, :title
  	remove_column :companies, :size
  	add_column :companies, :universal_name, :string
	add_column :companies, :logo_url, :string
	add_column :companies, :website_url, :string
	add_column :companies, :email_domains, :string
	add_column :companies, :founded_year, :integer
	add_column :companies, :num_followers, :integer
  end
end
