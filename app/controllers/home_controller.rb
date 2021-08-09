class HomeController < ApplicationController
  def index
    @products = ProductDigital.all
  end
end
