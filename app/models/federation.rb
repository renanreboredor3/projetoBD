class Federation < ActiveRecord::Base
	has_attached_file :flag
	has_many :competitors, dependent: :destroy
	validates_attachment_content_type :flag, content_type: /\Aimage\/.*\Z/
end
