require 'docking_station'

describe DockingStation do
  it { is_expected.to respond_to :release_bike }

  it 'gets a bike when release_bike is called' do
    expect(subject.release_bike).to be_instance_of(Bike)
  end

  it 'expects the bike to be working' do
    expect(subject.release_bike.working?).to eq true
  end

  it 'docks a bike' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.dock(bike)).to eq bike
 end

  describe'#release_bike' do
    it 'raises an error - tells us there are no bikes left' do
      expect {subject.release_bike}.to raise_error "Sorry no bikes!"
    end
  end

end
