# README

This Application is a dockerzied application therefore you need to have docker installed and running to preview.

Things you may want to cover:

* Ruby version :- 2.6.5 

## First things first

After cloning the application make sure to run ```docker-compose up -d``` this will get all the dependencies resolved and start the application.

## How to use the console

Since the application is dockerzied and user docker-compose you need to learn a few commands

Traditional ```rails c``` doesnt work.

You need to run ```docker-compose exec website sh``` to login to the container shell and run ```rails c```

## Productionization in Mind

This app is currently only in development mode. To Productionize it you need to navigate to ```config/docker/entrypoint.sh``` and add your Precompile logics etc there.

# DO NOT RUN THIS APPLICATION IN NORMAL MODE.