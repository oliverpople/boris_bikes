require './lib/bike.rb'

class DockingStation
  attr_reader :bikes 

def initialize
  @bikes = []
end

  def release_bike
    fail "Sorry no bikes!" if @bikes.empty?
    @bikes.pop
  end

  def dock(bike)
    fail "Sorry dock full" if @bikes.count == 20
    @bikes << bike
  end

end
