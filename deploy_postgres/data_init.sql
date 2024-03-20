CREATE TABLE campaigns (
    campaign_id INT,
    platform VARCHAR,
    campaign_type VARCHAR,
    account_id INT,
    client_id INT,
    target_audience VARCHAR,
    budget_currency VARCHAR,
    start_date TIMESTAMP,
    end_date TIMESTAMP,
    budget_amount FLOAT,
    spend_amount FLOAT
);


CREATE TABLE ad_transactions (
    transaction_id INT,
    platform VARCHAR,
    campaign_type VARCHAR,
    account_id INT,
    client_id INT,
    from_account VARCHAR,
    to_account VARCHAR,
    executed_at TIMESTAMP,
    impressions INT,
    cost_per_impression FLOAT
);


CREATE TABLE audience_indexes (
    target_audience VARCHAR,
    platform VARCHAR,
    engagement_score FLOAT,
    updated_at TIMESTAMP
);



CREATE TABLE campaign_performance (
    campaign_id INT,
    impressions INT,
    clicks INT,
    conversions INT,
    spend FLOAT,
    roi FLOAT
);


-- Insert into Campaigns
INSERT INTO campaigns (campaign_id, platform, campaign_type, account_id, client_id, target_audience, budget_currency, start_date, end_date, budget_amount, spend_amount) VALUES
(1, 'Google', 'CPC', 201, 3001, 'Young Adults', 'USD', '2023-01-01 00:00:00', '2023-01-31 23:59:59', 10000.00, 9500.00),
(2, 'Facebook', 'CPM', 202, 3002, 'Professionals', 'USD', '2023-02-01 00:00:00', '2023-02-28 23:59:59', 5000.00, 4870.00);

-- Insert into Ad_Transactions
INSERT INTO ad_transactions (transaction_id, platform, campaign_type, account_id, client_id, from_account, to_account, executed_at, impressions, cost_per_impression) VALUES
(1, 'Google', 'CPC', 201, 3001, 'AccountA', 'AccountB', '2023-01-15 10:00:00', 5000, 1.90),
(2, 'Facebook', 'CPM', 202, 3002, 'AccountC', 'AccountD', '2023-02-15 11:00:00', 10000, 0.48);

-- Insert into Audience_Indexes
INSERT INTO audience_indexes (target_audience, platform, engagement_score, updated_at) VALUES
('Young Adults', 'Google', 75.0, '2023-01-15 12:00:00'),
('Professionals', 'Facebook', 82.0, '2023-02-15 13:00:00');

-- Insert into Campaign_Performance
INSERT INTO campaign_performance (campaign_id, impressions, clicks, conversions, spend, roi) VALUES
(1, 5000, 500, 50, 9500.00, 1.2),
(2, 10000, 800, 60, 4870.00, 1.5);
