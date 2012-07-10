class Movie < ActiveRecord::Base
	
	has_many :actors
	
	scope :recent_releases, -> {
		where('release = ?', 2.days.ago..Time.now)
	}

end
