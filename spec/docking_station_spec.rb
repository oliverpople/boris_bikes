require 'docking_station'

describe DockingStation do
  it { is_expected.to respond_to :release_bike }

  it 'gets a bike when release_bike is called' do
    expect(subject.release_bike).to be_instance_of(Bike)
  end

  it 'expects the bike to be working' do
    expect(subject.release_bike.working?).to eq true
  end

  it { is_expected.to respond_to(:dock).with(1).argument }

   it { is_expected.to respond_to(:bike) }

  it 'docks a bike' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.dock(bike)).to eq bike
 end
 #
 #  it 'bike has been docked' do
 #    expect()
 #  end
 #  #

end
