import os


class Config:
    MONGODB_USERNAME = os.getenv('MONGODB_USERNAME')
    MONGODB_PASSWORD = os.getenv('MONGODB_PASSWORD')
    MONGODB_NAME = os.getenv('MONGODB_NAME')
    MONGODB_PORT = int(os.getenv('MONGODB_PORT', 27017))
    MONGODB_SETTINGS = {
        "host": f"mongodb://{MONGODB_USERNAME}:{MONGODB_PASSWORD}@mongodb:{MONGODB_PORT}/{MONGODB_NAME}?authSource=admin"
    }

    SECRET_KEY = os.getenv("SECRET_KEY")
    PROPAGATE_EXCEPTIONS = os.getenv("PROPAGATE_EXCEPTIONS")