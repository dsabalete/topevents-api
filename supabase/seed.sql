DROP TABLE IF EXISTS "public"."events";

CREATE TABLE "public"."events" (
  id bigint GENERATED BY DEFAULT AS IDENTITY NOT NULL,
  created_at timestamp with time zone NOT NULL DEFAULT now(),
  name text NULL,
  image text NULL,
  link text NULL,
  archived boolean DEFAULT false,
  CONSTRAINT Events_pkey PRIMARY KEY (id),
  CONSTRAINT Events_id_key UNIQUE (id)
);


INSERT INTO "public"."events" 
    ("created_at", "name", "image", "link") 
VALUES 
    ('2025-03-14 14:01:30.888782+00', 'jaws', 'https://i.pinimg.com/736x/24/77/7c/24777cfc49b52bbca66d31d02a33febb.jpg', 'https://example.com/poster1'), 
    ('2025-03-14 14:02:23.091524+00', 'whiplash', 'https://i.pinimg.com/736x/35/34/35/35343511452bd9924040c20884330a07.jpg', 'https://example.com/poster2'), 
    ('2025-03-14 14:02:46.927557+00', 'back to the future', 'https://i.pinimg.com/736x/3e/83/61/3e83618c60fcb48a2e0d69b7e3f6d65a.jpg', 'https://example.com/poster3'), 
    ('2025-03-14 14:03:32.452752+00', 'kill bill', 'https://i.pinimg.com/736x/28/ef/a0/28efa0b5a03dc06c611c7954f3ffa6c9.jpg', 'https://example.com/poster4'), 
    ('2025-03-14 14:03:56.750836+00', 'taxi driver', 'https://www.orsonandwelles.co.uk/cdn/shop/products/Taxi-Driver-1976-US-1-Sheet_600x.jpg', 'https://en.wikipedia.org/wiki/Taxi_Driver'),
    ('2025-03-14 14:03:56.750836+00', "rocky", "https://cdn.europosters.eu/image/750webp/167759.webp", "https://en.wikipedia.org/wiki/Rocky");
    
CREATE POLICY "Enable read access for all users" ON "public"."events" 
AS PERMISSIVE FOR SELECT 
TO public 
USING (true);
