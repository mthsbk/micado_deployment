#!/bin/bash


echo 'Starting databases and balancer first'
docker-compose -f docker-compose.yml up -d micado_db mongodb balancer

sleep 60s

echo 'starting api_manager, identity_server, monitoring system, data api'
docker-compose -f docker-compose.yml up -d countly_api countly_frontend identity_server api_gateway data_api

sleep 60s

echo 'Now starting applications'
docker-compose -f docker-compose.yml up -d nginx data_migrants data_pa watchtower

echo 'not started at the moment the translation system, db management, chatbot, upload_service, dashboard'
echo 'if you want to start postgresql db management use:'
echo 'docker-compose -f docker-compose.yml up -d db_admin'
echo 'if you want to start mongo db management use:'
echo 'docker-compose -f docker-compose.yml up -d mongo-express'

echo 'if you want to start translation system:'
echo 'docker-compose -f docker-compose.yml up -d git weblate cache'

echo 'if you want to start dashboard:'
echo 'docker-compose -f docker-compose.yml up -d dashboard'

