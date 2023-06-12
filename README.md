Link to frontend: https://github.com/GeoReece000/article-news/tree/master
Link to backend: https://github.com/GeoReece000/phase-3-sinatra-react-project

Backend README
Introduction
The backend of the Article List app is built with Sinatra, utilizing Active Record to interact with a database. This README provides instructions on setting up and running the backend server, as well as important information about the API endpoints and functionality.

Setup
Clone the backend repository to your local machine.

Install the required gems by running the following command:

console
Copy code
$ bundle install
Set up the database by running the migrations:

console
Copy code
$ bundle exec rake db:migrate
Start the backend server with the following command:

console
Copy code
$ bundle exec rake server
The server will run on http://localhost:9292.

API Endpoints
The backend provides the following API endpoints:

GET /articles: Retrieves a list of all articles.

POST /articles: Creates a new article.

GET /articles/:id: Retrieves a specific article.

PATCH /articles/:id: Updates an existing article.

DELETE /articles/:id: Deletes an article.

Customization
To customize the backend to work with your specific frontend implementation:

Modify the API endpoints and behavior in the respective route handlers in the app/controllers/articles_controller.rb file.

Implement the necessary logic for fetching articles, deleting articles, and updating articles according to your specific backend requirements.

Handle any error handling, validations, or additional functionality on the server-side as per your application's needs.

Note
Ensure that your frontend application is configured to make requests to the appropriate API endpoints defined in the backend.

Feel free to modify the code in the backend to suit your specific requirements or add additional features to enhance the functionality of the app.

Resources
Sinatra Documentation
Active Record Documentation
