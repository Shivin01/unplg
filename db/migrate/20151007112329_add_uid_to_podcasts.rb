class AddUidToPodcasts < ActiveRecord::Migration
  def change
    add_column :podcasts, :uid, :string
  end
end
