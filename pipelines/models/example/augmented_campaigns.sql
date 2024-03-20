WITH transaction_details AS (
    SELECT
        at.campaign_id,
        SUM(at.impressions) AS total_impressions,
        AVG(at.cost_per_impression) AS avg_cpi
    FROM ad_transactions at
    GROUP BY at.campaign_id
),

augmented_data AS (
    SELECT
        stg.*,
        td.total_impressions,
        td.avg_cpi
    FROM {{ ref('stg_campaigns') }} stg
    LEFT JOIN transaction_details td ON stg.campaign_id = td.campaign_id
)

SELECT
    campaign_id,
    platform,
    campaign_type,
    account_id,
    client_id,
    target_audience,
    budget_currency,
    start_date,
    end_date,
    budget_amount,
    spend_amount,
    impressions,
    clicks,
    conversions,
    spend,
    roi,
    engagement_score,
    total_impressions,
    avg_cpi
FROM augmented_data
-- Example manipulation to increase data volume:
CROSS JOIN (SELECT generate_series(1, 2) AS expansion_factor) AS expander
