class HomeController < ApplicationController

	def index
		Resque.enqueue(Sleeper, 4)
		@a = Micropost.all
	end
end
