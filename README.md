# Movies Recommendation System
## Introduction
This application is being developed to showcase my skills as a fullstack developer. The stack consists of the following:
- a PostgreSQL database that runs inside a Docker container
- an API built with Python's [FastAPI](https://fastapi.tiangolo.com/) library
- a frontend built with HTML, CSS, and Javascript/Typescript (perhaps a framework will be used)   

The algorithm used for movie recommendations does not include any machine learning. The algorithm simply uses the likes/dislikes of users, or user ratings.

## Database
The database has been populated with data from CSV files. The original datasets can be downloaded from Kaggle (the respective links are provided below) and can be found in the [datasets](datasets/) directory of this repository. Here are the tables:   

- The [oscar_winning_films](datasets/oscar_winning_films_1927_to_2022.csv) table contains data of Oscar winning films between the years of 1927 to 2022. It was originally downloaded from [Kaggle](https://www.kaggle.com/datasets/pushpakhinglaspure/oscar-dataset/data).   

- The [imdb_top_1000_films](datasets/imdb_top_1000.csv) table contains data of IMDB's top 1000 films. The dataset was downloaded from [Kaggle](https://www.kaggle.com/datasets/harshitshankhdhar/imdb-dataset-of-top-1000-movies-and-tv-shows/data).   

- The [imdb_movies](datasets/imdb_movies.csv) table is the largest table and is populated with data about movies contained in the IMDB database. It was also downloaded from [Kaggle](https://www.kaggle.com/datasets/ashpalsingh1525/imdb-movies-dataset).  

- The [users](datasets/users.csv) table was populated from a manually created CSV file.   

## Using Docker to Run the Postgres Database
The `Dockerfile` containing the image (postgres:14) and the instructions/parameters for the Postgres database is present in the root directory of this repository. The following Docker commands should be run from the root directory (where the `Dockerfile` exists):
```bash
# build the image locally
docker build . -t rwcannell/pg-movies-recommendation-system-db:1.0.3   

# run the container locally
docker run --name mrs-db -p 5432:5432 -d rwcannell/pg-movies-recommendation-system-db:1.0.3   

# push a tagged version of the image to Docker Hub
docker push rwcannell/pg-movies-recommendation-system-db:1.0.3   

# run the container by pulling the image from Docker Hub
docker run rwcannell/pg-movies-recommendation-system-db:1.0.3

# run the container with environment variables explicitly specified and hostname set to localhost
docker run --name mrs-db -p 5432:5432 -h 127.0.0.1 -e POSTGRES_USER=pg-mrs-user -e POSTGRES_PASSWORD=pg-mrs-password -d rwcannell/pg-movies-recommendation-system-db:1.0.3
```
To enter the running container, we can use the following command:
```bash
docker exec -it mrs-db psql -U pg-mrs-user pg-mrs-db
```
The above command will enter the container and we'll be able to run `psql` queries, i.e.   
```bash
pg-mrs-db=# SELECT * FROM users;
```
To get the IP address of the Docker container, run the following command:
```bash
docker inspect -f '{{range .NetworkSettings.Networks}}{{.IPAddress}}{{end}}' mrs-db
```