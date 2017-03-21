class Timer
  attr_accessor :seconds

  def initialize
  	@seconds = 0
  end

  def time_string
  		hours = (@seconds/3600)
  		if hours < 10
  			hours = "0#{hours}"
  		end
  		minutes = (@seconds%3600)/60
  		if minutes < 10
  			minutes = "0#{minutes}"
  		end
  		seconds = (@seconds % 3600)%60
  		if seconds < 10
  			seconds = "0#{seconds}"
  		end
  		"#{hours}:#{minutes}:#{seconds}"
  end
end
