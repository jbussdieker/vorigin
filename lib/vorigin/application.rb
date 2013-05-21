require 'sinatra/base'

module Vorigin
  class Application < Sinatra::Base
    get "/" do
      "OK"
    end

    get "/rps/:rps" do
      rps = params[:rps].to_f
      sleep_time = 1 / rps
      sleep sleep_time
      "#{rps} RPS. Sleep #{sleep_time}"
    end
  end
end
