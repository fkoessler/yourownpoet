# The controller in charge of rendering the homepage
class WelcomeController < ApplicationController

  after_filter :set_csrf_cookie_for_ng

  #Renders the application's homepage
  def index
  end

  private

  # Send a cookie with XSRF token to the client so that angular can read the token
  # from the cookie and send it back in post requests
  # See: https://docs.angularjs.org/api/ng/service/$http#cross-site-request-forgery-xsrf-protection
  def set_csrf_cookie_for_ng
    cookies['XSRF-TOKEN'] = form_authenticity_token if protect_against_forgery?
  end

end
