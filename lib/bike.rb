class Bike

  attr_writer :broken

  def working?
    !@broken
  end

end
