module Spree::StoreDecorator
  def self.prepended(base)
    base.preference :minimum_order_value, :decimal, default: 0.0
  end
end

::Spree::Store.prepend(Spree::StoreDecorator)