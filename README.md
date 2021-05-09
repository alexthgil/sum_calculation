# Example of data processing

Task: calculate sum of counters.

Variant 1: Objects contain counter. We iterate objects and accumulating sum.
Variant 2: Objects contain pointer on memory cell. To calculate sum we should pass array pointer and objects count to calculation function.

Testing:
 processing...
 Variant 1: sum of separate objects: 65432165 duration: 0.769698
 Variant 2: sum of table: 65432165 duration: 0.153360

Second variant (Variant 2) works faster because we use CPU cache more optimal. When CPU asks next element for calculation cache already contains data - there is no miss in cache-line.