City.destroy_all
Restaurant.destroy_all

texas=City.create(name: "Austin", state: "TX")
arkansas=City.create(name: "Austin", state: "AR")
kentucky=City.create(name: "Austin", state: "KY")

Restaurant.create(name: "Whattaburger", city_id: texas.id )
Restaurant.create(name: "Seviche7", city_id: texas.id)
Restaurant.create(name: "McDonalds", city_id: arkansas.id)
Restaurant.create(name: "Zaxbys", city_id: arkansas.id)
Restaurant.create(name: "KFC", city_id: kentucky.id)
Restaurant.create(name: "Arbys", city_id: kentucky.id)