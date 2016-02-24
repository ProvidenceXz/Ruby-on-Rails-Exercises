class DogsController < ApplicationController
  def index
    @dogs = Dog.all
  end
  
  def new
    @dog = Dog.new
  end
  
  def create
    @dog = Dog.new(dog_params)
    if @dog.save
      flash[:success] = "Dog was succesfully registered!"
      redirect_to @dog
    else
      flash[:warning] = "Please make sure all fields are filled! "
      render new
    end
  end
  
  def show
    @dog = Dog.find(params[:id])
  end
  
  
  private
  
  def dog_params
    params.require(:dog).permit(:name, :age)
  end
end