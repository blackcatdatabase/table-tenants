-- Auto-generated from schema-map-mysql.yaml (map@sha1:5E62933580349BE7C623D119AC9D1301A62F03EF)
-- engine: mysql
-- table:  tenants

CREATE UNIQUE INDEX ux_tenants_slug_live_ci ON tenants (slug_ci, is_live);
