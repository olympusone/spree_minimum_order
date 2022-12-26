module Spree::V2::Storefront::CartSerializerDecorator
  def self.prepended(base)
    base.attribute :checkout_allowed do |order|
      order.checkout_allowed?
    end
  end
end

::Spree::V2::Storefront::CartSerializer.prepend(Spree::V2::Storefront::CartSerializerDecorator)