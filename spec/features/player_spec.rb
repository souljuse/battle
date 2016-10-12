require 'spec_helper'

describe Player do
	subject(:batman) {described_class.new('Batman')}
	
	describe '#name' do
		it 'should return the name of the player' do
			expect(batman.name).to eq 'Batman'
		end
	end

end