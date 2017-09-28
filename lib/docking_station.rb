require './lib/bike.rb'

class DockingStation
  attr_reader :bike  # makes method public to the class

  def release_bike
    fail "Sorry no bikes!" unless @bike
    @bike
  end

  def dock(bike)
    fail "Sorry dock full" if @bike
    @bike = bike
  end

end
