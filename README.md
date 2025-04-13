# Marketing Campaign Performance Analysis

### Project Overview
For this analysis, the dataset containing marketing campaign performance metrics was reviewed. Data cleaning and preprocessing were crucial to ensure data integrity and successful integration into PostgreSQL.

## Data Sources
The primary dataset used for this analysis is the "marketing_data.csv", containing information about marketing campaigns made by companies.

### Tools

- **Excel** - Data Cleaning
- **PostgreSQL** - Data Analysis

### Data Cleaning/Preparation

The following steps were taken to prepare the dataset:

**1. Formatted the Date Column:**
 The original date format was incompatible with PostgreSQL, so it was reformatted using Excel to ensure smooth integration upon import.

**2. Converted Acquisition Cost to Currency Format:**
 The acquisition cost column had inconsistent formatting. To standardize it, the data was converted into a proper currency format before importing into PostgreSQL. This step was necessary for maintaining consistency and ensuring accurate calculations.

**3. Created a New Database and Table:**
 A new PostgreSQL database was created specifically for this analysis. Using SQL queries, a structured table named campaigndata was created, defining appropriate data types for each column to optimize query performance and ensure data integrity.


### Exploratory Data Analysis

Using SQL queries, several key metrics were calculated to gain actionable insights from the data. The main areas of focus were:

- Total Impressions by Campaign
- Campaign with Highest ROI
- Top Locations by Impressions
- Average Engagement Score by Target Audience
- Overall Click-Through Rate (CTR)
- Most Cost-Effective Campaign
- Campaigns with CTR Above Threshold
- Channel Ranking by Total Conversions

For each metric, SQL queries were constructed to filter, summarize, and aggregate the data, allowing for the identification of top-performing campaigns and key insights.

### Data Analysis
You can check out the [Full Report Here.](https://drive.google.com/file/d/1gX-Sv4j7Fg-WNFRulVFTY_quQWuj81WU/view?usp=sharing)
