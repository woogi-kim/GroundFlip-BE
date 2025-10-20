ALTER TABLE pixel
    ADD COLUMN geohash VARCHAR(12) NOT NULL,
    ADD INDEX idx_geohash (geohash(12));

UPDATE pixel
SET geohash = ST_GeoHash(coordinate, 8);