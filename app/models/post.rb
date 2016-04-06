class Post < ActiveRecord::Base
	has_many :comments, dependent: :destroy
	has_attached_file :image
	validates :title, presence: true,
		length: { minimum: 5 }
	validates :body, presence:true

	validates_attachment_content_type :image, :content_type => ["image/jpg", "image/jpeg", "image/png"]

end
