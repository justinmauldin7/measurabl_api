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

## Dog Days API Endpoints:

##### Get All Portfolios:

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
