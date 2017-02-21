Spree::ShippingMethod.class_eval do
  has_many :delivery_slots, dependent: :destroy, inverse_of: :shipping_method
  has_many :collection_slots, dependent: :destroy, inverse_of: :shipping_method

  accepts_nested_attributes_for :delivery_slots, allow_destroy: true, reject_if: :all_blank
  accepts_nested_attributes_for :collection_slots, allow_destroy: true, reject_if: :all_blank

  def delivery_slots_time_frames
    [[Spree.t(:any_time), nil]].concat(delivery_slots.map { |delivery_slot| [delivery_slot.time_frame, delivery_slot.id] })
  end

  def collection_slots_time_frames
    [[Spree.t(:any_time), nil]].concat(collection_slots.map { |collection_slot| [collection_slot.time_frame, collection_slot.id] })
  end
end
