mongosh --host <hostname> -u <mongouser> -p <mongopass> --authenticationDatabase <dbname>
use <dbname>
show dbs/collections
db.createCollection("items")
db.dropDatabase()

db.items.insertOne({ name : "Mike Tyson", age: 56, reach: {"WBA": "gold belt", "WBC": "gold belt"}})
db.items.insertMany([])

db.items.find().skip(1).sort({name: 1}).limit(2)
db.items.find({age: 56})
db.items.find( { name: { $in: ["James", "James"]}} )
db.items.find({ age: { $gte: 56} }, { name: 1})
db.items.find({ age: { $exists: false }})

db.items.updateOne({ age: 57}, {$set: {age: 44 } })