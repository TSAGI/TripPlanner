# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
MealPreference.destroy_all
Trip.destroy_all
Destination.destroy_all
Lodging.destroy_all
Eatery.destroy_all
Lodging.destroy_all

user_1 = User.create(
    first_name: "William",
    last_name: "Wallace",
    username: "hammer",
    city: "Halifax",
    province: "Nova Scotia",
    country: "Canada",
    email: "bill@gmail.com",
    password: "123456"
)
meal_preference_1 = MealPreference.create(
    gluten_free: false,
    vegetarian: false,
    vegan: false,
    dairy_free: false,
    low_sodium: false,
    kosher: false,
    halal: false,
    user_id: user_1.id
)

trip_1 = Trip.create(name: "fishing trip", user_id: user_1.id)
destination_1 = Destination.create(
    leaving_from: "Halifax", arriving_to: "Wolfville", start_date: "2020/10/20", end_date: "2020/10/27", trip_id: trip_1.id
)
lodging_1 = Lodging.create(name: "Blomidon Inn", destination_id: destination_1.id)
eatery_1 = Eatery.create(name: "Juniper Food and Wine", destination_id: destination_1.id)
eatery_2 = Eatery.create(name: "Troy Restaurant", destination_id: destination_1.id)
attraction_1 = Attraction.create(name: "Harriet Irving Botanical Gardens", date: "2020/10/22", destination_id: destination_1.id)
attraction_2 = Attraction.create(name: "Lightfood and Wolfville Vineyards", date: "2020/10/24", destination_id: destination_1.id)

destination_2 = Destination.create(
    leaving_from: "Wolfville", arriving_to: "Digby", start_date: "2020/10/27", end_date: "2020/11/3", trip_id: trip_1.id
)
lodging_2 = Lodging.create(name: "Bayside Inn", destination_id: destination_2.id)
eatery_3 = Eatery.create(name: "The Crow's Nest", destination_id: destination_2.id)
eatery_4 = Eatery.create(name: "Shoreline Restaurant", destination_id: destination_2.id)
attraction_3 = Attraction.create(name: "Sandy Cove Beach", date: "2020/10/29", destination_id: destination_2.id)
attraction_4 = Attraction.create(name: "Prim Point Lighthouse", date: "2020/11/1", destination_id: destination_2.id)


trip_2 = Trip.create(name: "hunting trip", user_id: user_1.id)
destination_3 = Destination.create(
    leaving_from: "Halifax", arriving_to: "Waverly", start_date: "2020/10/20", end_date: "2020/10/27", trip_id: trip_2.id
)
lodging_3 = Lodging.create(name: "Waverly Inn", destination_id: destination_3.id)
eatery_5 = Eatery.create(name: "The Turtleback Tap and Grill", destination_id: destination_3.id)
eatery_6 = Eatery.create(name: "Grande Finales Cafe", destination_id: destination_3.id)
attraction_5 = Attraction.create(name: "Halifax Citadel", date: "2020/10/22", destination_id: destination_3.id)
attraction_6 = Attraction.create(name: "Shubie Park", date: "2020/10/24", destination_id: destination_3.id)

destination_4 = Destination.create(
    leaving_from: "Waverly", arriving_to: "Shubenacadie", start_date: "2020/10/27", end_date: "2020/11/3", trip_id: trip_2.id
)
lodging_4 = Lodging.create(name: "Snowflake Manor Bed and Breakfast", destination_id: destination_4.id)
eatery_7 = Eatery.create(name: "Rob Bitar's Ristorante", destination_id: destination_4.id)
eatery_8 = Eatery.create(name: "The Cup of Soul Cafe", destination_id: destination_4.id)
attraction_7 = Attraction.create(name: "Shubenacadie Wildlife Park", date: "2020/10/29", destination_id: destination_4.id)
attraction_8 = Attraction.create(name: "Tidal Bore Rafting Park", date: "2020/11/1", destination_id: destination_4.id)


user_2 = User.create(
    first_name: "John",
    last_name: "Travolta",
    username: "joey",
    city: "Toronto",
    province: "Ontario",
    country: "Canada",
    email: "john@gmail.com",
    password: "123456"
)
meal_preference_2 = MealPreference.create(
    gluten_free: true,
    vegetarian: true,
    vegan: false,
    dairy_free: false,
    low_sodium: true,
    kosher: false,
    halal: false,
    user_id: user_2.id
)

trip_3 = Trip.create(name: "sailing trip", user_id: user_2.id)
destination_5 = Destination.create(
    leaving_from: "Toronto", arriving_to: "Vancouver", start_date: "2020/12/15", end_date: "2020/12/22", trip_id: trip_3.id
)
lodging_5 = Lodging.create(name: "Fairmont Hotel", destination_id: destination_5.id)
eatery_9 = Eatery.create(name: "Heirloom Vegetarian Restaurant", destination_id: destination_5.id)
eatery_10 = Eatery.create(name: "The Acorn Restaurant", destination_id: destination_5.id)
attraction_9 = Attraction.create(name: "Stanley Park", date: "2020/12/17", destination_id: destination_5.id)
attraction_10 = Attraction.create(name: "Granville Island", date: "2020/12/20", destination_id: destination_5.id)

destination_6 = Destination.create(
    leaving_from: "Vancouver", arriving_to: "Victoria", start_date: "2020/12/22", end_date: "2020/12/29", trip_id: trip_3.id
)
lodging_6 = Lodging.create(name: "Hotel Fairmont Empress", destination_id: destination_6.id)
eatery_11 = Eatery.create(name: "Rosalinda Restaurant", destination_id: destination_6.id)
eatery_12 = Eatery.create(name: "Saveur Restaurant", destination_id: destination_6.id)
attraction_11 = Attraction.create(name: "Inner Harbour", date: "2020/12/24", destination_id: destination_6.id)
attraction_12 = Attraction.create(name: "Victoria and Butchart Gardens", date: "2020/1/27", destination_id: destination_6.id)

trip_4 = Trip.create(name: "hiking trip", user_id: user_2.id)
destination_7 = Destination.create(
    leaving_from: "Toronto", arriving_to: "Calgary", start_date: "2020/12/15", end_date: "2020/12/22", trip_id: trip_4.id
)
lodging_7 = Lodging.create(name: "Hotel Fairmont Palliser", destination_id: destination_7.id)
eatery_13 = Eatery.create(name: "The Dandelion", destination_id: destination_7.id)
eatery_14 = Eatery.create(name: "Flores and Pine", destination_id: destination_7.id)
attraction_13 = Attraction.create(name: "Fish Creek Provincial Park", date: "2020/12/17", destination_id: destination_7.id)
attraction_14 = Attraction.create(name: "Prince's Island Park", date: "2020/12/20", destination_id: destination_7.id)

destination_8 = Destination.create(
    leaving_from: "Calgary", arriving_to: "Banff", start_date: "2020/12/22", end_date: "2020/12/29", trip_id: trip_4.id
)
lodging_8 = Lodging.create(name: "Fairmont Banff Springs", destination_id: destination_8.id)
eatery_15 = Eatery.create(name: "Nourish Bistro Banff", destination_id: destination_8.id)
eatery_16 = Eatery.create(name: "Eden", destination_id: destination_8.id)
attraction_15 = Attraction.create(name: "Tunnel Mountain Trail", date: "2020/12/24", destination_id: destination_8.id)
attraction_16 = Attraction.create(name: "Sunshine Meadows", date: "2020/12/ 27", destination_id: destination_8.id)

