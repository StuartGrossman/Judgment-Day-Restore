class CompaniesController < ApplicationController
	def index
		@companies = Company.all
	 end
	 # def create
	 # 	@new_company = Company.update_all(params)
	 # end
	 def show
	 	@company = Company.find(params[:id])
	 end
	 def new
	 	@companies = Company.all
		respond_to do |f|	
	 	f.html { render :html }
	 	f.json { render :json => @companies }
	 	end
	 end

	 def search
		@companies.all.title	 	
	 end
	 def destory
	 end
	private
	def companies_params
		params.require(:company).permit(:industry, :location, :description, :universal_name, :logo_url, :website_url, :email_domains, :founded_year, :num_followers)
	end
end
