class HomePageController < ApplicationController
	  def search
    @search = SimpleSearch.new SimpleSearch.get_params(params)
   
    if @search.valid?
      @companies = @search.search_within Company.all, :title
    else
      flash[:errors]=@search.errors.full_messages
    end
  end
end
