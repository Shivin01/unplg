class Podcast < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

         has_many :episod
     #    has_many :post
         
 has_attached_file :thumbnail, styles: { large: "1000x1000>", medium: "550x550>" }
  validates_attachment_content_type :thumbnail, content_type: /\Aimage\/.*\Z/

    has_attached_file :mp3
  validates_attachment_content_type :mp3, :content_type => /.*/
end
