class Laptop
  attr_reader :price, :brand

  def initialize(brand: '', price: 0)
    @brand = brand
    @price = price
  end

  def lucky?
    sevens_and_fours_only? && sevens_and_fours_equal?
  end

  def sevens_and_fours_only?
    price.digits.count(4) + price.digits.count(7) == price.digits.length
  end

  def sevens_and_fours_equal?
    price.digits.count(4) == price.digits.count(7)
  end

  def <=>(another)
    price <=> another.price
  end
end
