class LinkedinApiController < ApplicationController
	def show
		# respond_to do |f|	
	 # 	f.html { render :html }
	 # 	f.json { render :json }
	 # 	end
	 	@company_id = 'google'
	 	scope = "r_basicprofile%20r_emailaddress"
	 	client_id = '756wwpcnybgkfj'
	 	state = '324DSFAFDS123Dsd13'
	 	redirect_uri = "http://localhost:3000/linkedin_api/api"
	 	company = @company_id
	 	#url = "https://www.linkedin.com/uas/oauth2/authorization?response_type=code%20&client_id=#{client_id}%20&scope=#{scope}%20&state=#{state}%20&redirect_uri=#{redirect_uri}"
	 	url = ""
	  	response = Typhoeus.get("http://www.linkedin.com/ta/federator?query=#{company}&types=company,sitefeature,email-domains")
	  	@response = JSON.parse(response.body)
	  	@response.to_s

	end	
end

