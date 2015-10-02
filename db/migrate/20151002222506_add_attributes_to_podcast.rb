class AddAttributesToPodcast < ActiveRecord::Migration
  def change
    add_column :podcasts, :tittle, :string
    add_column :podcasts, :description, :text
    add_column :podcasts, :itunes, :string
    add_column :podcasts, :stitcher, :string
    add_column :podcasts, :podbay, :string
    add_column :podcasts, :tag, :string
  end
end
