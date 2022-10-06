from pymongo import MongoClient
# from bson.objectid import ObjectId
import pprint


# client = MongoClient("mongodb://root:example@localhost:27017/?authSource=main")
with MongoClient("mongodb://root:example@mongo:27017/?authSource=main") as client:
    # print(client.list_database_names())
    db = client["main"]
    # print(db.list_collection_names())
    collectionItems = db["items"]    
    for item in collectionItems.find():
        pprint.pprint(item)

    result = collectionItems.find_one({ "name": "Mike"}, {"age": 1, "_id": 0})
    print("======", result)