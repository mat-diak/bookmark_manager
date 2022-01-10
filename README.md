# Bookmark Manager

## User Stories

As a browser user
So that I can keep track of sites I want to revisit
I would like to see a list of my bookmarks

## Domain Model

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
