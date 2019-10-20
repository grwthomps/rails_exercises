class DogsController < ApplicationController
  def index
    @dogs = Dog.all
  end

  def show
    @dog = Dog.find(params[:id])
  end

  def create
    Dog.create!(dog_params)
    redirect_to '/dogs'
  end

  def edit
    @dog = Dog.find(params[:id])
  end

  def update
    dog = Dog.find(params[:id])
    dog.update(dog_params)
    redirect_to '/dogs'
  end

  def destroy
    Dog.destroy(params[:id])
    redirect_to '/dogs'
  end

  private
  def dog_params
    params.permit(:name, :age, :breed)
  end
end
