class Miembro < ActiveRecord::Base
	def self.search(search)
	  where("UCASE(ciudad) LIKE ?", "%#{search.upcase}%") 
 	end
 	do_not_validate_attachment_file_type :fotoTaller,:logo, :foto1, :foto2, :foto3, :foto4
	has_attached_file  :fotoTaller, :styles =>  { small: "64x64", med: "100x100", large: "200x200" }, :default_url => "public/images/default.png" 
	has_attached_file  :logo, :styles =>  { small: "64x64", med: "100x100", large: "200x200" }, :default_url => "public/images/default.png"
	has_attached_file  :foto1, :styles =>  { small: "64x64", med: "100x100", large: "200x200" }, :default_url => "public/images/default.png"
	has_attached_file  :foto2, :styles =>  { small: "64x64", med: "100x100", large: "200x200" }, :default_url => "public/images/default.png"
	has_attached_file  :foto3, :styles =>  { small: "64x64", med: "100x100", large: "200x200" }, :default_url => "public/images/default.png"
	has_attached_file  :foto4, :styles =>  { small: "64x64", med: "100x100", large: "200x200" }, :default_url => "public/images/default.png"
	
end
