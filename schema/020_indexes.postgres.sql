-- Auto-generated from schema-map-postgres.psd1 (map@9d3471b)
-- engine: postgres
-- table:  tenants
CREATE UNIQUE INDEX IF NOT EXISTS ux_tenants_slug_live_ci ON tenants (slug_ci) WHERE deleted_at IS NULL;
