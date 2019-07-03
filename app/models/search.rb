class Search < ApplicationRecord
	def search_posts
		posts = Post.all
		posts = posts.where(["title LIKE ?","%#{keywords}%"]) if keywords.present?

		return posts
	end

end
 