json.array!(@cfgs) do |cfg|
  json.extract! cfg, :id, :sale_tel, :email, :company_name, :address, :content
  json.url cfg_url(cfg, format: :json)
end
