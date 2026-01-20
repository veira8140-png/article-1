#!/bin/bash
# One-command modern article setup for GitHub Pages
# Requires: GitHub CLI login already done (gh auth login)

# Create folders
mkdir -p assets/css

# Create index.html with modern VeiraHQ-style look
cat > index.html <<'EOL'
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>7 Ways Small Business Owners in Kenya Can Boost Profits</title>
<meta name="description" content="Discover 7 actionable ways for small business owners in Kenya to increase profits, prevent losses, and manage their businesses smarter using modern tools.">
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;600;700&display=swap" rel="stylesheet">
<style>
:root { --bg:#ffffff;--text:#222222;--link:#0066cc;--linkhover:#004a99;--cta:#0066cc;--ctahover:#004a99;--ctatext:#ffffff;--card:#f9f9f9;}
[data-theme="dark"] { --bg:#1c1c1c;--text:#eaeaea;--link:#66b2ff;--linkhover:#3399ff;--cta:#3399ff;--ctahover:#0066cc;--ctatext:#ffffff;--card:#2c2c2c;}
body{font-family:'Inter',sans-serif;line-height:1.7;color:var(--text);background:var(--bg);margin:0;padding:0;}
.container{max-width:800px;margin:50px auto;padding:0 20px;}
h1{font-size:2.8rem;font-weight:700;margin-bottom:20px;}
h2{font-size:1.8rem;margin-top:30px;margin-bottom:15px;}
p{font-size:1.1rem;margin-bottom:15px;}
a{color:var(--link);text-decoration:none;}a:hover{color:var(--linkhover);}
.dark-toggle{position:fixed;top:20px;right:20px;background:var(--cta);color:var(--ctatext);border:none;padding:10px 15px;border-radius:6px;cursor:pointer;font-weight:600;z-index:1000;}
.dark-toggle:hover{background:var(--ctahover);}
.cta{margin:40px 0;background:var(--card);padding:25px;text-align:center;border-radius:10px;box-shadow:0 4px 15px rgba(0,0,0,0.1);}
.cta a{display:inline-block;padding:12px 25px;background:var(--cta);color:var(--ctatext);border-radius:6px;font-weight:600;margin-top:15px;}
.cta a:hover{background:var(--ctahover);}
</style>
</head>
<body data-theme="light">
<button class="dark-toggle" onclick="toggleDarkMode()">Toggle Dark Mode</button>
<div class="container">
<h1>7 Ways Small Business Owners in Kenya Can Grow Profits and Reduce Losses</h1>
<p>Most small business owners in Kenya know the feeling of opening the shop in the morning and wondering whether today’s sales will cover costs and leave profit. Small inefficiencies quietly eat into profits without being noticed.</p>
<h2>1. Know Your Numbers Clearly Every Day</h2>
<p>Track sales, stock, and cash daily. Reliable numbers prevent costly mistakes and reveal profit patterns early.</p>
<h2>2. Reduce Staff-Related Losses Through Transparency</h2>
<p>Real-time sales tracking creates accountability without confrontation and ensures staff perform honestly.</p>
<h2>3. Use Data to Make Smarter Business Decisions</h2>
<p>Analyze trends to reorder stock, adjust prices, and plan promotions based on actual sales, not guesses.</p>
<h2>4. Automate Repetitive Tasks</h2>
<p>Tasks like stock updates, sales reconciliation, and report generation can be automated.</p>
<h2>5. Stay Compliant with Local Regulations</h2>
<p>Digital tools simplify KRA and ETIMS reporting and protect your business from fines.</p>
<h2>6. Monitor Your Business Remotely</h2>
<p>Check sales, stock, and staff performance from anywhere to stay in control.</p>
<h2>7. Choose Tools That Empower Your Business</h2>
<p>Veira helps small business owners track sales, monitor stock, stay compliant, and make informed decisions.</p>
<div class="cta">
<h3>Take Control of Your Business Today</h3>
<p>Start tracking sales and managing your shop smarter with Veira.</p>
<a href="https://veirahq.com">Visit VeiraHQ.com</a>
</div>
</div>
<script>
function toggleDarkMode(){const body=document.body;body.setAttribute('data-theme',body.getAttribute('data-theme')==='light'?'dark':'light');}
</script>
</body>
</html>
EOL

# Create minimal CSS folder (can expand later)
touch assets/css/style.css

# Stage and commit
git add .
git commit -m "Modernized article with VeiraHQ-style design, dark mode, and CTA"

# Push using GitHub CLI login
git push origin main

echo "✅ Modern website updated and pushed! Check your GitHub Pages URL."
