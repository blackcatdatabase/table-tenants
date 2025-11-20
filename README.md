# 📦 Tenants

![SQL](https://img.shields.io/badge/SQL-MySQL%208.0%2B-4479A1?logo=mysql&logoColor=white) ![License](https://img.shields.io/badge/license-BlackCat%20Proprietary-red) ![Status](https://img.shields.io/badge/status-stable-informational) ![Generated](https://img.shields.io/badge/generated-from%20schema--map-blue)

<!-- Auto-generated from schema-map-postgres.psd1 @ 62c9c93 (2025-11-20T21:38:11+01:00) -->

> Schema package for table **tenants** (repo: `tenants`).

## Files
```
schema/
  001_table.sql
  020_indexes.sql
  # (no foreign keys declared in map)
```

## Quick apply
```bash
# Apply schema (Linux/macOS):
mysql -h "$DB_HOST" -u "$DB_USER" -p"$DB_PASS" "$DB_NAME" < schema/001_table.sql
mysql -h "$DB_HOST" -u "$DB_USER" -p"$DB_PASS" "$DB_NAME" < schema/020_indexes.sql
```

```powershell
# Apply schema (Windows PowerShell):
mysql -h $env:DB_HOST -u $env:DB_USER -p$env:DB_PASS $env:DB_NAME < schema/001_table.sql
mysql -h $env:DB_HOST -u $env:DB_USER -p$env:DB_PASS $env:DB_NAME < schema/020_indexes.sql
```

## Docker quickstart
```bash
# Spin up a throwaway MySQL and apply just this package:
docker run --rm -e MYSQL_ROOT_PASSWORD=root -e MYSQL_DATABASE=app -p 3307:3306 -d mysql:8
sleep 15
mysql -h 127.0.0.1 -P 3307 -u root -proot app < schema/001_table.sql
mysql -h 127.0.0.1 -P 3307 -u root -proot app < schema/020_indexes.sql
```

## Columns
| Column | Type | Null | Default | Extra |
|-------:|:-----|:----:|:--------|:------|
| id | BIGINT | — | AS | PK |
| name | VARCHAR(200) | NO | — |  |
| slug | VARCHAR(200) | NO | — |  |
| slug_ci | TEXT | — | — |  |
| status | TEXT | NO | 'active' |  |
| created_at | TIMESTAMPTZ(6) | NO | CURRENT_TIMESTAMP(6) |  |
| updated_at | TIMESTAMPTZ(6) | NO | CURRENT_TIMESTAMP(6) |  |
| version | INTEGER | NO | 0 |  |
| deleted_at | TIMESTAMPTZ(6) | YES | — |  |
| is_live | BOOLEAN | YES | — |  |

## Relationships
- No outgoing foreign keys.

```mermaid
erDiagram
  TENANTS {
    INT id PK
    VARCHAR name
    VARCHAR slug
    VARCHAR slug_ci
    VARCHAR status
    TIMESTAMPTZ created_at
    TIMESTAMPTZ updated_at
    INTEGER version
    TIMESTAMPTZ deleted_at
    BOOLEAN is_live
  }
```

## Indexes
- 1 deferred index statement(s) in schema/020_indexes.sql.

## Notes
- Generated from the umbrella repository **blackcat-database** using `scripts/schema-map.psd1`.
- To change the schema, update the map and re-run the generators.

## License
Distributed under the **BlackCat Store Proprietary License v1.0**. See `LICENSE`.
