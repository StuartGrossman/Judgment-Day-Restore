class Adddroptable < ActiveRecord::Migration
  def change
    remove_column :companies, :email_domains
    add_column :companies, :email_domains, :text
  end
end
