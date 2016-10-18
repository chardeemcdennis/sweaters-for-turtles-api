

curl --include --request GET http://localhost:3000/users/580546958534a31e4787077d \
  --header "Authorization: Token token=qvy5ViITYATx7C+1UbPpHt0Mk7cgp6LYlFPn71J3azc=--L6hkAD+g+ro0MxAPF7CBD5MvwvuhdQHs88Fvlqj+D1g="



curl --include --request POST http://localhost:3000/users \
  --header "Content-Type: application/json" \
  --data '{
    "users": {
      "cart": {
        "products": [1234]
      }
    }
  }'



  curl --include --request PATCH http://localhost:3000/cart-update/580546958534a31e4787077d \
    --header "Authorization: Token token=qvy5ViITYATx7C+1UbPpHt0Mk7cgp6LYlFPn71J3azc=--L6hkAD+g+ro0MxAPF7CBD5MvwvuhdQHs88Fvlqj+D1g=" \
    --header "Content-Type: application/json" \
    --data '{
        "product": "test_id"
    }'

# curl to show cart
    curl --include --request GET http://localhost:3000/carts-show/580640585b190618712854b9 \
      --header "Authorization: Token token=Zd739kOgqsS0oyXxv4EDMmHDCV+4uE9tJ+tKh6DY8Mg=--xbeuwQgjpizRQePI6Dv6cmAcRCBCexJxJ1VWWBV5ZB0="

      curl --include --request GET http://localhost:3000/carts-show/580646218f68261c5b52f4eb \
        --header "Authorization: Token token=o4S5lCWDOnto92zKnqi9aEBNPG01fcieUkGVejvaSE8=--FnXNzb+BPI0iPNzPO7sMq9rdk3JRbbi7FYtHfdfwRPU="


# response from GET to users

# {"user":{"_id":"580531ce9e0e2b1a21e4c50d","updatedAt":"2016-10-17T20:18:07.622Z",
# "createdAt":"2016-10-17T20:17:18.526Z","email":"kn@kn.email","__v":0,"cart":{"products":[]}}}
