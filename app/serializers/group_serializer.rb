class GroupSerializer < ActiveModel::Serializer
  attributes :id, :namne, :summary, :location, :image_url
end
