module CommentsHelper

  def optionStatus(data)
    @option = Option.find(data)
    return @option.opt
  end
end
