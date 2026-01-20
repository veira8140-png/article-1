<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>{{ page.title }}</title>
<meta name="description" content="{{ page.description }}">
<link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;600;700&display=swap" rel="stylesheet">
<link rel="stylesheet" href="{{ '/assets/css/style.css' | relative_url }}">

<script type="application/ld+json">
{
  "@context": "https://schema.org",
  "@type": "Article",
  "headline": "{{ page.title }}",
  "description": "{{ page.description }}",
  "author": { "@type": "Organization", "name": "Veira" },
  "publisher": { "@type": "Organization", "name": "Veira", "logo": { "@type": "ImageObject", "url": "https://veirahq.com/logo.png" } },
  "mainEntityOfPage": { "@type": "WebPage", "@id": "https://veirahq.com" },
  "datePublished": "2026-01-20",
  "dateModified": "2026-01-20"
}
</script>
</head>
<body data-theme="light">
<button class="dark-toggle" onclick="toggleDarkMode()">Toggle Dark Mode</button>
<div class="container">
{{ content }}
</div>

<script>
function toggleDarkMode() {
  const body = document.body;
  const current = body.getAttribute('data-theme');
  body.setAttribute('data-theme', current === 'light' ? 'dark' : 'light');
}
</script>
</body>
</html>
