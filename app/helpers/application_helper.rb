module ApplicationHelper
	def category_count(name)
    ActsAsTaggableOn::Tag.find_by(name: name).taggings_count
	end
end
