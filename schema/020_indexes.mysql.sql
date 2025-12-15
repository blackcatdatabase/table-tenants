-- Auto-generated from schema-map-mysql.yaml (map@sha1:B9D3BE28A74392B9B389FDAFB493BD80FA1F6FA4)
-- engine: mysql
-- table:  tenants

CREATE UNIQUE INDEX ux_tenants_slug_live_ci ON tenants (slug_ci, is_live);
