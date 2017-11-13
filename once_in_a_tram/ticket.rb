class Ticket
  attr_reader :ticket_number

  def initialize(ticket_number)
    @ticket_number = ticket_number
  end

  def lucky?(number = ticket_number)
    # note digits returns ones place first
    number.digits[0...3].sum == number.digits[3...6].sum
  end

  def next_lucky
    # brute force
    number = ticket_number + 1
    until lucky?(number) do
      number += 1
    end
    return number
  end
end
