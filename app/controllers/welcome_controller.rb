class WelcomeController < ApplicationController
  include ApplicationHelper

  def index
    if params[:state].present?
      @parks = ParksFacade.parks(params[:state])
      @state = us_states.find { |state| state[1] == params[:state] }[0]
    end
  end
end
