Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace 'api' do
    namespace 'v1' do
      resources :keywords, :pages, :persons, :person_page_rank, :sites
      get :show_in_range, path: '/pages/show_in_range', only: [index]
    end
  end
end
