module Spree::V2::Storefront::StoreSerializerDecorator
  def self.prepended(base)
    base.attribute :minimum_order_value do |store|
      (store.preferred_minimum_order_value || 0).to_f
    end
  end
end

::Spree::V2::Storefront::StoreSerializer.prepend(Spree::V2::Storefront::StoreSerializerDecorator)