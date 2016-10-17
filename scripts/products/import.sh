# Run from the api project root directory
# IMPORTANT, make sure your database has same name.

mongoimport --db=sweaters-for-turtles-api --collection=products --type=csv --headerline --file=data/products.csv
