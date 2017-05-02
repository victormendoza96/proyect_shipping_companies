# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Customer.create(identification_card: 22774596, name: "victor", lastname: "mendoza", location: "guatire", phone: 2123471606)
puts"creo customer victor"

Customer.create(identification_card: 22744554, name: "juan", lastname: "men", location: "paris", phone: 723471606)
puts"creo customer juan"

Customer.first.consolidators<<Consolidator.create(name: "nsns", location: "venezuela", phone: "3251")
puts"creo customer consolidator nsns y relaciono con victor"

Consolidator.first.customers<<Customer.last
puts"relaciono nsns con juan"

ShippingCompany.create(name: "navland", phone: 124578, location: "panama")
puts"creo shipping_company navland"

nav = ShippingCompany.first
Ship.create(name: "porlas", acronym: "lok23", size: "120m", capacity: 4512, shipping_company: nav )
puts"creo ship porlas y relaciono con navland"

OriginDestination.create(code_location: "VE", location: "venezuela")
puts"creo OriginDestination venezuela"

OriginDestination.create(code_location: "Br", location: "brasil")
puts"creo OriginDestination brasil"

con = Consolidator.first
BlMaster.create(code_bl: "mm34", shipping_company_id: nav.id, consolidator_id: con.id, list_container: "10lwkkw", origin_id: 1, destination_id: 2, dale_of_berthing: "04-05-2017", code_travel:"joj20")
puts"creo blmaster de navland consolidador:nsns origen venezuela destino brasil"

c = Customer.first
rb = BlMaster.first
BlHouse.create(customer: c, bl_master: rb)
puts"creo blhouses de victor"



