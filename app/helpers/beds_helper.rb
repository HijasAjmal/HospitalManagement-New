module BedsHelper
  def findBedOption(msg)
    @option = Option.find(msg)
    return @option.opt
  end
end
