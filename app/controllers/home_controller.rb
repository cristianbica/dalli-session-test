class HomeController < ApplicationController
  def show
    reset_session
    session[:test] = Time.now.to_f
    Rails.cache.write "cache-test", Time.now.to_f
    Rails.cache.fetch("test1123")
    render nothing: true
  end
end
