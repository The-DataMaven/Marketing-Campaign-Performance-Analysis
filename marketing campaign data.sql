-- Q1. Calculate Total Impressions for Each Campaign
SELECT 
	campaign_type, 
	SUM(impressions) AS total_impressions
FROM campaigndata
GROUP BY campaign_type
ORDER BY total_impressions DESC;

-- Q2. Identify the Campaign with the Highest ROI
SELECT 
	campaign_id,
	company,
	roi
FROM campaigndata
ORDER BY roi DESC
LIMIT 1;


-- Q3. Find the Top 3 Locations with the Most Impressions
SELECT 
	location,
	SUM(impressions) AS total_impressions
FROM campaigndata
GROUP BY location
ORDER BY total_impressions DESC
LIMIT 3;


-- Q4. Calculate Average Engagement Score by Target Audience
SELECT 
	target_audience,
	AVG(engagement_score) AS avg_engagement_score
FROM campaigndata
GROUP BY target_audience
ORDER BY avg_engagement_score DESC;


-- Q5. Calculate the Overall CTR (Click-Through Rate)
SELECT 
	ROUND((SUM(clicks)* 100.0) / SUM(impressions), 2) AS overallctr
FROM campaigndata


-- Q6. Find the Most Cost-Effective Campaign
SELECT
	campaign_type,
	company,
	(SUM(acquisition_cost) / NULLIF(SUM(clicks), 0)) AS cost_per_conversion
FROM campaigndata
GROUP BY campaign_type, company
ORDER BY cost_per_conversion ASC
LIMIT 1;


-- Q7. Find Campaigns with CTR Above a Threshold
SELECT
	campaign_type,
	company,
	(clicks * 100.0 / NULLIF (impressions, 0)) AS ctr
FROM campaigndata
WHERE (clicks * 100.0 / NULLIF (impressions, 0)) > 5;

SELECT * FROM campaigndata

-- Q8. Rank Channels by Total Conversions
SELECT 
	channel_used,
	ROUND(SUM(clicks * conversion_rate / 100), 2) AS total_conversions
FROM campaigndata
GROUP BY channel_used
ORDER BY total_conversions DESC;
