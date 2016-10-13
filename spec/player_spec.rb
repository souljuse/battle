require 'spec_helper'

describe Player do
	subject(:batman) {described_class.new('Batman')}

	describe '#name' do
		it 'should return the name of the player' do
			expect(batman.name).to eq 'Batman'
		end
	end

	describe '#is_attacked' do
		it 'should take HP of the attacked player' do
			expect{ batman.is_attacked }.to change {batman.hit_points}.by(-10)
		end

	end

end
