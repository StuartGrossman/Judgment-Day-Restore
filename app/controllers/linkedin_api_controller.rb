class LinkedinApiController < ApplicationController

	def results
		query = params[:q]

      @company_id = query
      scope = "r_basicprofile%20r_emailaddress"
	 	client_id = '756wwpcnybgkfj'
	 	state = '324DSFAFDS123Dsd13'
	 	redirect_uri = "http://localhost:3000/linkedin_api/api"
	 	company = @company_id
	  	response = Typhoeus.get("http://www.linkedin.com/ta/federator?query=#{company}&types=company,sitefeature,email-domains")
	  	@response = JSON.parse(response.body)
	  	@response.to_s

     
    end


end

