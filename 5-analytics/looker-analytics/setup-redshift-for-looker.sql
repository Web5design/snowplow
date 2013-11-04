-- Not clear if we need to create a database for temporary tables, or schema
CREATE DATABASE looker_scratch;
CREATE SCHEMA looker_scratch;

-- Now create user credentials for Looker
CREATE USER looker PASSWORD 'd1Ff1cul5P4ss5w0Rd';
GRANT ALL ON DATABASE snowplow TO looker;
GRANT ALL ON DATABASE looker_scratch TO looker;
GRANT USAGE ON SCHEMA atomic TO looker;
GRANT ALL ON SCHEMA looker_scratch to looker;
GRANT SELECT ON atomic.events TO looker;


