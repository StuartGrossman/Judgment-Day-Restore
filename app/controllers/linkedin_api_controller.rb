class LinkedinApiController < ApplicationController

	def results
		query = params[:q]
        @company_id = query
        scope = "r_basicprofile%20r_emailaddress"
	 	client_id = '756wwpcnybgkfj'
	 	state = '324DSFAFDS123Dsd13'
	 	redirect_uri = "http://localhost:3000/linkedin_api/api"
	 	company = @company_id
	  	response = Typhoeus.get("http://www.linkedin.com/ta/federator?query=#{company}&types=company,sitefeature,email-domains,description")
	  	@response = JSON.parse(response.body)
	  	@response.to_s
    end
    def add
    	@results = params[:id]
    	@company_id = @results

   
 		client = LinkedIn::Client.new('756wwpcnybgkfj', 'MevJ0KO5RdBA64HE') 
 		@company_data = client.company(:id => @company_id, :fields=>["universal-name","email-domains","company-type","ticker","website-url","industries","status","logo-url","square-logo-url","blog-rss-url","twitter-id","employee-count-range","specialties","locations","description","stock-exchange","founded-year","end-year","num-followers"])

 
    end
    def show
    	
    end
   
end

