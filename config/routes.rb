Rails.application.routes.draw do

  get "busca_clima/atual"
  get "busca_clima/proximas_horas"
  get "busca_clima/proximos_dias"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
