class AnimalsController < ApplicationController
  before_action :set_animal, only: %i[ show edit update destroy ]

  def index
    @animals = Animal.all
  end

  def show
  end

  def new
    @animal = Animal.new
  end

  def edit
  end

  def create
    @animal = Animal.new(animal_params)

    if @animal.save
      redirect_to @animal, notice: "#{@animal.name} was successfully added to the shelter."
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @animal.update(animal_params)
      redirect_to @animal, notice: "#{@animal.name}'s information was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    name = @animal.name
    @animal.destroy!
    redirect_to animals_path, notice: "#{name} was removed from the system."
  end

  private
    def set_animal
      @animal = Animal.find(params[:id])
    end

    def animal_params
      params.require(:animal).permit(:name, :species, :breed, :age, :intake_date, :adopted, :notes)
    end
end