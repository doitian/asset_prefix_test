# Session Test

### Purpose ###

The purpose of this app is to look for a bug with scoped routes killing session variables.

### Install ###

    bundle
    bundle exec rake db:setup
    bundle exec rails server

### Reproducing the bug ###

Open http://localhost:3000 in browser and try adding session keys. They should work.

To see the bug, first switch to the `scoped-routes-two-deep` branch.

    git checkout scoped-routes-two-deep
    bundle exec rails s

Now try setting session variables again.

