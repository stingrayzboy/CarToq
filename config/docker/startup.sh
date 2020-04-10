#! /bin/sh

# Wait for MySQL
until nc -z -v -w30 $DB_HOST $DB_PORT; do
 echo 'Waiting for MySQL...'
 sleep 1
done
echo "MySQL is up and running!"

# removing previous pid
rm /app/tmp/pids/server.pid

echo "Removed Previous Process"

echo "Installing/Updating Gems"
bundle update

# If the database exists, migrate. Otherwise setup (create and migrate) 
rails db:migrate 2>/dev/null || rails db:create db:migrate db:seed
echo "Done!"

# Precompile assets for production
#bundle exec rake assets:precompile

#echo "Assets Pre-compiled!"

rails s -b 0.0.0.0