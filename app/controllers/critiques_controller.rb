class CritiquesController < ApplicationController
  def index
    
  end

  def new
    @critique = Critique.new
  end

  def show
    @critique = Critique.find(params[:id])
  end

  def create
    @critique = Critique.new(critique_params)

    if @critique.save
      redirect_to @critique
    else
      render 'new'
    end
  end

private
  def critique_params
    params.require(:critique).permit(:body)
  end
end
