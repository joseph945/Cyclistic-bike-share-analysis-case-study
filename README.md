# Cyclistic-bike-share-analysis-case-study

# Divvy Bike Sharing Analysis (2018)

## Project Overview
This project analyzes Divvy bike trip data (~6 million records) to understand user behavior and identify opportunities to increase subscription rates.

## Objective
Compare casual riders and subscribers to uncover behavioral patterns and provide data-driven business recommendations.

## Tools Used
- SQL (Data Cleaning & Transformation)
- Tableau (Data Visualization)
- Excel (Initial exploration)

---

## Data Cleaning Process (Challenges Faced)

During this project, I worked with multiple large datasets that required significant preprocessing:

- Combined quarterly datasets into a single table
- Resolved column mismatches across files
- Handled NULL and inconsistent values
- Removed duplicate records (~3M duplicates identified)
- Managed large data volume (~6M+ rows) using chunk processing
- Overcame MySQL limitations (timeouts, secure-file-priv restrictions)

---

## Key Insights

### 1. User Type Distribution
Subscribers ride significantly more than casual users (6x higher).

**Insight:**
The system heavily depends on subscribers, while casual users represent a strong conversion opportunity.


<img width="221" height="249" alt="image" src="https://github.com/user-attachments/assets/4d6539dc-422d-4ab8-afc8-afdcadc9a3d7" />
<img width="287" height="324" alt="image" src="https://github.com/user-attachments/assets/8ea3e7a0-e4e4-40a8-acc3-9cfa9f6bc928" />




---

### 2. Peak Months
Ride activity is highest during summer months (especially July).

**Insight:**
Usage increases in warmer weather, indicating seasonal demand.



---

### 3. Peak Days
Ride activity peaks midweek, especially around Wednesday.

**Insight:**
This indicates strong commuting behavior, with subscribers using bikes for work-related travel.


<img width="985" height="770" alt="Screenshot 2026-04-06 111638" src="https://github.com/user-attachments/assets/35f551a2-fb91-4cbc-9788-50fe78c7dd40" />

---

### 4. Peak Hours
Peak usage occurs between **17:00–19:00**, with **17:00 being the highest**.

**Insight:**
Clear after-work commuting pattern, confirming weekday routine usage rather than leisure.


<img width="1221" height="775" alt="Screenshot 2026-04-06 111628" src="https://github.com/user-attachments/assets/26cfd40f-c3ca-4eb5-8b3d-a01058db2bc9" />


---

### 5. Ride Duration
Casual riders take significantly longer trips than subscribers.

**Insight:**
Casual usage is leisure-oriented, while subscribers use bikes for short, routine trips.


<img width="415" height="771" alt="Screenshot 2026-04-06 111649" src="https://github.com/user-attachments/assets/230b452b-c127-4ba5-abfd-8057d2b7aa9c" />


---

### 6. Gender Distribution
Male users represent approximately **2/3 of total riders**.

**Insight:**
This highlights a gender imbalance and an opportunity to expand the female user base.


<img width="485" height="762" alt="Screenshot 2026-04-06 111716" src="https://github.com/user-attachments/assets/27239c4d-6956-4921-88ec-dfb89c0199e2" />


---

### 7. Weekend Activity
Trips are fewer during weekends compared to weekdays.

**Insight:**
The system is heavily commuter-focused, with potential to grow leisure usage.

---

## Business Recommendations

### 1. Convert Casual Riders to Subscribers
- Offer discounts after 3–5 rides
- Promote subscriptions during peak hours (5–7 PM)

---

### 2. Target Commuters More Aggressively
- Focus marketing on office areas
- Target weekday and evening usage patterns

---

### 3. Increase Weekend Engagement
- Launch weekend promotions
- Encourage leisure riding

---

### 4. Address Gender Gap
- Create campaigns targeting female riders
- Improve safety perception and accessibility messaging

---

## Dashboard

<img width="1196" height="801" alt="Screenshot 2026-04-06 105221" src="https://github.com/user-attachments/assets/3279ed5e-71b4-4331-99ff-347b7196fff0" />


---

## Key Takeaway

This analysis shows that the business is driven by commuter behavior, with strong opportunities to:
- Convert casual riders into subscribers
- Expand into underrepresented segments (especially female users)
- Increase weekend and leisure engagement

---

## How I Present This

"I found that subscribers account for roughly six times more rides than casual users, with peak usage occurring during weekday evenings. This indicates strong commuting behavior and suggests that targeting casual riders during these peak hours could significantly improve subscription conversion."
