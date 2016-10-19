# Run from the api project root directory
# IMPORTANT, make sure your database has same name.

mongoimport --db=sweaters-for-turtles-api --collection=products --type=csv --headerline --file=data/products.csv

# First does not work, delete collection using db.products.drop() then use this code.
mongoimport -d sweaters-for-turtles-api -c products --type csv --file data/products.csv --headerline
