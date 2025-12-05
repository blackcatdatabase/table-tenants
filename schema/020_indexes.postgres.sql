-- Auto-generated from schema-map-postgres.yaml (map@sha1:F0EE237771FBA8DD7C4E886FF276F91A862C3718)
-- engine: postgres
-- table:  tenants

CREATE UNIQUE INDEX IF NOT EXISTS ux_tenants_slug_live_ci ON tenants (slug_ci, is_live);
