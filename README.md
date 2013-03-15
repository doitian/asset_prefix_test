# Asset Prefix Test

### Purpose ###

The purpose of this app is to look for a bug with asset prefix killing session variables.

### Install ###

    bundle
    bundle exec rake db:setup
    bundle exec rails server

### Reproducing the bug ###

Open http://localhost:3000 in browser and try adding session keys. They should work.

To see the bug, switch to either the `asset-prefix-one-deep` or `asset-prefix-two-deep` branch.

    git checkout asset-prefix-two-deep
    bundle exec rails s

Now try setting session variables again.

