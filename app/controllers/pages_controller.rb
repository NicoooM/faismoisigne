class PagesController < ApplicationController
  def index
    @events = Event.future
  end

  def discover
  end

  def about
  end

  def onlineevent
  end

  def chasseauxoeufs
  end

  def supports
  end
end
