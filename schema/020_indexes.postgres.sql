-- Auto-generated from schema-map-postgres.yaml (map@4ae85c5)
-- engine: postgres
-- table:  tenants

CREATE UNIQUE INDEX IF NOT EXISTS ux_tenants_slug_live_ci ON tenants (slug_ci) WHERE deleted_at IS NULL;

CREATE UNIQUE INDEX IF NOT EXISTS ux_tenants_slug_ci_is_live ON tenants (slug_ci, is_live);
