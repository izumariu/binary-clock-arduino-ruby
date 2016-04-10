class NameError < StandardError
  include DidYouMean::Correctable

  message = nil


  def local_variables
  end

  def name
  end

  def receiver
  end


  protected


  private

  def initialize(arg0, arg1, *rest)
  end

end
