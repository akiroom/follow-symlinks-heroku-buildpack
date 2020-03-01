# Follow Symlinks Heroku Buildpack

Convert symlinks to copied actual/real/source files.

- Set `PROJECT_PATH` environment variable to point your project root.
  - If set it, follow only files in PROJECT_PATH.
- Ignore files written in `.gitignore` by using `git ls-files`.

## How to use it

1. heroku buildpacks:clear if necessary
2. heroku buildpacks:set https://github.com/akiroom/follow-symlinks-heroku-buildpack
3. heroku buildpacks:add heroku/nodejs or whatever buildpack you need for your application
4. heroku config:set PROJECT_PATH=projects/nodejs/frontend pointing to what you want to be a project root.
   Deploy your project to Heroku.

### With timanovsky/subdir-heroku-buildpack

1. heroku buildpacks:clear if necessary
2. heroku buildpacks:set https://github.com/akiroom/follow-symlinks-heroku-buildpack
3. heroku buildpacks:add https://github.com/timanovsky/subdir-heroku-buildpack
4. heroku buildpacks:add heroku/nodejs or whatever buildpack you need for your application
5. heroku config:set PROJECT_PATH=projects/nodejs/frontend pointing to what you want to be a project root.
   Deploy your project to Heroku.

## Development

- Edit bin/compile

## Test

- See [heroku/heroku-buildpack-testrunner](https://github.com/heroku/heroku-buildpack-testrunner)

```sh
# initialize (only first time)
heroku create --buildpack https://github.com/heroku/heroku-buildpack-testrunner

# Run test
git push heroku master && heroku run tests
```

## Special Thanks

This buildpack built by referring to [timanovsky/subdir-heroku-buildpack](https://github.com/timanovsky/subdir-heroku-buildpack).
