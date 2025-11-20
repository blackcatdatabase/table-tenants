<!-- Auto-generated from schema-map-postgres.psd1 @ 62c9c93 (2025-11-20T21:38:11+01:00) -->
# Definition – tenants

Top-level tenant/organization records used for multi-tenancy.

## Columns
| Column | Type | Null | Default | Description | Notes |
|-------:|:-----|:----:|:--------|:------------|:------|
| id | BIGINT | — | AS | Surrogate primary key. |  |
| name | VARCHAR(200) | NO | — | Tenant display name. |  |
| slug | VARCHAR(200) | NO | — | Canonical slug (unique per tenant). |  |
| slug_ci | TEXT | — | — | Lowercase slug used for case-insensitive uniqueness. |  |
| status | TEXT | NO | 'active' | Tenant status. | enum: active, suspended, deleted |
| updated_at | TIMESTAMPTZ(6) | NO | CURRENT_TIMESTAMP(6) | Last update timestamp (UTC). |  |
| version | INTEGER | NO | 0 | Optimistic locking version counter. |  |
| deleted_at | TIMESTAMPTZ(6) | YES | — | Soft-delete timestamp. |  |
| is_live | BOOLEAN | YES | — |  |  |