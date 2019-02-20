# Configure your routes here
# See: http://hanamirb.org/guides/routing/overview/
#
# Example:
# get '/hello', to: ->(env) { [200, {}, ['Hello from Hanami!']] }
#get '/', to: 'home#index'
root to: 'home#index'

get '/users/sign_in', to: 'users#sign_in'
