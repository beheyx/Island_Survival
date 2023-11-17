document.addEventListener('DOMContentLoaded', () => {
    // Fetch and display top player data on page load
    fetch('/api/top-player')
        .then(response => response.json())
        .then(data => {
            document.getElementById('topUsername').textContent = data.username;
            document.getElementById('topTime').textContent = data.time;
        });

    // Handle form submission
    document.getElementById('scoreForm').addEventListener('submit', (event) => {
        event.preventDefault();

        const formData = new FormData(event.target);
        const username = formData.get('username');
        const time = formData.get('time');

        // Send data to server
        fetch('/api/top-player', {
            method: 'POST',
            headers: {
                'Content-Type': 'application/json',
            },
            body: JSON.stringify({ username, time }),
        })
            .then(response => response.json())
            .then(data => {
                console.log(data.message);
            });
    });
});