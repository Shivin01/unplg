class AddOauthTokenToPodcasts < ActiveRecord::Migration
  def change
    add_column :podcasts, :oauth_token, :string
  end
end
