[1mdiff --git a/HLD/4.saga_strangler_cqrs_microservices_design_pattern.txt b/HLD/4.saga_strangler_cqrs_microservices_design_pattern.txt[m
[1mindex 5db8398..8c0b157 100644[m
[1m--- a/HLD/4.saga_strangler_cqrs_microservices_design_pattern.txt[m
[1m+++ b/HLD/4.saga_strangler_cqrs_microservices_design_pattern.txt[m
[36m@@ -98,11 +98,19 @@[m [mCommand = Operations that change data (Create, Update, Delete).[m
 Query = Operations that read data (Read only).[m
 [m
 Instead of using a single model for both reading and writing, CQRS splits them into two separate models.[m
[31m-[m
[32m+[m[32m----------------------------------[m
 Why use CQRS in Microservices?[m
 Read and Write workloads have different performance, scalability, and security needs.[m
 [m
 Helps to optimize queries without affecting writes and vice versa.[m
 [m
 Reduces complexity in large-scale systems with heavy reads and writes.[m
[31m- [m
[32m+[m[32m -------------------[m
[32m+[m[32mCQRS Basic Flow:[m
[32m+[m[32mCommand Model → Handles data modification (POST, PUT, DELETE).[m
[32m+[m
[32m+[m[32mQuery Model → Handles data retrieval (GET).[m
[32m+[m
[32m+[m[32mThe models can even have separate databases (optional).[m
[32m+[m
[32m+[m[32mUsually combined with Event Sourcing to store state changes as a series of events.[m
