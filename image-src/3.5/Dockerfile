FROM neo4j:3.5.15

ENV NEO4J_AUTH=neo4j/letmein
ENV PLUGINS_DIR=/var/lib/neo4j/plugins

ENV APOC_VERSION 3.5.0.9
ENV APOC_URI https://github.com/neo4j-contrib/neo4j-apoc-procedures/releases/download/${APOC_VERSION}/apoc-${APOC_VERSION}-all.jar
RUN wget -q -P "${PLUGINS_DIR}" --timeout 300 --tries 30 -O "apoc.jar" "${APOC_URI}"

ENV GRAPHQL_VERSION 3.5.0.4
ENV GRAPHQL_URI https://github.com/neo4j-graphql/neo4j-graphql/releases/download/${GRAPHQL_VERSION}/neo4j-graphql-${GRAPHQL_VERSION}.jar
RUN wget -q -P "${PLUGINS_DIR}" --timeout 300 --tries 30 -O "graph-ql.jar" "${GRAPHQL_URI}"

ENV GRAPH_ALGORITHMS_VERSION 3.5.4.0
ENV GRAPH_ALGORITHMS_URI https://github.com/neo4j-contrib/neo4j-graph-algorithms/releases/download/${GRAPH_ALGORITHMS_VERSION}/graph-algorithms-algo-${GRAPH_ALGORITHMS_VERSION}.jar
RUN wget -q -P "${PLUGINS_DIR}" --timeout 300 --tries 30 -O "graph-algorithms.jar" "${GRAPH_ALGORITHMS_URI}"

ENV NEOSEMANTICS_VERSION 3.5.0.4
ENV NEOSEMANTICS_URI https://github.com/neo4j-labs/neosemantics/releases/download/${NEOSEMANTICS_VERSION}/neosemantics-${NEOSEMANTICS_VERSION}.jar
RUN wget -q -P "${PLUGINS_DIR}" --timeout 300 --tries 30 -O "neosemantics.jar" "${NEOSEMANTICS_URI}"


EXPOSE 7474 7473 7687

CMD ["neo4j"]