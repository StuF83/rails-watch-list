class ListsController < ApplicationController

  def index
    @lists = List.all
  end

  def new
    @list = List.new
  end

  def create
    list = List.new(params[:name])
    list.save
  end
end
