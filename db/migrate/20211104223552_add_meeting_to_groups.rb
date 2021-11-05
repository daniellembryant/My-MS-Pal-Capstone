class AddMeetingToGroups < ActiveRecord::Migration[6.1]
  def change
    add_column :groups, :meeting_notes, :text
    add_column :groups, :meeting_url, :string
  end
end
