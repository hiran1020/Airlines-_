class AirlineSerializer
  include FastJsonapi::ObjectSerializer
  attributes :name, :image_url, :slug

  has_many :analysis
end
