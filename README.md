# jmx-tester-docker

A small Java application for testing JMX management

JMX test app from https://github.com/cluther/jmx-tester

## Usage

`docker compose up`

### Swarm

if you don't have a swarm already:  `docker swarm init`

deploy `docker stack deploy -c docker-compose.yaml jmx-test`

## Testing

`jconsole` - connect to localhost:6660

_jmx-tester_ folder containing _JMXTestObjectMBean_, and its attributes and
operations available for testing.

### Swarm

