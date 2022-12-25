module Spree::OrderDecorator
    def checkout_allowed?
        super
        total >= (Spree::Store.current.preferred_minimum_order_value || 0)
    end
end

::Spree::Order.prepend(Spree::OrderDecorator)