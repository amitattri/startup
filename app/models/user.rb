class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable


  #has_attached_file :image, presence: false, styles: {small: '50x50!', size_250x250: '250x250!'}, default_url: 'http://d3tfanr7troppj.cloudfront.net/static_files/images/000/000/257/original/default_user_picture.png'
  #validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/ , :if => :image_attached?   
  
end