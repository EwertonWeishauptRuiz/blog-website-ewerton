class Post < ApplicationRecord
	extend FriendlyId
  	friendly_id :title, use: :slugged

    # Delete the optional after an Author is created
    belongs_to :author, optional: true

  	# Take the itens we want and give it in a descending order
  	scope :most_recent, -> { order(id: :desc)}

  	# part of the friendly_id code base
  	def should_generate_new_friendly_id?
  		# part of the rails code base
  		title_changed?
  	end

  	def display_published_date
  		#string from time
      "Published #{created_at.strftime('%-b %-d, %Y')}"
  	end
end
