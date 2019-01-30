require 'pry'

class Shoe
  attr_accessor :color, :size, :material, :condition # set & get
  attr_reader :brand # just set

  BRANDS = []

  def initialize(brand)
    @brand = brand
    if BRANDS.include?(brand)
    else
      BRANDS << brand
    end
  end

  def cobble
    self.condition = "new"
    puts "Your shoe is as good as new!"
  end
end
