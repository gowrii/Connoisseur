require 'json' 
require 'open-uri'
require 'lcbo_api'

class ProductsController < ApplicationController


	def index
		@products = LcboApi.get_products
	end

	 def show
	 	product_json = open("http://lcboapi.com/products/#{params[:id]}").read
	 	@product = JSON.parse(product_json)
	 	@product= @product['result']
	 	@store = []
	end
end
