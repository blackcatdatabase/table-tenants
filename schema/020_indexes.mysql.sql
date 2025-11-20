-- Auto-generated from schema-map-mysql.psd1 (map@62c9c93)
-- engine: mysql
-- table:  tenants
CREATE UNIQUE INDEX ux_tenants_slug_live_ci ON tenants (slug_ci, is_live);
