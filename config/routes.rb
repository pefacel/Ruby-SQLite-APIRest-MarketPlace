Rails.application.routes.draw do
  #mapea en controllers la carpeta api y le asigna, como tipo de archivo, JSON
  namespace :api, defaults: { format: :json } do

  end
end
