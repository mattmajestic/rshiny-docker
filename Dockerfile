# Use the official R Shiny server image from Rocker
FROM rocker/shiny:latest

# Copy the app to the image
COPY app.R /srv/shiny-server/
COPY www /srv/shiny-server/www

# Expose the port Shiny runs on
EXPOSE 3838

# Allow permission
RUN sudo chown -R shiny:shiny /srv/shiny-server

# Run the Shiny app
CMD ["/usr/bin/shiny-server"]
