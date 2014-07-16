class Phone
  def initialize(brand, model)
    @brand = brand
    @model = model
    @sold = false
  end


  def sale
    @sold = true
  end

end

#iphone_4 = Phone.new("Apple", "iphone4", "white", "32Go")

#Galaxy_S3 = Phone.new("Samsung", "S3", "silver", "16Go")

