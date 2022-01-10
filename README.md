# Bookmark Manager

## User Stories

As a browser user
So that I can keep track of sites I want to revisit
I would like to see a list of my bookmarks

## Domain Model

![domain model](./bookmark_manager_1.png)

```
Client                Controller          Model             View
-----------------------------------------------------------------------------
              ---->      app     -------->                                  |
              get                 .all       Bookmark                       |
              request                                                       | 
                                  <---------                                |
/bookmarks                             [bookmarks]                          |
                                            -------------->                 |
              <-------                                      erb bookmarks   |
              response                      <--------------                 |
                                                html                        |
```

## Getting Started

### Database Setup

1. Connect to psql
2. Create the database using the psql command CREATE DATABASE bookmark_manager;
3. Connect to the database using the pqsl command \c bookmark_manager;
4. Run the query we have saved in the file 01_create_bookmarks_table.sql