# Bunkerdb API

This module provides a basic Rest API to get information about complanies and their employees. Also it includes en endpoint to create new companies with or without employees.

## Setup.

1. Using the `.env.example` file, create a new file and define the required env variables to connect with database.

2. (Optional) If you do not have a Mysql Instace, use the Docker command to create one, according to the configuration in step 1. 

    ```
    docker compose up —build.
    ```

    The database will be created with the file in `dump` folder.

3. Install dependencies

    ```
    npm i
    ```

4. Run migration to update the structure of database.

    ```
    npm run migration
    ```

5. The API is ready to use it.

    ```
    npm run dev
    ```


## Endpoints

  ### Get All Companies
    
    GET: http://localhost:3000/api/v1/companies 

  ### Get a company for ID
    
    GET: http://localhost:3000/api/v1/companies/:id

  ### Create one company
    
    POST: http://localhost:3000/api/v1/companies 
    --data: {
            "name": "Sindy Tacuma 10",
            "country": "AR",
            "employees" : [
                {
                    "document_number": 2222222,
                    "first_name": "Ms. Neoma Altenwerth 2",
                    "last_name": "Borer",
                    "date_admission": "1987-08-08"
                    },
                    {
                    "document_number": 3333333,
                    "first_name": "Mr. Ward Lockman 2",
                    "last_name": "Howell",
                    "date_admission": "2005-05-11"
                    }
                ]} 
    
