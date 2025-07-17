@@ .. @@
 ALTER TABLE products 
-  ADD CONSTRAINT products_precio_check 
-  CHECK (precio >= 0::numeric);
+  DROP CONSTRAINT IF EXISTS products_precio_check;

+ALTER TABLE products 
+  ADD CONSTRAINT products_precio_check 
+  CHECK (precio >= 0::numeric);

+-- Hacer campos opcionales
+ALTER TABLE products 
+  ALTER COLUMN Medida DROP NOT NULL;

+ALTER TABLE products 
+  ALTER COLUMN rendimiento_M2 DROP NOT NULL;

+ALTER TABLE products 
+  ALTER COLUMN precio_M2 DROP NOT NULL;