module Slugifiable

	def slug
		self.name.downcase.gsub(" ", "-")
	end

end

module FindBySlug

	def find_by_slug(slug_name)
		name = slug_name.gsub("-", " ")
		self.all.detect{ |obj| obj.name.downcase == name.downcase }
	end

end