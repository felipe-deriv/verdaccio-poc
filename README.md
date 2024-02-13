# Verdaccio Proof of Concept

We have put together 3 node packages:

- my_service
- sum
- rng

My service will simply print out the sum of many random numbers.

The sum is performed by the `sum` package.

The random numbers are obtained by the `rng` package.

All coordinated using the dockerized `verdaccio`.

## Publish the packages

Remember to bump the `package.json` versions when updating.

```
make publish
```

When asked for a username and password, you can specify whatever you want, the package will be bound to the username.

You can check the registry here: http://127.0.0.1:4873

## Build the app

```
make build 
```

This will fail if the dependencies are not published.

## Run the app

```
make install
```

See some random numbers being printed out every 1 second.
Can you guess the theoretical min and max sum per seed?

## Start over

```
make clear
```

## Start over for real

This will also delete local volumes. If you forgot your password or whatever.

```
make clear_all
```