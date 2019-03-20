json.array! @products do |product|
  json.id product.id
  json.name product.name
  json.price product.price
  json.image_url product.image_url
  json.description product.description
  # json.discounted product.is_discounted
end

# json.array! @products do |product|
#   # json.partial! "product.json.jbuilder", variable-in-loop: temp_variable-defined-in-loop(orange)
#   json.partial! "product.json.jbuilder", product: product
# end