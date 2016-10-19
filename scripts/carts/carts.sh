
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

    curl --include --request PATCH http://localhost:3000/clear-cart/58065d38e4dfd00d02777a9f \
      --header "Authorization: Token token=CIufJnRdKr0aUKepdLGvM7B3JUibeu44P3hjvg6nMAk=--uTqh7MuMcCCXfseRqs7/zgnbxbPiv+BSKnA2ODQR9G4=" \
      --header "Content-Type: application/json" \


    curl --include --request DELETE http://localhost:3000/sign-out/$ID \
      --header "Authorization: Token token=$TOKEN"
