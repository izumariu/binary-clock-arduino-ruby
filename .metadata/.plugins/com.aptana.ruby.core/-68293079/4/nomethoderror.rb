class NoMethodError < NameError
  include DidYouMean::Correctable



  def args
  end


  protected


  private

  def initialize(arg0, arg1, *rest)
  end

end
