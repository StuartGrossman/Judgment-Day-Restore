class Company < ActiveRecord::Base

  def searchCompany
    searchCompany if title
  end

  
end
