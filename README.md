# macluster-deploy

Simple deploy script to deploy an application to @maclover7's
Traefik-powered web cluster.

### Deploy a new application

Create a `maclover7.yml` configuration file in your application's root
directory. Populate it with the following fields:

- `name` -- `String` -- the name of the application
- `port` -- `Integer` -- the port that the application exposes
- `hosts` -- `Array<String>` -- array of hostnames that the application
  will respond to

If `hosts` is not present, then the application will automatically be
configured to respond to `name.CLUSTER_DOMAIN`.

### Deploy an existing application

Ensure your application is setup per the instructions in [Deploy a new
application](#deploy-a-new-application), and then run `bundle exec
macluster-deploy`.
