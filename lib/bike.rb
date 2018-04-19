class Bike

  attr_writer :broken

  def working?
    @broken == true ? false : true
  end

end
