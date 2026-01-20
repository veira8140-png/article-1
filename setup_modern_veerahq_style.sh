#!/bin/bash

# One command to build a modern SaaS‑style article page

# Create CSS directory
mkdir -p assets/css

# Create index.html
cat > index.html << 'EOL'
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>7 Ways Small Business Owners in Kenya Can Boost Profits</title>
<meta name="description" content="Discover 7 actionable ways for small business owners in Kenya to increase profits, prevent losses, and manage their businesses smarter with Veira.">
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;600;700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="assets/css/style.css">
</head>
<body>

<header class="hero">
  <div class="hero-content">
    <h1>7 Proven Strategies to Grow Profits for Small Business Owners in Kenya</h1>
    <p>Learn practical tips and tools that help you reduce losses, sell more, and manage smarter.</p>
    <a href="https://veirahq.com" class="btn btn-primary">Explore VeiraHQ Tools</a>
  </div>
</header>

<main class="container">
  <section class="section-intro">
    <p>Small business owners in Kenya often struggle with unclear numbers, untapped growth, and hidden daily losses. These strategies help you tighten operations and boost profit.</p>
  </section>

  <section class="tip">
    <h2>1. Know Your Numbers Every Day</h2>
    <p>Track daily sales, stock, and cash flow clearly to spot issues early.</p>
  </section>

  <section class="tip">
    <h2>2. Increase Transparency with Your Team</h2>
    <p>Real-time tracking builds accountability and reduces shrinkage.</p>
  </section>

  <section class="tip">
    <h2>3. Make Data‑Driven Decisions</h2>
    <p>Use trends to reorder, price, and promote effectively.</p>
  </section>

  <section class="tip">
    <h2>4. Automate Repetitive Tasks</h2>
    <p>Free up your time by automating stock updates, reports, and cash reconciliation.</p>
  </section>

  <section class="tip">
    <h2>5. Stay Compliant with Regulations</h2>
    <p>Digital tools help you stay compliant with KRA ETIMS and other requirements.</p>
  </section>

  <section class="tip">
    <h2>6. Monitor Remotely</h2>
    <p>Stay connected to your business even when you’re away.</p>
  </section>

  <section class="tip">
    <h2>7. Empower Your Business</h2>
    <p>Veira helps small business owners manage data, inventory, and compliance in one platform. <a href="https://veirahq.com">Visit VeirahQ.com</a>.</p>
  </section>

  <section class="cta-section">
    <h3>Ready to Transform Your Business?</h3>
    <a href="https://veirahq.com" class="btn btn-secondary">Get Started with VeiraHQ</a>
  </section>
</main>

<footer class="footer">
  <p>© 2026 Veira. All rights reserved.</p>
</footer>

</body>
</html>
EOL

# Create CSS
cat > assets/css/style.css << 'EOL'
/* Base Reset */
* { margin: 0; padding: 0; box-sizing: border-box; }
body { font-family: 'Inter', sans-serif; color: #333; background: #fff; line-height: 1.7; }

header.hero {
  background: linear-gradient(135deg, #1e3a8a, #2563eb);
  color: white;
  text-align: center;
  padding: 80px 20px;
}
header.hero h1 { font-size: 2.8rem; font-weight: 700; margin-bottom: 15px;}
header.hero p { font-size: 1.2rem; margin-bottom: 20px;}
.btn { display: inline-block; padding: 14px 28px; border-radius: 6px; font-weight: 700; text-decoration: none; }
.btn-primary { background: #ff6600; color: white; }
.btn-primary:hover { background: #e65c00; }
.btn-secondary { background: #1e40af; color: white; margin-top: 20px; }
.btn-secondary:hover { background: #1e3a8a; }

.container { max-width: 900px; margin: 40px auto; padding: 0 20px; }
.section-intro p { font-size: 1.2rem; margin-bottom: 25px; }
.tip { margin-bottom: 30px; }
.tip h2 { font-size: 1.8rem; color: #1d4ed8; margin-bottom: 10px; }
.tip p { font-size: 1.1rem; }

.cta-section {
  background: #eef2ff;
  text-align: center;
  padding: 40px 20px;
  border-radius: 8px;
  margin-top: 40px;
}
.footer { text-align: center; padding: 20px 0; font-size: 0.9rem; color: #555; margin-top: 40px; }
EOL

# Commit and push
git add .
git commit -m "Modern SaaS‑style article layout"
git push origin main

echo "Modern layout applied and pushed. Check your GitHub Pages URL."
