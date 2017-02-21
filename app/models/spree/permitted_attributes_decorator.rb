## `delivery_slot_id` should be need to assign before `selected_shipping_rate_id`
## because `selected_shipping_rate_id` also saves shipment.

Spree::PermittedAttributes.shipment_attributes.unshift(:delivery_slot_id, :collection_slot_id, :delivery_date, :collection_date)

