class Account::SubprojectsController < ApplicationController
  before_action :authenticate_user!

  def index
    @subprojects = current_user.subprojects
  end
end
