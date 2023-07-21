--Return all the track names that have a song length longer than the average song length.Return the Name and Millisecond
--for each track.Order by the song with the longest songs listed first.
SELECT name, milliseconds
from track
WHERE milliseconds > (
SELECT AVG(milliseconds) AS avg_track_length
FROM track)
ORDER BY milliseconds DESC;