# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

## Measurabl API Endpoints:

### PORTFOLIOS:
##### -Get All Portfolios:

```
GET /api/v1/portfolios

[
  {
    "id": 1,
    "portfolio_name": "United States Fund",
    "company_name": "ACME Inc.",
    "company_size": 1000,
    "country": "United States",
    "created_at": "2022-10-28T20:28:20.707Z",
    "updated_at": "2022-10-28T20:28:20.707Z"
  },
  {
    "id": 2,
    "portfolio_name": "Canada Fund",
    "company_name": "Maple Leaf Holdings",
    "company_size": 500,
    "country": "Canada",
    "created_at": "2022-10-28T20:28:20.715Z",
    "updated_at": "2022-10-28T20:28:20.715Z"
  },
  {
    "id": 3,
    "portfolio_name": "Mexico Fund",
    "company_name": "Mexico Corp.",
    "company_size": 200,
    "country": "Mexico",
    "created_at": "2022-10-28T20:28:20.717Z",
    "updated_at": "2022-10-28T20:28:20.717Z"
  },
  {
    "id": 4,
    "portfolio_name": "Brazil Fund",
    "company_name": "Brazilian LLC",
    "company_size": 100,
    "country": "Brazil",
    "created_at": "2022-10-28T20:28:20.719Z",
  "updated_at": "2022-10-28T20:28:20.719Z"
  },
  {
    "id": 5,
    "portfolio_name": "Panama Fund",
    "company_name": "Panama Non-Profit",
    "company_size": 500,
    "country": "Panama",
    "created_at": "2022-10-28T20:28:20.720Z",
    "updated_at": "2022-10-28T20:28:20.720Z"
  }
]
```

##### -Get a Single Portfolio:
You will need to know and pass in the id of the portfolio you are looking to find into the URL for a successful response.

```
GET /api/v1/users/1

{
  "id": 1,
  "portfolio_name": "United States Fund",
  "company_name": "ACME Inc.",
  "company_size": 1000,
  "country": "United States",
  "created_at": "2022-10-28T20:28:20.707Z",
  "updated_at": "2022-10-28T20:28:20.707Z"
}
```



### SITES:
##### -Get a Single Site:
You will need to know and pass in the id of the site you are looking to find into the URL for a successful response.

```
GET /api/v1/sites/1

{
  "id": 1,
  "site_name": "Larimer Plaza",
  "site_address": "123 Main St. Denver, CO 80203",
  "building_type": "office building",
  "created_at": "2022-10-28T23:36:04.655Z",
  "updated_at": "2022-10-28T23:36:04.655Z",
  "portfolio_id": 1
}
```

##### Get All Sites for a Specific Portfolio:
You will need to know and pass in the id of the portfolio you are looking to find all the sites
into the URL for a successful response.

```
GET /api/v1/sites?portfolio_id=1

[
  {
    "id": 1,
    "site_name": "Larimer Plaza",
    "site_address": "123 Main St. Denver, CO 80203",
    "building_type": "office building",
    "created_at": "2022-10-28T23:36:04.655Z",
    "updated_at": "2022-10-28T23:36:04.655Z",
    "portfolio_id": 1
  },
  {
    "id": 2,
    "site_name": "Shops at Fashion Valley",
    "site_address": "7007 Friars Rd. San Diego, CA 92108",
    "building_type": "mall",
    "created_at": "2022-10-28T23:36:04.657Z",
    "updated_at": "2022-10-28T23:36:04.657Z",
    "portfolio_id": 1
  },
  {
    "id": 3,
    "site_name": "Mission Valley Outlets",
    "site_address": "2640 Camino Del Rio San Diego, CA 92108",
    "building_type": "outlet mall",
    "created_at": "2022-10-28T23:36:04.659Z",
    "updated_at": "2022-10-28T23:36:04.659Z",
    "portfolio_id": 1
  }
]
```



### SPACES:
##### -Get a Single Space:
You will need to know and pass in the id of the space you are looking to find into the URL for a successful response.

```
GET /api/v1/spaces/1

{
  "id": 1,
  "space_name": "Suite C",
  "property_type": "commercial",
  "space_size": 2000,
  "monthly_price": 100000,
  "created_at": "2022-10-29T02:42:25.358Z",
  "updated_at": "2022-10-29T02:42:25.358Z"
}
```

##### Get All Spaces for a Specific Site:
You will need to know and pass in the id of the site you are looking to find all the spaces into the URL for a successful response.

```
GET /api/v1/spaces?site_id=1

[
  {
    "id": 1,
    "space_name": "Suite A",
    "property_type": "commercial",
    "space_size": 4000,
    "monthly_price": 400000,
    "created_at": "2022-10-29T03:12:30.838Z",
    "updated_at": "2022-10-29T03:12:30.838Z",
    "site_id": 1
  },
  {
    "id": 2,
    "space_name": "Suite B",
    "property_type": "commercial",
    "space_size": 3000,
    "monthly_price": 200000,
    "created_at": "2022-10-29T03:12:30.841Z",
    "updated_at": "2022-10-29T03:12:30.841Z",
    "site_id": 1
  },
  {
    "id": 3,
    "space_name": "Suite C",
    "property_type": "commercial",
    "space_size": 2000,
    "monthly_price": 100000,
    "created_at": "2022-10-29T03:12:30.842Z",
    "updated_at": "2022-10-29T03:12:30.842Z",
    "site_id": 1
  }
]
```


### STATS:
##### Get All Spaces Average Square Footage & Total Square Footage for a Specific Site:
You will need to know and pass in the id of the site you are looking to find all the spaces square footage stats into the URL for a successful response.

```
GET /api/v1/stats?site_id=1

{
  "site_id": 1,
  "site_name": "Larimer Plaza",
  "total_square_footage": 9000,
  "average_suare_footage": 3000
}
```

##### Get All Spaces Average Square Footage & Total Square Footage for a Specific Portfolio:
You will need to know and pass in the id of the portfolio you are looking to find all the spaces square footage stats into the URL for a successful response.

```
GET /api/v1/stats?portfolio_id=1

{
  "portfolio_id": 1,
  "portfolio_name": "United States Fund",
  "sites": [
            "Larimer Plaza",
            "Shops at Fashion Valley",
            "Mission Valley Outlets"
            ],
  "total_square_footage": 9000,
  "average_suare_footage": 3000
}
```
