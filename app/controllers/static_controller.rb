class StaticController < ApplicationController
  def homepage
    @list_class = ""
    render :layout => false
  end

  def open_source
    @title = _("open source")
  end

  def about
    @title = _("about us")
  end

  def contact
    @title = _("contact us")
  end
end
