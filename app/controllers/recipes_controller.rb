class RecipesController < ApplicationController
  def index
    @term = params[:search] || "chocolate"
    @recipes = Recipe.for @term
  end

  def recipe
    @rid = params[:getr]
    @recipe = Recipe.getr @rid
  end
end
