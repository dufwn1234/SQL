SELECT a.artist_id,a.name
  FROM artists as a
  LEFT OUTER join artworks_artists as b ON a.artist_id = b.artist_id
  where a.death_year IS NOT NULL AND b.artwork_id IS NULL