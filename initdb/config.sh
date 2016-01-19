#!/bin/sh -x

PGCONF="$PGDATA/postgresql.conf"

perl -p -i -e "s/^#?shared_buffers\s*=.*$/shared_buffers = ${PG_SHARED_BUFFERS:-100MB}/" $PGCONF
perl -p -i -e "s/^#?max_prepared_transactions\s*=.*$/max_prepared_transactions = ${PG_PREPARED_TRANSACTIONS:-32}/" $PGCONF
perl -p -i -e "s/^#?effective_cache_size\s*=.*$/effective_cache_size = ${PG_EFFECTIVE_CACHE:-1GB}/" $PGCONF
perl -p -i -e "s/^#?work_mem\s*=.*$/work_mem = ${PG_WORK_MEM:-32MB}/" $PGCONF
perl -p -i -e "s/^#?wal_buffers\s*=.*$/wal_buffers = ${PG_WAL_BUFFERS:-8MB}/" $PGCONF
perl -p -i -e "s/^#?lc_messages\s*=.*$/lc_messages = 'en_US.UTF-8'/" $PGCONF
perl -p -i -e "s/^#?lc_time\s*=.*$/lc_time = 'en_US.UTF-8'/" $PGCONF
perl -p -i -e "s/^#?log_line_prefix\s*=.*$/log_line_prefix = '%t [%p]: [%l-1] '/" $PGCONF
perl -p -i -e "s/^#?listen_addresses\s*=.*$/listen_addresses = '*'/" $PGCONF
perl -p -i -e "s/^#?log_hostname.*$/log_hostname = off/" $PGCONF

