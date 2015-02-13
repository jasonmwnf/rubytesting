class PhoneNumber
  attr_reader :number

  def initialize(num)
    @number = clean(num)
  end
end