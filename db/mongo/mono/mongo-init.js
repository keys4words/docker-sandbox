db.createUser(
  {
      user: "root",
      pwd: "example",
      roles: [
          {
              role: "readWrite",
              db: "main"
          }
      ]

  }
);
db = new Mongo().getDB("main");

db.createCollection('users', { capped: false });
db.createCollection('items', { capped: false });

db.items.insertMany([
    { name: "Mike", lastName: "Tyson", age: 56, reach: {"WBA": "gold belt", "WBC": "gold belt"} },
    { name: "Lennox", lastName: "Lewis", age: 57, reach: {"WBA": "gold belt", "WBC": "gold belt"} },
    { name: "James", lastName: "Bond", age: 56, licence: {"kill": "+", "drink": "+", "sex": "+"}  },
    { name: "Jimmy", lastName: "Morrison", age: 27, reach: "forever-young" },
    { name: "John", lastName: "Doe", age: null, reach: null}
]);