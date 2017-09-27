require 'docking_station'

describe DockingStation do
  it { is_expected.to respond_to :release_bike }

  it 'gets a bike when release_bike is called' do
    expect(subject.release_bike).to be_instance_of(Bike)
  end

  it 'expects the bike to be working' do
    expect(subject.release_bike.working?).to eq true
  end
end
