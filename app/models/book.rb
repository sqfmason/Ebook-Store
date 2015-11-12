class Book < ActiveRecord::Base

	belongs_to :user
	has_attached_file :image
	has_attached_file :resource
	
	validates_attachment_content_type :image, 
	content_type:  /^image\/(png|jpeg|gif)/,
	message: "only images allowed"

	validates_attachment_content_type :resource,
	content_type: ['application/pdf'],
	message: "only pdfs allowed"

	validates :image, attachment_presence: true 
	validates :resource, attachment_presence: true 
    

end
