  curl --include --request PATCH http://localhost:3000/cart-update/58066f67ec45921d8194a076 \
    --header "Authorization: Token token=at3zj+tAw5Xo/9RA9fpgkgEu9rQhtSOnPyozsQat2xU=--BO8wR55B6LcBDbv/kEor7NX5/cnB81+q/Ec8Vj+SpjQ=" \
    --header "Content-Type: application/json" \
    --data '{
        "name": "Bear Sweater",
        "price": 59.99,
        "description": "It is a bear sweater for a turtle.",
        "size": "m",
        "image": "turtle.com/bearsweater.jpg"
    }'
