class Dropagain < ActiveRecord::Migration
  def change
  	remove_column :companies, :url
  end
end
