# SPA SAP Project ETL: RDBMS model for SAP Procurement modules to import/export data comning from SAP
- Creation of ETL Area (ETL TBLs and prod TBLs)
- ETL for data-typing/Casting (Date/String/Numbers)
- ETL for data armonization (Format of data with 0-leading etc...)
- ETL for deduplication based on MD5 hashing surrogate columns creation
- Creation of fast index for join based on hashes (MD5, with collision-evaluation: Bynary(16) to save MD5 128 bits HASH; for a 2n algorithm, your probably of a random collision is between any two items is 50% once you generate 2(n/2) outputs, following Birthday Attack principles)
- Fast BCP export

@Thanks for the support of one collaborator (Pedro J.M., my student :), who helped me to complete writing some of the TSQL procedures for de-duplication)

