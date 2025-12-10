# tenants

Top-level tenant/organization records used for multi-tenancy.

## Columns
| Column | Type | Null | Default | Description |
| --- | --- | --- | --- | --- |
| created_at | mysql: DATETIME(6) / postgres: TIMESTAMPTZ(6) | NO | CURRENT_TIMESTAMP(6) | Creation timestamp (UTC). |
| deleted_at | mysql: DATETIME(6) / postgres: TIMESTAMPTZ(6) | YES |  | Soft-delete timestamp. |
| id | BIGINT | NO |  | Surrogate primary key. |
| name | VARCHAR(200) | NO |  | Tenant display name. |
| slug | VARCHAR(200) | NO |  | Canonical slug (unique per tenant). |
| slug_ci | mysql: VARCHAR(200) / postgres: TEXT | YES |  | Lowercase slug used for case-insensitive uniqueness. |
| status | mysql: ENUM('active','suspended','deleted') / postgres: TEXT | NO | active | Tenant status. (enum: active, suspended, deleted) |
| updated_at | mysql: DATETIME(6) / postgres: TIMESTAMPTZ(6) | NO | CURRENT_TIMESTAMP(6) | Last update timestamp (UTC). |
| version | mysql: INT / postgres: INTEGER | NO | 0 | Optimistic locking version counter. |

## Engine Details

### mysql

Unique keys:
| Name | Columns |
| --- | --- |
| ux_tenants_slug_live_ci | slug_ci, is_live |

Indexes:
| Name | Columns | SQL |
| --- | --- | --- |
| ux_tenants_slug_live_ci | slug_ci,is_live | CREATE UNIQUE INDEX ux_tenants_slug_live_ci ON tenants (slug_ci, is_live) |

### postgres

Unique keys:
| Name | Columns |
| --- | --- |
| ux_tenants_slug_live_ci | slug_ci, is_live |

Indexes:
| Name | Columns | SQL |
| --- | --- | --- |
| ux_tenants_slug_live_ci | slug_ci,is_live | CREATE UNIQUE INDEX IF NOT EXISTS ux_tenants_slug_live_ci ON tenants (slug_ci, is_live) |

## Engine differences

## Views
| View | Engine | Flags | File |
| --- | --- | --- | --- |
| vw_tenants | mysql | algorithm=MERGE, security=INVOKER | [../schema/040_views.mysql.sql](../schema/040_views.mysql.sql) |
| vw_tenants | postgres |  | [../schema/040_views.postgres.sql](../schema/040_views.postgres.sql) |
