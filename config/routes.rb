Rails.application.routes.draw do
  get("/square/new", { :controller => "pages", :action => "square_new"})
  get("/square/results", { :controller => "pages", :action => "square_result" })

  get("/square_root/new", { :controller => "pages", :action => "square_root_new"})
  get("/square_root/results", { :controller => "pages", :action => "square_root_result"})

  get("/payment/new", { :controller => "pages", :action => "payment_new"})
  get("/payment/results", { :controller => "pages", :action => "payment_result"})

  get("/random/new", { :controller => "pages", :action => "random_new"})
  get("/random/results", { :controller => "pages", :action => "random_result"})

  get("/", { :controller => "pages", :action => "homepage"})
end
