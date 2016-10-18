curl --include --request GET http://localhost:3000/cart-show/5802acf09a814efd52b47a38 \
  --header "Authorization: Token token=HW7zKaeE9Z5JMjJHQhTJbLEUtbkkhGEfkv59FWnDFT4=--RKGPB0oCdUz2DB7CU6QaIv+ZFC0w4OxdLCKNwRWFk04="


curl --include --request GET http://localhost:3000/users/5802acf09a814efd52b47a38 \
  --header "Authorization: Token token=HW7zKaeE9Z5JMjJHQhTJbLEUtbkkhGEfkv59FWnDFT4=--RKGPB0oCdUz2DB7CU6QaIv+ZFC0w4OxdLCKNwRWFk04="



curl --include --request POST http://localhost:3000/users \
  --header "Content-Type: application/json" \
  --data '{
    "users": {
      "cart": {
        "products": []
      }
    }
  }'



  curl --include --request PATCH http://localhost:3000/cart-update/5802acf09a814efd52b47a38 \
    --header "Authorization: Token token=HW7zKaeE9Z5JMjJHQhTJbLEUtbkkhGEfkv59FWnDFT4=--RKGPB0oCdUz2DB7CU6QaIv+ZFC0w4OxdLCKNwRWFk04=" \
    --header "Content-Type: application/json" \
    --data '{
        "name": "Deer Sweater",
        "price": 39.99,
        "description": "It is a deer sweater for a turtle.",
        "size": "m",
        "image": "turtle.com/deersweater.jpg"
    }'



# response from GET to users

# {"user":{"_id":"580531ce9e0e2b1a21e4c50d","updatedAt":"2016-10-17T20:18:07.622Z",
# "createdAt":"2016-10-17T20:17:18.526Z","email":"kn@kn.email","__v":0,"cart":{"products":[]}}}
