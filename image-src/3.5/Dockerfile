FROM neo4j:3.5.11

ENV NEO4J_AUTH=neo4j/letmein

ENV APOC_VERSION 3.5.0.5
ENV APOC_URI https://github.com/neo4j-contrib/neo4j-apoc-procedures/releases/download/${APOC_VERSION}/apoc-${APOC_VERSION}-all.jar
ADD ${APOC_URI} /var/lib/neo4j/plugins

ENV GRAPHQL_VERSION 3.5.0.4
ENV GRAPHQL_URI https://github.com/neo4j-graphql/neo4j-graphql/releases/download/${GRAPHQL_VERSION}/neo4j-graphql-${GRAPHQL_VERSION}.jar
ADD ${GRAPHQL_URI} /var/lib/neo4j/plugins

ENV GRAPH_ALGORITHMS_VERSION 3.5.4.0
ENV GRAPH_ALGORITHMS_URI https://github.com/neo4j-contrib/neo4j-graph-algorithms/releases/download/${GRAPH_ALGORITHMS_VERSION}/graph-algorithms-algo-${GRAPH_ALGORITHMS_VERSION}.jar
ADD ${GRAPH_ALGORITHMS_URI} /var/lib/neo4j/plugins

EXPOSE 7474 7473 7687

CMD ["neo4j"]