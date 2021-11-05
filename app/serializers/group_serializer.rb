class GroupSerializer < ActiveModel::Serializer
  attributes :id, :name, :summary, :location, :image_url, :meeting_notes, :meeting_url
end
