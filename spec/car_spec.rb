require 'spec_helper'

RSpec.describe Car do
	# instantiate a new car (named "car", but assigned to a symbol :car here)
	# from the Car class
	let(:car) { Car.new }

	# tests when car is first instantiated from Car class
	describe "when first created" do
		# does the instance have an attribute called speed?
		it { is_expected.to respond_to :speed }

		# speed is set to 0 when car is first instantiated
		it 'sets the start speed to 0' do
			expect(car.speed).to eq 0
		end
		
		# can we set the speed to a new number?
		it 'can set the speed' do
			expect {
				# set the car's speed to 100
				car.speed = 100
			# expect it not to throw an error
			}.not_to raise_exception

			# expect the car's speed to equal 100
			expect(car.speed).to eq 100
		end
	end 

	# method tests
	describe 'Methods' do
		# test instance method called accelerate
		describe '#accelerate' do
			# it can accelerate the car from its current speed (0) to 30
			it 'accelerates speed to 30' do
				expect(car.accelerate(30)).to eq 30
			end	
		end
		# test instance method called decelerate
		describe '#decelerate' do
			# set car speed to 30
			before { car.speed = 30 }
			# it can decelerate the car from its current speed (30) to 0
			it 'decelerates speed to 0' do
				expect(car.decelerate(30)).to eq 0
			end	
		end
	end

end