#!/bin/bash

echo "Attempting to seed Medusa..."
medusa seed -f ./data/seed.json

echo "Starting application..."
npm run start