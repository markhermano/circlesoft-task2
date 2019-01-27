Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace 'api' do
    namespace 'v1' do
      get '/extaxsales/:year', to: 'transactions#extax'
      get '/grossprofit/:year', to: 'transactions#grossprofit'
    end
  end
end
