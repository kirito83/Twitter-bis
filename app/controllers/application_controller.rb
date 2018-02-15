class ApplicationController < ActionController::Base
  def home
  	render html: "Bonjour"
  end
end
