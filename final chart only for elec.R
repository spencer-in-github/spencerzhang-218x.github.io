final chart only for elec

pge_final <-
+     pge_elec %>% 
+     filter(
+         CUSTOMERCLASS %in% 
+             c(
+                 "Elec- Residential",
+                 "Elec- Commercial"
+             )
+     ) %>% 
+     select(
+         -c(COMBINED, AVERAGEKWH)
+     ) %>% 
+     group_by(MONTH, YEAR, CUSTOMERCLASS) %>% 
+     summarize(
+         TOTALKWH = 
+             sum(
+                 TOTALKWH, 
+                 na.rm = T
+             ),
+         TOTALCUSTOMERS =
+             sum(
+                 TOTALCUSTOMERS,
+                 na.rm = T
+             )
+     ) %>% 
+     mutate(
+         AVERAGEKWH =
+             TOTALKWH/TOTALCUSTOMERS
+     )