class PagesController < ApplicationController
  def index
    @events = Event.future
  end

  def discover
  end

  def about
  end
end
