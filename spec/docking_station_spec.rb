require 'docking_station'

describe DockingStation do
  it { is_expected.to respond_to :release_bike }

  it 'gets a bike when release_bike is called' do
      subject.dock(Bike.new)
    expect(subject.release_bike).to be_instance_of(Bike)
  end

  it 'expects the bike to be working' do
      subject.dock(Bike.new)
    expect(subject.release_bike.working?).to eq true
  end

  describe '#dock' do
    it 'raises an error - tells us the dock contains a bike' do
      20.times { subject.dock(Bike.new) }
      expect {subject.dock(Bike.new)}.to raise_error "Sorry dock full"
      end
   end

  describe'#release_bike' do
    it 'raises an error - tells us there are no bikes left' do
      expect {subject.release_bike}.to raise_error "Sorry no bikes!"
    end
  end


end
