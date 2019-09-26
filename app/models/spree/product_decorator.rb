module Spree
	Product.class_eval do
		delegate :master, :fill_weight
		delegate :master, :base_unit
	end
end