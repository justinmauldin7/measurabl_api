# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

portfolio_1 = Portfolio.create(portfolio_name: "United States Fund", company_name: "ACME Inc.", company_size: 1000, country: "United States")
              Portfolio.create(portfolio_name: "Canada Fund", company_name: "Maple Leaf Holdings", company_size: 500, country: "Canada")
              Portfolio.create(portfolio_name: "Mexico Fund", company_name: "Mexico Corp.", company_size: 200, country: "Mexico")
              Portfolio.create(portfolio_name: "Brazil Fund", company_name: "Brazilian LLC", company_size: 100, country: "Brazil")
              Portfolio.create(portfolio_name: "Panama Fund", company_name: "Panama Non-Profit", company_size: 500, country: "Panama")

site_1 = Site.create(portfolio: portfolio_1, site_name: "Larimer Plaza", site_address: "123 Main St. Denver, CO 80203", building_type: "office building")
         Site.create(portfolio: portfolio_1, site_name: "Shops at Fashion Valley", site_address: "7007 Friars Rd. San Diego, CA 92108", building_type: "mall")
         Site.create(portfolio: portfolio_1, site_name: "Mission Valley Outlets", site_address: "2640 Camino Del Rio San Diego, CA 92108", building_type: "outlet mall")

Space.create(site: site_1, space_name: "Suite A", property_type: "commercial", space_size: 4000, monthly_price: 400000)
Space.create(site: site_1, space_name: "Suite B", property_type: "commercial", space_size: 3000, monthly_price: 200000)
Space.create(site: site_1, space_name: "Suite C", property_type: "commercial", space_size: 2000, monthly_price: 100000)
