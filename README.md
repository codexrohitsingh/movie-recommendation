# Movie Recommendation System

A modern movie recommendation system with machine learning backend and beautiful React/Next.js frontend.

## Features

- 🎬 Browse thousands of movies
- 🔍 Search for movies
- 📈 View trending movies
- 🤖 Get ML-powered movie recommendations
- ✨ Beautiful dark theme UI

## Prerequisites

- Python 3.8+
- Node.js 16+
- npm or yarn

## Installation

### Backend Setup

1. Navigate to the backend directory:
```bash
cd Movie_Recommender
```

2. Install Python dependencies:
```bash
pip install -r requirement.txt
```

3. Download NLTK data (run in Python):
```python
import nltk
nltk.download('punkt')
```

### Frontend Setup

1. Navigate to the frontend directory:
```bash
cd my-app
```

2. Install Node dependencies:
```bash
npm install
```

## Running the Application

### Option 1: Use the start script (Recommended)

From the root directory, run:
```bash
./start.sh
```

This will start both the backend (port 5000) and frontend (port 3000).

### Option 2: Run separately

**Backend:**
```bash
cd Movie_Recommender
python app.py
```

**Frontend (in a new terminal):**
```bash
cd my-app
npm run dev
```

## Usage

1. Open your browser and go to `http://localhost:3000`
2. Browse the homepage to see trending movies
3. Use the search bar to find specific movies
4. Click on any movie in search results to get ML-powered recommendations
5. Navigate using the top menu to explore different sections

## API Endpoints

- `GET /api/movies` - Get all movies
- `GET /api/trending` - Get trending movies
- `GET /api/search?q={query}` - Search movies
- `POST /api/recommend` - Get movie recommendations

## Technologies Used

### Backend
- Flask
- Pandas
- Scikit-learn
- NLTK
- Cosine similarity for recommendations

### Frontend
- Next.js 14
- React
- TypeScript
- Tailwind CSS

## Project Structure

```
Movie Recommendation/
├── Movie_Recommender/       # ML Backend
│   ├── app.py              # Flask API
│   ├── tmdb_5000_*.csv     # Movie datasets
│   └── requirement.txt     # Python dependencies
├── my-app/                 # React Frontend
│   ├── app/                # Next.js app directory
│   ├── components/         # React components
│   └── public/             # Static assets
└── start.sh                # Startup script
```# movie-recommendation
