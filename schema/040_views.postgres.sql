-- Auto-generated from schema-views-postgres.yaml (map@sha1:5C6FE96DC2067A978A357A1DCB8631B46C71D429)
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
