json.array!(@penghasilans) do |penghasilan|
  json.extract! penghasilan, :id, :penghasilan
  json.url penghasilan_url(penghasilan, format: :json)
end
