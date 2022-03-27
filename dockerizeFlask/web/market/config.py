import os


DEV_DB = 'sqlite:///market.db'

pg_user = os.environ.get("POSTGRES_USER")
pg_pass = os.environ.get("POSTGRES_PASS")
pg_db = os.environ.get("POSTGRES_DB")
pg_host = 'db'
pg_port = 5433

PROD_DB = f'postgresql://{pg_user}:{pg_pass}@{pg_host}:{pg_port}/{pg_db}'