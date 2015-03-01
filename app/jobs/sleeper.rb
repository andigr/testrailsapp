class Sleeper
	@queue = :sleeper
	
	def self.perform(s)
		sleep(s)
		@micropost = Micropost.create
	end
end