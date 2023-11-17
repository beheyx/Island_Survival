const express = require('express');
const bodyParser = require('body-parser');
const app = express();
const port = process.env.PORT || 3000;

app.use(express.static('public'));
app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.json());

// In-memory data store (replace this with a database in a real application)
let topPlayer = {
    username: 'Default User',
    time: '00:00:00',
};

// Routes
app.get('/', (req, res) => {
    res.sendFile(__dirname + '/public/index.html');
});

app.get('/web/play-game', (req, res) => {
    res.sendFile(__dirname + '/public/web/play-game.html');
});

app.get('/top-scores', (req, res) => {
    res.sendFile(__dirname + '/public/top-scores.html');
});

app.get('/api/top-player', (req, res) => {
    res.json(topPlayer);
});

app.post('/api/top-player', (req, res) => {
    const { username, time } = req.body;

    // Assuming you have a game data structure (replace this with your actual logic)
    const gameData = {
        username,
        time,
    }; a

    // Update topPlayer data
    topPlayer = gameData;

    res.json({ message: 'Top player updated successfully' });
});

// Start the server
app.listen(port, () => {
    console.log(`Server is running on http://localhost:${port}`);
});