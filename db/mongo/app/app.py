from pymongo import MongoClient
import pprint


# client = MongoClient("mongodb://root:example@mongo:27017")
with MongoClient("mongodb://root:example@localhost:27017/?authSource=main") as client:
    db = client.get_database("main")
    print(db.list_connection_names())
    # for item in db.main.find():
        # print(item)