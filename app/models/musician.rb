class Musician < ActiveRecord::Base

	has_attached_file :musician_img, styles: { musician_index: "200x200>", musician_show: "320x475>" }, default_url: "/images/:style/missing.png"
	validates_attachment_content_type :musician_img, content_type: /\Aimage\/.*\Z/

	def self.search(search)
		where("name LIKE ?", "%#{search}%")
		#where("city LIKE ?", "%#{search}%")
	end
end
