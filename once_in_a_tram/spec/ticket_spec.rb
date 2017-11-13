require 'spec_helper'

describe Ticket do
  describe 'lucky?' do
    context 'when ticket number is lucky' do
      it 'returns true' do
        ticket = Ticket.new(165912)

        expect(ticket.lucky?).to be true
      end
    end

    context 'when ticket number is non-lucky' do
      it 'returns false' do
        ticket = Ticket.new(165901)

        expect(ticket.lucky?).to be false
      end
    end
  end

  describe 'next_lucky' do
    context 'when current ticket number is lucky' do
      it 'returns the next number' do
        ticket = Ticket.new(165912)

        expect(ticket.next_lucky).to eq 165921
      end
    end

    context 'when current ticket number is non-lucky' do
      it 'returns the next lucky ticket number' do
        ticket = Ticket.new(165901)

        expect(ticket.next_lucky).to eq 165903
      end
    end
  end
end
