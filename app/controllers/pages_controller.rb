class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home
  def home
  end

  def style
    # associated to the views/pages/style.html.erb
  end
end
