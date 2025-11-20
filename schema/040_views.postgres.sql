-- Auto-generated from schema-views-postgres.psd1 (map@9d3471b)
-- engine: postgres
-- table:  tenants
-- Contract view for [tenants]
CREATE OR REPLACE VIEW vw_tenants AS
SELECT
  id,
  name,
  slug,
  slug_ci,
  status,
  version,
  created_at,
  updated_at,
  deleted_at
FROM tenants;
