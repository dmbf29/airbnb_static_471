Rails.application.routes.draw do
  # verb '/path', to: 'controller#action', as: :prefix
  root to: 'flats#index'
  get 'flats/:id', to: 'flats#show', as: :flat
end

# localhost:3000/flats/145
# { id: '145' }

# localhost:3000/flats/567
# { id: '567' }
# Flat.find(params[:id])


# CRUD

# Create

# Read
#-> all > index
#-> one > show
