# Convivio Neo4j Docker images

Based on official [Neo4j Docker images](https://hub.docker.com/_/neo4j/).

Images include:

- [APOC library](https://github.com/neo4j-contrib/neo4j-apoc-procedures)
- [GraphQL extension for Neo4j](https://github.com/neo4j-graphql/neo4j-graphql)
- [Efficient Graph Algorithms for Neo4j](https://github.com/neo4j-contrib/neo4j-graph-algorithms)

Further details and documentation of those addtions are available at each repository.

## Build and push Docker images

Use the `Makefile` commands to build and push your images to your [Docker Hub](https://hub.docker.com/) respository.

### Process

To use this repo you must copy `.env.example` to `.env` and edit or add any environment variables as necessary.

First, make some updates:

1. Make some updates to the `Dockerfile` for the 3.4 and 3.5 builds — usually an increment of the version numbers for the base image and/or the included extensions.
2. Push your changes to GitHub
3. Create releases for your changes, incrementing the release number and tags using the patterns:
  - `convivio-neo4j-3.5.x` for the 3.5.* images
  - `convivio-neo4j-3.4.x` for the 3.4.* images
4. Make sure you have those tags pulled locally: 

```bash
$ git pull
```
Then, you can build and push you images in one go:

```bash
$ make build push
```

This creates images and tags them with `3.4.x`, `3.4`, `3.5.x`, `3.5` and `latest` tags, using the git tags as the base.

### Make commands

Usage:

```bash
$ make {command}
```

```bash
Commands:
  build     Build Docker images for Neo4j 3.4.* and 3.5.*
  push      Push images to Docker Hub
```
