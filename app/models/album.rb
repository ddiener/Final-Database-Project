class Album < ActiveRecord::Base

	has_attached_file :album_img, styles: { album_index: "250x250>", album_show: "320x475>" }, default_url: "/images/:style/missing.png"
	validates_attachment_content_type :album_img, content_type: /\Aimage\/.*\Z/

end