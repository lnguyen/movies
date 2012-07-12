class Movie < ActiveRecord::Base
	
	validates :description, :title, :presence => true
	
	has_many :actors
	
	scope :recent_releases, -> {
		where('release = ?', 2.days.ago..Time.now)
	}

end
