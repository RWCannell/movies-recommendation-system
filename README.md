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
