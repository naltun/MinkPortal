json.array!(@tsightings) do |tsighting|
  json.extract! tsighting, :id, :x_coord, :y_coord, :date, :your_name, :contact_info, :catchment, :river, :no_of_minks, :status, :comments
  json.url tsighting_url(tsighting, format: :json)
end
