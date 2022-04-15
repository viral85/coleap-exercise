```sh
rails s
```

Desire result url
Create an (REST or GraphQL) API endpoint to retrieve all the records with the given structure
```sh
GET localhost:3000/api/v1/vehicles
```

The endpoint should allow to sort based on price
```sh
GET localhost:3000/api/v1/vehicles?sort=ASC
GET localhost:3000/api/v1/vehicles?sort=DESC
```

The endpoint should allow to search by make

```sh
GET localhost:3000/api/v1/vehicles?make=audi
GET localhost:3000/api/v1/vehicles?nake=tesla
GET localhost:3000/api/v1/vehicles?make=tesla&sort=ASC
GET localhost:3000/api/v1/vehicles?make=tesla&sort=DESC
```