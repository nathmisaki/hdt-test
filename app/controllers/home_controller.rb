class HomeController < ApplicationController

  def index
    @data = HoradotreinoClient.new
    @data_json = @data.req_get_data(
      name: "",
      price: ""
    )
  end

  def specific_search()
    @data_specific_search = @data.req_get_data(
      name: "#{params[:name]}", 
      price: "#{params[:range]}"
    )
  end
end
