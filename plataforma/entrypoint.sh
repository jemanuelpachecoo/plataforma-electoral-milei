#!/usr/bin/env bash

#sleep 60  # sleep to prevent reset

#while true; do sleep 1000; done

npm run build

RUN chmod -R 777 /app/.docusaurus

npm run start
