Rails.application.routes.draw do

  get "/",                                  :controller => "calculations", :action => "instructions"
  get "/square_root/:number",               :controller => "calculations", :action => "sqrt"
  get "/payment/:rate/:months/:principal",  :controller => "calculations", :action => "pmt"

end
