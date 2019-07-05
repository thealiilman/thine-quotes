# Thine Quotes

These are the instructions for running the app on your machine.  

```
git clone https://github.com/thealiilman/thine-quotes.git
cd thine-quotes
```

This app is using [yarn](https://github.com/yarnpkg/yarn). Run the following to install JavaScript packages.  
```
yarn install --check-files
```

Create and migrate the databases.
```
rails db:create
rails db:migrate
```

To seed the database, run the following.
```
rails db:seed
```

If you were to play around with the code and it takes ages to compile, run the following.
```
bin/webpack-dev-server
```
