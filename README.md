# 🎧 Spotify Streams Analysis (SQL + Power BI)

## 📌 Project Overview

This project analyzes Spotify Top 50 songs data for 2025.
The objective was to explore streaming trends, identify top-performing songs and artists, and understand genre distribution.

The project demonstrates a complete **end-to-end data analysis workflow**, combining SQL for data preparation and Power BI for interactive visualization.

---

## ⚙️ Data Analysis with SQL

In the first stage, data was explored and analyzed using SQL queries.

### Key analyses included:

* Top 10 most streamed songs
* Total streams by artist
* Number of songs per artist
* Average streams across all songs
* Relationship between number of songs and total streams

### Example SQL Queries

```sql
-- TOP 10 MOST STREAMED SONGS (2025)
SELECT 
    song_title,
    artist,
    streams_2025_billions AS streams
FROM top50songs2025
ORDER BY streams DESC
LIMIT 10;

-- TOP ARTISTS BY TOTAL STREAMS
SELECT 
    artist,
    SUM(streams_2025_billions) AS total_streams
FROM top50songs2025
GROUP BY artist
ORDER BY total_streams DESC;

-- IMPACT OF STREAMS ON RANKING PRESENCE
SELECT 
    artist,
    COUNT(*) as songs_in_top50,
    SUM(streams_2025_billions) as total_streams
FROM top50songs2025
GROUP BY artist
ORDER BY total_streams DESC;
```

### 📸 SQL Results

![Top Songs](/SQL/top_songs.png)
![Top Artists](/SQL/top_artist.png)
![Artist Impact](/SQL/Impact.png)

---

## 📊 Dashboard (Power BI)

An interactive dashboard was created to visualize the data and enable dynamic exploration.

### Key Features:

* **Total Streams (Billions)**
* **Average Streams per Song**
* **Number of Songs**
* **Top 10 Most Streamed Songs**
* **Streams Distribution by Genre**
* **Streams Distribution by Artist**
* **Interactive Artist Filter (Slicer)**

The dashboard allows users to explore how metrics change based on selected artists or songs.

## 🔗 Live Dashboard

👉 [View Interactive Dashboard](https://app.powerbi.com/view?r=eyJrIjoiOWY2MmNjNGMtNWUyZi00MmMxLWE0NWYtZTI5NDczNjJiYWU5IiwidCI6ImU4MGE2MjdmLWVmOTQtNGFhOS04MmQ2LWM3ZWM5Y2ZjYTMyNCIsImMiOjh9)

---

## 📱 Mobile Version

A simplified mobile layout was also created to ensure readability and usability on smaller screens.

---

## 🔍 Key Insights

* **Pop music dominates streaming**, accounting for the largest share of total plays (~43%+)
* **Streaming is highly concentrated**, with top songs generating a significant portion of total streams
* **A small group of artists drives most engagement**, indicating strong popularity concentration
* **Collaborations significantly impact total streams**, increasing overall reach

---

## 🛠 Tools & Technologies

* **SQL** – data analysis and aggregation
* **Power BI** – data visualization and dashboard design

---

## 📁 Project Structure

```id="9k2q1m"
📁 spotify-streams-analysis
 ├── 📁 PowerBI
 │    └── dashboard.png
 ├── 📁 SQL
 │    ├── Dataset covers Spotify Wrapped 2025 data.sql
 │    ├── Impact.png
 │    ├── top_artist.png
 │    └── top_songs.png
 └── README.md
```

---

## 📸 Dashboard Preview

![Dashboard](/PowerBI/dashboard.png)

---

## 💡 Summary

This project demonstrates:

* Data exploration and aggregation using SQL
* Analytical thinking through insights
* Building interactive dashboards in Power BI
* Creating a complete data analysis workflow from raw data to visualization

