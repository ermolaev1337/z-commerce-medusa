#!/bin/bash


trap 'medusa seed -f ./data/seed.json' EXIT

npm run start
