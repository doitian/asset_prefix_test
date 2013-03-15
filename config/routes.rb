SessionTest::Application.routes.draw do

  scope 'one/two' do
    # Using get requests to rule out CSRF as cause
    get '/save',  to: 'application#save'
    get '/clear', to: 'application#clear'

    root :to => 'application#index'
  end

  match '/' => redirect('/one/two')
end
