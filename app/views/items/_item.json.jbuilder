json.extract! item, :id, :name, :retail-price, :quantity, :wholesale-price, :created_at, :updated_at
json.url item_url(item, format: :json)
