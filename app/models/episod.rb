class Episod < ActiveRecord::Base
  belongs_to :podcast, :foreign_key => 'podcast_id'
end
