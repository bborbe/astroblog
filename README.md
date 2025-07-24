# Astro Technical Blog

A minimal, performant technical blog built with Astro.js and deployed to GitHub Pages.

## Features

- 📝 Write posts in Markdown
- 🎥 Embed YouTube videos
- ⚡ Fast static site generation
- 📱 Responsive design
- 🚀 Automatic deployment to GitHub Pages

## Getting Started

### Prerequisites

- Node.js 16.12.0 or higher
- npm or yarn

### Installation

```bash
# Clone the repository
git clone https://github.com/yourusername/astroblog
cd astroblog

# Install dependencies
npm install

# Start development server
npm run dev
```

### Creating Blog Posts

1. Create a new `.md` file in the `src/content/posts/` directory
2. Add frontmatter with title, date, and description
3. Write your content in Markdown
4. Commit and push to deploy automatically

### Embedding YouTube Videos

Use standard HTML embed codes in your Markdown:

```html
<iframe width="560" height="315" src="https://www.youtube.com/embed/VIDEO_ID" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
```

## Deployment

This blog automatically deploys to GitHub Pages using GitHub Actions when you push to the `main` branch.

## Development Commands

| Command                | Action                                           |
| :--------------------- | :----------------------------------------------- |
| `npm install`          | Installs dependencies                            |
| `npm run dev`          | Starts local dev server at `localhost:3000`     |
| `npm run build`        | Build your production site to `./dist/`         |
| `npm run preview`      | Preview your build locally, before deploying    |

## Project Structure

```
/
├── public/
│   └── favicon.svg
├── src/
│   ├── components/
│   ├── content/
│   │   └── posts/
│   ├── layouts/
│   ├── pages/
│   └── styles/
├── astro.config.mjs
└── package.json
```

## License

MIT