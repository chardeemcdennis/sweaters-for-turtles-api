curl --include --request POST http://localhost:3000/orders \
  --header "Authorization: Token token=eG3RJMJt/vFMDIs9GqZiv4umcvUBALXhmnKnhRpC6iE=--Sf3CzV9NQ5zbfoxpnp7cBQ1wnKwG4fmQ+HDXeE4Yt74=" \
  --header "Content-Type: application/json" \
  --data '{
            "_id" : "5802acf09a814efd52b47a38",
            "passwordDigest" : "$2a$10$OxFvHZj0o.Pj/6sH88WQm.P1/KyKBKYzboU0/R8A0dLg0HYiQ050i",
            "updatedAt" : "2016-10-18T13:56:51.629Z",
            "createdAt" : "2016-10-15T22:25:52.585Z",
            "email" : "another@example.email",
            "token" : "pIyFEvmYpqskP0FUSw3MIA==",
            "__v" : 3,
            "cart" : {
              "products" : [
                {
                  "name" : "Brown Bat Sweater",
                  "price" : 39.99,
                  "description" : "It is a brown bat sweater for a turtle.",
                  "size" : "m",
                  "image" : "https://s3.amazonaws.com/turtle-sweaters/brown_bat.jpg?X-Amz-Date=20161018T135129Z&X-Amz-Expires=300&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Signature=74bd1bdcf7b2ff109d5508b8feecf8e2c9ad72d11c9e9ae81171f8f1eb3d18d5&X-Amz-Credential=ASIAI3YAEIHJM72VXRPA/20161018/us-east-1/s3/aws4_request&X-Amz-SignedHeaders=Host&x-amz-security-token=FQoDYXdzEBcaDPxvPoQvGqM62fzDiiL6AUPGGbwZTsLJKNduJYibDyV1lIQgTRAq2cpYVzLQf3bpD4FSHqhrzsrTlbIzAM1V/3gIvh8kg4yPBiEn3jSQnlaQ9OqytplF0nlWxuJ7ncGlItg55D0OJZk4w5IqClyxFFp/bJBsdjeME6HI5gcNyZBaOwMqhyQmCjxjcN1u4m9zr5pLa581DApj6mJTHcIVgl4b%2B9aetoOieNc/cxNJTtb4bMz/UoICfhRtqHo1Xi23KfLqsAUu%2B2I0Z6RYj7a8HBYTmSD3VU5t3Pa03jHrFvFteiq1ZpbFg0h%2Bt9/i1akPjmnWJRL1r3f0hV5m76nkKzeZL13fV/MwE1UondGYwAU%3D"
                },
                {
                  "name" : "Turkey TESTTEST",
                  "price" : 49.99,
                  "description" : "It is a cupcake sweater for a turtle.",
                  "size" : "m",
                  "image" : "https://s3.amazonaws.com/turtle-sweaters/brown_bat.jpg?X-Amz-Date=20161018T135129Z&X-Amz-Expires=300&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Signature=74bd1bdcf7b2ff109d5508b8feecf8e2c9ad72d11c9e9ae81171f8f1eb3d18d5&X-Amz-Credential=ASIAI3YAEIHJM72VXRPA/20161018/us-east-1/s3/aws4_request&X-Amz-SignedHeaders=Host&x-amz-security-token=FQoDYXdzEBcaDPxvPoQvGqM62fzDiiL6AUPGGbwZTsLJKNduJYibDyV1lIQgTRAq2cpYVzLQf3bpD4FSHqhrzsrTlbIzAM1V/3gIvh8kg4yPBiEn3jSQnlaQ9OqytplF0nlWxuJ7ncGlItg55D0OJZk4w5IqClyxFFp/bJBsdjeME6HI5gcNyZBaOwMqhyQmCjxjcN1u4m9zr5pLa581DApj6mJTHcIVgl4b%2B9aetoOieNc/cxNJTtb4bMz/UoICfhRtqHo1Xi23KfLqsAUu%2B2I0Z6RYj7a8HBYTmSD3VU5t3Pa03jHrFvFteiq1ZpbFg0h%2Bt9/i1akPjmnWJRL1r3f0hV5m76nkKzeZL13fV/MwE1UondGYwAU%3D"
                }
              ],
              "total_amount" : 89.98
            }

}'
