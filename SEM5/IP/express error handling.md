const express = require('express');
const app = express();

// Middleware to handle 404 errors (Route not found)
app.use((req, res, next) => {
  res.status(404).send('Not Found');
});

// Middleware to handle other errors
app.use((err, req, res, next) => {
  console.error(err.stack);
  res.status(500).send('Internal Server Error');
});

app.listen(3000, () => {
  console.log('Server is running on port 3000');
});

In the provided code, you have set up two middleware functions in your Express application:

The first middleware handles 404 errors, which means when a route is not found. It responds with a "Not Found" message and sets the HTTP status code to 404.

The second middleware handles other errors. It logs the error stack to the console and responds with an "Internal Server Error" message, setting the HTTP status code to 500.

The output of this code depends on the requests made to your Express application:

If a request is made to a route that doesn't exist (i.e., a 404 error occurs), the response will be "Not Found" with a 404 status code.

If an error occurs elsewhere in your application, the second middleware will handle it. It will log the error stack to the console and respond with "Internal Server Error" along with a 500 status code.

If no errors occur and a valid route is accessed, the application will run without any output because there is no specific route handler defined in the provided code.

The final output will depend on the specific requests and errors that occur while your Express application is running.
