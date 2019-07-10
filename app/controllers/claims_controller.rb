class ClaimsController < ApplicationController

  def create
    @claim = Claim.new
    @claim.title = params[:claim][:title]
    @claim.content = params[:claim][:content]
    @claim.enterprise = Enterprise.find(params[:enterprise_id])
    @claim.user = current_user
    @claim.save
  end
end
