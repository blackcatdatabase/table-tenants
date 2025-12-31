-- Auto-generated from schema-views-postgres.yaml (map@sha1:A7406D76A2DD55741B4DC6A4EC831681A19168EB)
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
