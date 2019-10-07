{"filter":false,"title":"registration_controller.rb","tooltip":"/app/controllers/authentication/renters/registration_controller.rb","undoManager":{"mark":2,"position":2,"stack":[[{"start":{"row":0,"column":0},"end":{"row":61,"column":3},"action":"insert","lines":["# frozen_string_literal: true","","class Authentication::ItemOwners::RegistrationsController < Devise::RegistrationsController","  # before_action :configure_sign_up_params, only: [:create]","  # before_action :configure_account_update_params, only: [:update]","  before_action :configure_permitted_parameters, if: :devise_controller?","  # before_action :verify_account_ownership, only: :create","","  # GET /resource/sign_up","  # def new","  #   super","  # end","","  # POST /resource","  def create","    super","  end","","  # GET /resource/edit","  # def edit","  #   super","  # end","","  # PUT /resource","  # def update","  #   super","  # end","","  # DELETE /resource","  # def destroy","  #   super","  # end","","  # GET /resource/cancel","  # Forces the session data which is usually expired after sign","  # in to be expired now. This is useful if the user wants to","  # cancel oauth signing in/up in the middle of the process,","  # removing all OAuth session data.","  # def cancel","  #   super","  # end","","  # protected","","  def configure_permitted_parameters","    devise_parameter_sanitizer.permit(:sign_up, keys: [:email, :username, :password])","    devise_parameter_sanitizer.permit(:sign_in, keys: [:email, :password])","  end","  ","  def after_sign_up_path_for(resource)","    complete_item_owner_profile_path","  end","  ","  def after_sign_in_path_for(resource_or_scope)","    stored_location_for(resource_or_scope) || super","  end","","  # The path used after sign up for inactive accounts.","  # def after_inactive_sign_up_path_for(resource)","  #   super(resource)","  # end","end"],"id":1}],[{"start":{"row":2,"column":22},"end":{"row":2,"column":32},"action":"remove","lines":["ItemOwners"],"id":2},{"start":{"row":2,"column":22},"end":{"row":2,"column":23},"action":"insert","lines":["R"]},{"start":{"row":2,"column":23},"end":{"row":2,"column":24},"action":"insert","lines":["e"]},{"start":{"row":2,"column":24},"end":{"row":2,"column":25},"action":"insert","lines":["n"]},{"start":{"row":2,"column":25},"end":{"row":2,"column":26},"action":"insert","lines":["t"]},{"start":{"row":2,"column":26},"end":{"row":2,"column":27},"action":"insert","lines":["e"]},{"start":{"row":2,"column":27},"end":{"row":2,"column":28},"action":"insert","lines":["r"]},{"start":{"row":2,"column":28},"end":{"row":2,"column":29},"action":"insert","lines":["s"]}],[{"start":{"row":50,"column":4},"end":{"row":50,"column":36},"action":"remove","lines":["complete_item_owner_profile_path"],"id":3},{"start":{"row":50,"column":4},"end":{"row":50,"column":5},"action":"insert","lines":["r"]},{"start":{"row":50,"column":5},"end":{"row":50,"column":6},"action":"insert","lines":["o"]},{"start":{"row":50,"column":6},"end":{"row":50,"column":7},"action":"insert","lines":["o"]},{"start":{"row":50,"column":7},"end":{"row":50,"column":8},"action":"insert","lines":["t"]},{"start":{"row":50,"column":8},"end":{"row":50,"column":9},"action":"insert","lines":["_"]},{"start":{"row":50,"column":9},"end":{"row":50,"column":10},"action":"insert","lines":["p"]},{"start":{"row":50,"column":10},"end":{"row":50,"column":11},"action":"insert","lines":["a"]},{"start":{"row":50,"column":11},"end":{"row":50,"column":12},"action":"insert","lines":["t"]},{"start":{"row":50,"column":12},"end":{"row":50,"column":13},"action":"insert","lines":["h"]}]]},"ace":{"folds":[],"scrolltop":540,"scrollleft":0,"selection":{"start":{"row":50,"column":13},"end":{"row":50,"column":13},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":{"row":37,"state":"start","mode":"ace/mode/ruby"}},"timestamp":1570206164190,"hash":"9dffad2fc41b8cf8988c450fc7b1a2afdc57cde2"}