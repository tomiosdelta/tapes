module MultiplyHelper
  def diff_from_average(duration)
    return duration - Tape.average(:duration)
  end
end
