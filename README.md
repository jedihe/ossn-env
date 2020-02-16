## Local Env Template for OSSN

Simplistic local dev-env for opensource socialnetwork, using php 7.2 + mysql 8.

Depends on [Local Envs Web Gateway](https://github.com/jedihe/envs-web-gateway).

### Usage

Start by setting up [Local Envs Web Gateway](https://github.com/jedihe/envs-web-gateway).

Clone this repo:

```
git clone --recursive https://github.com/jedihe/ossn-env.git env1
```

Next, run the init script:

```
./init.sh
```

This will create two directories:

- volumes/ossn: the clone of the ossn repo.
- volumes/ossn\_data: the directory for storing user-generated content, once
  ossn is installed.

If running macOS, update docker-compose.yml: append ':cached' to the very end
of all entries under a 'volumes' section.

Start the env:

```
docker-compose up -d
```

Add an entry for local.ossn.com in /etc/hosts, pointing to 127.0.0.1, like
this:

```
127.0.0.1  local.ossn.com
```

Load your site in the browser, by loading http://local.ossn.com.

For proper installation, you must use specific values for some settings:

- DB name: ossn
- DB user: ossn
- DB pass: ossn
- DB host: db
- Data directory: /var/www/ossn\_data/
