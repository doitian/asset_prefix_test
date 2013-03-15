# Asset Prefix Test

### Purpose ###

The purpose of this app is to demonstrate a bug with Rails config.assets.prefix causing the session to become un-responsive.

### Install ###

    bundle
    bundle exec rails server

### Reproducing the bug ###

Open http://localhost:3000 in browser and try adding session keys. They should work.

To see the bug in action, switch to either the `asset-prefix-one-deep` or `asset-prefix-two-deep` branch.

    git checkout asset-prefix-two-deep
    bundle exec rails s

Now try setting session variables again. If you don't have any session variables set, you won't be able to add any.
If on the other hand you already have one set, it can't be changed or removed.

Look at [this commit](https://github.com/sporkd/asset_prefix_test/commit/054dad724e257c71bdd9100995d2d6d70bab9ebf) to see what changes were made to make it start breaking.

