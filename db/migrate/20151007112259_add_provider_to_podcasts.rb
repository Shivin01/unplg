class AddProviderToPodcasts < ActiveRecord::Migration
  def change
    add_column :podcasts, :provider, :string
  end
end
