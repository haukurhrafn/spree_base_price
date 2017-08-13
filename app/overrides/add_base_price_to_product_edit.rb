Deface::Override.new(:virtual_path => 'spree/admin/products/_form',
	:name => 'add_base_price_to_product_edit',
	:insert_after => "[data-hook='admin_product_form_price'], #admin_product_form_price[data-hook]",
	:text => "
		<div data-hook='admin_product_form_cost_price' class='alpha two columns'>
			<%= f.field_container :base_price, class: ['form-group'] do %>
				<%= f.label :cost_price, Spree.t(:fill_weight) %>
				<%= f.text_field :fill_weight, class: 'form-control' %>
				<%= f.error_message_on :base_price %>
			<% end %>
			<%= f.field_container :base_unit, class: ['form-group'] do %>
				<%= f.label :base_unit, Spree.t(:base_unit) %>
				<%= f.text_field :base_unit, class: 'form-control' %>
				<%= f.error_message_on :base_unit %>
			<% end %>
		</div>
	")
