class PagesController < ApplicationController
  def about
  end

  def contact
    @staff_members = ["Ana", "Chloe", "George", "Margo", "Olivier", "Federico", "Freddy"]
    @location = "Brussels"
    if params[:member]
      @staff_members = @staff_members.select { |member| member.start_with?(params[:member]) }
    end
  end

  def home
  end
end
