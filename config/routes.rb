Rails.application.routes.draw do
  #mapea en controllers la carpeta api y le asigna, como tipo de archivo, JSON
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      # We are going to list our resources here
      end
  end
end
