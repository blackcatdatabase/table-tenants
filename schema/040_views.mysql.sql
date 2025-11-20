-- Auto-generated from schema-views-mysql.psd1 (map@db2f8b8)
-- engine: mysql
-- table:  tenants
-- Contract view for [tenants]
CREATE OR REPLACE ALGORITHM=MERGE SQL SECURITY INVOKER VIEW vw_tenants AS
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
