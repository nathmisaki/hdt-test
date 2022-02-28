require 'rest-client'
require 'ostruct'
require 'json'

def mko o = {}
  OpenStruct.new(o)
end

# Class for get data API hora_do_treino
class HoradotreinoClient
  BASE_URL = 'https://horadotreino-staging-api.herokuapp.com/api/v1/pages/search.json'

  def fix_params(params)
    size = params.size
    params = mko params

    if (params.price == '' && params.name == '' )
      params_str = ''
    end
    if size == 1
      if params.price.present? 
        params_str = "?price=#{params.price}"
      end 
      if params.name.present?
        params_str = "?name=#{params.name}"
      end
    end
    if (params.price.present?) && (params.name.present?)
      params_str = "?name=#{params.name}&price=#{params.price}"
    end
  end

  def req_get_data(params)
    params_str = fix_params(params)
    resp = RestClient.get(BASE_URL + params_str.to_s)
    return JSON.parse(resp.body)
  end
end
