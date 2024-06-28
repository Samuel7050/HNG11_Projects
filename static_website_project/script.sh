#!/bin/bash
yum update -y
yum install -y httpd
systemctl start httpd
systemctl enable httpd

# Copy website files to the web server root directory
mkdir -p /var/www/html
cat <<EOF > /var/www/html/index.html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My Static Website </title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>
    <div class="container">
        <h1>Welcome to My Static Website.HNG11 Intership stage0 project</h1>
        <div class="info">
            <p>Name: Ojo Samuel</p>
            <p>Username: Ojo Samuel</p>
            <p>Email: ojosamuel700@gmail.com</p>
        </div>
        <div class="link">
            <p>Visit <a href="https://hng.tech" target="_blank">HNG.tech</a>.</p>
        </div>
    </div>
    <script src="script.js"></script>
</body>
</html>

EOF

cat <<EOF > /var/www/html/styles.css
body {
    font-family: Arial, sans-serif;
    background-color: #f0f0f0;
    margin: 0;
    padding: 0;
}

.container {
    max-width: 600px;
    margin: 50px auto;
    padding: 20px;
    background-color: #fff;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    text-align: center;
}

h1 {
    color: #333;
}

.info p {
    font-size: 1.2em;
    color: #666;
}

.link p {
    font-size: 1em;
    color: #0066cc;
}

.link a {
    color: #0066cc;
    text-decoration: none;
}

.link a:hover {
    text-decoration: underline;
}
EOF

cat <<EOF > /var/www/html/script.js
document.addEventListener('DOMContentLoaded', function() {
    console.log("Website Loaded Successfully");
});
EOF
