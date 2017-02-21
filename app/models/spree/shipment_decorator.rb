Spree::Shipment.class_eval do
  belongs_to :delivery_slot
  belongs_to :collection_slot

  delegate :is_delivery_slots_enabled?, to: :shipping_method, allow_nil: true
  delegate :is_collection_slots_enabled?, to: :shipping_method, allow_nil: true


  validate :verify_delivery_slot, if: [:is_delivery_slots_enabled?, :delivery_slot]

  validate :verify_collection_slot, if: [:is_collection_slots_enabled?, :collection_slot]


  before_save :ensure_valid_delivery_slot, if: :delivery_slot

  before_save :ensure_valid_collection_slot, if: :collection_slot


  def delivery_slot
    Spree::DeliverySlot.unscoped { super }
  end

  def colection_slot
    Spree::CollectionSlot.unscoped { super }
  end


  def delivery_slot_time_frame
    delivery_slot ? delivery_slot.time_frame : Spree.t(:any_time)

  end

  def collection_slot_time_frame
    collection_slot ? collection_slot.time_frame : Spree.t(:any_time)
  end

  private
    def ensure_valid_delivery_slot
      unless is_delivery_slots_enabled?
        self.delivery_slot_id = nil
      end
    end

  def ensure_valid_collection_slot
    unless is_collection_slots_enabled?
      self.collection_slot_id = nil
    end
  end


    def verify_delivery_slot
      if delivery_slot.shipping_method != shipping_method
        self.errors.add(:delivery_slot_id, :should_belongs_to_correct_shipping_method)
      end
    end

  def verify_collection_slot
    if collection_slot.shipping_method != shipping_method
      self.errors.add(:collection_slot_id, :should_belongs_to_correct_shipping_method)
    end
  end
end
