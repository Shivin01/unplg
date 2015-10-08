class AddOauthExpiresAtToPodcasts < ActiveRecord::Migration
  def change
    add_column :podcasts, :oauth_expires_at, :datetime
  end
end
