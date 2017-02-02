class MultiplyController < ApplicationController
  layout false

  def index

  end

  def show
    @num_until = params[:multiply][:num_until].to_i
    @num_times = params[:multiply][:num_times].to_i

    @tabl = multiplication_table(@num_until, @num_times)
  end

  def clash
    @initial_price = params[:initial_price].to_i
    @overhead = params[:overhead].to_i
    @nos_to_buy = params[:nos_to_buy].to_i


    @price = clash_calc(@initial_price, @overhead, @nos_to_buy)
  end



  private

    def multiplication_table(num, num_length)
      hash = Hash.new
      (1..num).each do |i|
        arr = []
        (1..num_length).each do |e|
          arr.push(i*e)
        end
        hash[i] = arr
      end
    return hash
    end

    def clash_calc(initial_price, overhead, nos_to_buy)
      final_price = nos_to_buy/2 * (2*initial_price + (nos_to_buy-1)*overhead)
    end


end
