class Artist < ActiveRecord::Base

	has_attached_file :artist_img, styles: { artist_index: "250x250>", artist_show: "320x475>" }, default_url: "/images/:style/missing.png"
	validates_attachment_content_type :artist_img, content_type: /\Aimage\/.*\Z/

end