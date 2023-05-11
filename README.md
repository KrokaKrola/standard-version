# PRE-CONFIG

1. git flow init on empty repository

- set versioning prefix in git flow config to v1
- run `git config gitflow.hotfix.finish.notag` true to disable tagging

2. copy `scripts` folder

3. add `bump`, `release`, `publish` scripts to package.json

4. install `commitizen`, `cz-conventional-changelog`, `standard-version`

5. add next lines to package.json with your repository

```json
"config": {
    "commitizen": {
      "path": "./node_modules/cz-conventional-changelog"
    }
  },
  "repository": {
    "type": "git",
    "url": "https://github.com/KrokaKrola/semantic-versioning"
  }
```

# COMMITS

1. make commits with `npx git-cz` command

# RELEASE COMMANDS FLOW

1. `npm run release`

2. `npm run bump`

3. `git push --follow-tags origin release/{release_number}`

- this command will show up in terminal with correct release number version

4. `npm run publish`

5. `git push` on master/develop branches
