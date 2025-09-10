#!/bin/bash

echo "Starting Movie Recommendation System..."

# Start Flask backend
echo "Starting Flask backend..."
cd Movie_Recommender
source venv/bin/activate && python3 app.py &
BACKEND_PID=$!

# Wait for backend to start
sleep 3

# Start Next.js frontend
echo "Starting Next.js frontend..."
cd ../my-app
npm run dev &
FRONTEND_PID=$!

echo "Backend running on http://localhost:5000"
echo "Frontend running on http://localhost:3000"
echo ""
echo "Press Ctrl+C to stop both servers"

# Wait for Ctrl+C
trap "kill $BACKEND_PID $FRONTEND_PID; exit" INT
wait