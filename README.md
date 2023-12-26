# Justin Mauldin's Measurabl API
My Rails API successfully accomplishes the baseline requirements set forth in the take-home prompt/instructions, with none of the stretch requirements attempted due to time constraints.

## Built With

* [Ruby - Version 2.4.5](https://ruby-doc.org/core-2.4.5/)
* [Rails - Version 5.2.8.1](https://guides.rubyonrails.org/v5.2/)
* [RSpec](http://rspec.info/documentation/)
* [ShouldaMatchers](https://matchers.shoulda.io/)

## Getting Started

My Rails API will run (seed data included) via the desired steps in the take-home prompt/instructions.

1) Gets a copy of the repository  
2) Run "bundle exec rails db:setup" (seed data is included)  
3) Run "bundle exec rails server"  
4) Run "bundle exec rails routes" to see the available routes  
5) Use a client to hit the endpoints found in prior step

## Testing
My API was developed using TDD via Rspec & Shoulda Matchers & every API endpoint & model is fully tested & all tests are passing.

## Measurabl API Endpoints:
Below are the requested baseline requirements API endpoints with their routes & params need to access them as well as what to expect the data format to be from the response.  

The API endpoints are broken down into 4 sections:
-Portfolios  
-Sites  
-Spaces  
-Stats

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
GET /api/v1/portfolios/1

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


===================================================================
# Measurabl API Take-home Test Prompt:
Hi! Thanks for your interest in working at Measurabl. This take-home test will help assess your skills in building an API using Ruby on Rails and
provide a good starting point for discussion in a potential follow-up interview.


Some requirements are left intentionally open-ended. Make an implementation decision and go with it. If you feel there are trade-offs worth
noting, please write them in the README.md at the root of your repository.


Please spend between no fewer than 2 hours and no more than 8 hours on this take-home test; they do not need to be consecutive hours. There
is a baseline requirement and two stretch requirements. The stretch requirements are optional. If you take them on, feel free to implement or
make notes about a potential implementation.

## Delivering Solution
The solution should be delivered privately as a git repository (not publicly on GitHub). The repo can be zipped and emailed to your contact at
Measurabl. If it is too large, please provide a link using a file sharing service (i.e. Google Drive, Dropbox, etc.)


The solution should be manually testable if someone takes the following steps:

1) Gets a copy of the repository
2) Runs bundle exec rails db:setup (seed data should be included)
3) Runs bundle exec rails server
4) Runs bundle exec rails routes to see the available routes
5) Uses a client to hit the endpoints found in prior step
6) Any additional setup or notes should be included in the README.md

*Reminder: The repository should be delivered privately.*

## Background
The core customer for Measurabl is an owner or operator of commercial real estate. There are a few fundamental concepts that we have in our
system to serve these customers: Portfolios, Sites, and Spaces

## Portfolio
This is a collection of sites (aka buildings) that are owned by an entity. For example, ACME, Inc. may have a North American Fund that holds 250
buildings in the US and Canada. The concept of that holding is a Portfolio.

## Site
Often, sites are referred to as Buildings, but a site may technically contain more than one building. An example may be a mini-mall with the main
strip and two standalone stores. As such, we term each entity as a Site even if most of them are a single building.

## Space
A site is divided into Spaces, even if it is only 1 space for the site. An example of a site with multiple spaces is a mixed-use building, with the
following spaces:

- 2 Commercial Office Spaces
- 4 Residential Units
- 1 Common Area (e.g. foyer and stairs)

## Baseline Requirements
Create an API in Ruby on Rails that serves the following information:

**1) Portfolios:**
  - A list of portfolios in the system
  - Detailed information about a single portfolio

**2) Sites:**
- A list of sites for a given portfolio
- Detailed information about a single site

**3) Spaces:**
- A list of spaces for a given site
- Detailed information about a single space
- Statistics of square footage of spaces for a site (e.g. Total, Average)
- Statistics of square footage of spaces for a portfolio (e.g. Total, Average)

## Stretch Requirement
Add authentication to the API, so the endpoints cannot be hit without valid credentials.

## Super Stretch Requirement
Add authorization to the API, so credentials are linked to portfolios and the responses reflect that link/authorization.

Thanks! That's It! Thanks again for your interest. As a reminder, the two stretch requirements are optional. Review the Delivering Solution section for
instructions on sending your work to Measurabl.