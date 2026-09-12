# Test Maker Pro
A web application which automatically generates and grades multiple choice tests using AI. Won 3rd best generative AI hack for the Treasure Hacks 3.5 Hackathon. 

## Features
* Automatically generate multiple choice practice tests based on a prompt
* Take generated multiple choice tests and view score
* Receive explanations for questions
* Save the test and your score on the test

## Built with
* Python
* React.js
* MySQl database
* ChatGPT API
 
## Getting Started
1. Clone repository

```bash
git clone https://github.com/enened/testMakerPro.git
```

2. Start React
```bash
cd dynamic_testing
npm install
npm start
```

3. Set up MySQL database schema by running the sqlScript.sql file
4. Enter database credentials and OpenAI API key in a .env file

```env
DB_HOST = localhost
DB_USER = youruser
DB_PASSWORD = yourpassword
API_KEY = yourapikey
```

5. Start Flask server
```bash
python main.py
```

## Notes
This project was created during a hackathon in limited time and focuses on core functionality. Limitations include:
* Limited input validation and error handling
* No session persistence
