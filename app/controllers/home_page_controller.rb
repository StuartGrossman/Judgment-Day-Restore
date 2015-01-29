class HomePageController < ApplicationController
  def search
    @companies = Company.where(universal_name: params[:q])
    @search = SimpleSearch.new SimpleSearch.get_params(params)
   
    puts params[:q]

    if @search.invalid? 
      flash[:errors]="Not a valid search";
    else
      @search.valid?
      @companies = @search.search_within Company.all, :title
    end
  end
end
