class Episod < ActiveRecord::Base
	#has_many :posts
  belongs_to :podcast, :foreign_key => 'podcast_id'

  has_attached_file :episod_thumbnail, :styles => { :large => "1000x1000#", :medium => "550x550#" }
  validates_attachment_content_type :episod_thumbnail, :content_type => /\Aimage\/.*\Z/
  :default_url => "/images/:style/missing.png"

  has_attached_file :mp3
  validates_attachment_content_type :mp3, :content_type => /.*/
end
