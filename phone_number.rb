class PhoneNumber
  attr_reader :number

  def initialize(num)
    @number = clean(num)
  end

  private

  def clean(num)
    num.gsub(/\D/, '')
  end
end