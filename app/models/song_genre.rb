class SongGenre < ActiveRecord::Base
	include Slugifiable
	extend FindBySlug
	belongs_to :song
	belongs_to :genre

end