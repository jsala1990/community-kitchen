class Produce

  attr_accessor :name, :quantity, :unit

  def initialize args
    @name = args[:name]
    @quantity = args[:quantity]
    @unit = args[:unit]
  end
end
