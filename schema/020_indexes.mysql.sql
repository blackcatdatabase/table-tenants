-- Auto-generated from schema-map-mysql.yaml (map@74ce4f4)
-- engine: mysql
-- table:  tenants

CREATE UNIQUE INDEX ux_tenants_slug_live_ci ON tenants (slug_ci, is_live);
