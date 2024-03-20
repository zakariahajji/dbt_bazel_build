WITH campaign_base AS (
    SELECT
        c.campaign_id,
        c.platform,
        c.campaign_type,
        c.account_id,
        c.client_id,
        c.target_audience,
        c.budget_currency,
        c.start_date,
        c.end_date,
        c.budget_amount,
        c.spend_amount,
        cp.impressions,
        cp.clicks,
        cp.conversions,
        cp.spend,
        cp.roi,
        ai.engagement_score
    FROM campaigns c
    JOIN campaign_performance cp ON c.campaign_id = cp.campaign_id
    LEFT JOIN audience_indexes ai ON c.target_audience = ai.target_audience AND c.platform = ai.platform
)

SELECT *
FROM campaign_base;
