class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show, :index]

  def home
    @tasks = Task.accessible_by(current_ability)
  end
end
