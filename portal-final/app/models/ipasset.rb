class Ipasset < ActiveRecord::Base
	mount_uploader :attachment, AttachmentUploader # Tells rails to use this uploader for this model.
   validates :name, :attachment, presence: true
   has_many :owners
   has_many :users, through: :owners

end
