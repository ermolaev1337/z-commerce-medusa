#!/bin/bash

medusa seed -f ./data/seed.json || true

npm run start
