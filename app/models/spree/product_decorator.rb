module Spree
	Product.class_eval do
		delegate :fill_weight to :master
		delegate :base_unit to :master
	end
end