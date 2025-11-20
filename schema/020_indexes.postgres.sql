-- Auto-generated from schema-map-postgres.psd1 (map@62c9c93)
-- engine: postgres
-- table:  tenants
CREATE UNIQUE INDEX IF NOT EXISTS ux_tenants_slug_live_ci ON tenants (slug_ci) WHERE deleted_at IS NULL;
