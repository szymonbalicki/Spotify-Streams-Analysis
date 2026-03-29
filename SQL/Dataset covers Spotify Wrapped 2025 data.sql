-- ========================================
-- 1. TOP 10 MOST STREAMED SONGS (2025)
-- ========================================

SELECT 
    song_title as song,
    artist,
    streams_2025_billions AS streams_billions
FROM top50songs2025
ORDER BY streams_billions DESC
LIMIT 10;


-- ========================================
-- 2. TOP ARTISTS BY TOTAL STREAMS (2025)
-- ========================================

SELECT 
    artist,
    SUM(streams_2025_billions) AS total_streams_billions
FROM top50songs2025
GROUP BY artist
ORDER BY total_streams_billions DESC;


-- ========================================
-- 3. NUMBER OF SONGS PER ARTIST (2025)
-- ========================================

SELECT 
    artist,
    COUNT(*) AS number_of_songs
FROM top50songs2025
GROUP BY artist
ORDER BY number_of_songs DESC;


-- ========================================
-- 4. AVERAGE STREAMS PER SONG (2025)
-- ========================================

SELECT 
    AVG(streams_2025_billions) AS avg_streams
FROM top50songs2025;

-- ========================================
-- 5. IMPACT OF STREAMS ON RANKING PRESENCE (2025)
-- ========================================

SELECT 
    artist,
    COUNT(*) as "songs in top50",
    SUM(streams_2025_billions) as "total streams billions"
FROM top50songs2025
GROUP BY artist
ORDER BY "total streams billions" DESC;