	class LcboApi
		
		def self.get_products
			JSON.parse(open('http://lcboapi.com/products?per_page=20').read)
		end
	    
	end