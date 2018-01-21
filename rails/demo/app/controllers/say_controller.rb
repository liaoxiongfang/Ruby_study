class SayController < ApplicationController
  def hello
	@time = Time.now
	@files = Dir.glob('*')
  end

  def bye
  end
end
