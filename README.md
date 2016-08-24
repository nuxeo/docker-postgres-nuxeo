# About docker-postgres-nuxeo 
 
This is a the Dockerfile for a customized Postgres Docker images, suitable for Nuxeo
 
# Building 
 
	docker build -t nuxeo/postgres .

# Configuration

During initialization the `config.sh` will be run to automatically configure some key parameters of PostgreSQL.

These parameters can be passed as environment variables :

 - `PG_SHARED_BUFFERS` : size of the PG Shared buffer (default is 100MB)
 - `PG_PREPARED_TRANSACTIONS` : max number of prepared transactions (default is 32)
 - `PG_EFFECTIVE_CACHE` : `effective_cache_size` (default is 1GB)
 - `PG_WORK_MEM` : Work memory (default is 32M)
 - `PG_WAL_BUFFERS` : `wal_buffers` (default is 8MB)
 
# About Nuxeo

Nuxeo dramatically improves how content-based applications are built, managed and deployed, making customers more agile, innovative and successful. Nuxeo provides a next generation, enterprise ready platform for building traditional and cutting-edge content oriented applications. Combining a powerful application development environment with SaaS-based tools and a modular architecture, the Nuxeo Platform and Products provide clear business value to some of the most recognizable brands including Verizon, Electronic Arts, Sharp, FICO, the U.S. Navy, and Boeing. Nuxeo is headquartered in New York and Paris. More information is available at www.nuxeo.com. 
