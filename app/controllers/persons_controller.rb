class PersonsController < ApplicationController
    

  def profile
    @profile = current_user
  end

end
