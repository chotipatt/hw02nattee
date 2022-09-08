class MainController < ApplicationController

  def test
    @num = params[:amount].to_i
    # arr = Array.new()
    # if arr.length != 0
    #   @arrsub = params[:sub]
    #   @arrscore = params[:score]
  end

  def home

  end

  def check
    @subname = params[:subject][:name]
    @subscore = params[:subject][:score]
    @length = @subname.length.to_i

    for i in 0..@length do 
      if @subname[i] == "" || @subscore[i] == ""
        redirect_to :action => 'test' , amount: @length and return
      end
    end



    sum = 0
    max = 0
    idx = 0
    for i in 0..@length do
      if @subscore[i] == ""
        sum += 0
      else 
        sum += @subscore[i].to_i
      end

      if @subscore[i].to_i > max 
        max = @subscore[i].to_i
        idx = i
      end

    end

    @totalscore = sum
    @maxsub = @subname[idx]
    
    redirect_to :action => 'cal' , sum: @totalscore , mx: @subname[idx]
  end

  def cal
    @totalscore = params[:sum]
    @maxsub = params[:mx]

  end


end
