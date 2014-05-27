class CompaniesController < ApplicationController
	def index
		@companies = Company.all
	 end
	 def create
	 	@company = Company.new(params[:id])
	 end
	 def show
	 	@compaies = Company.all
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
		params.require(:companies).permit(:title, :size, :industry, :location, :description, :url)
	end
end
