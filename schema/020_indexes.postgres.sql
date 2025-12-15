-- Auto-generated from schema-map-postgres.yaml (map@sha1:FAEA49A5D5F8FAAD9F850D0F430ED451C5C1D707)
-- engine: postgres
-- table:  tenants

CREATE UNIQUE INDEX IF NOT EXISTS ux_tenants_slug_live_ci ON tenants (slug_ci, is_live);
