# SPA SAP Project ETL: RDBMS model for SAP Procurement modules to import/export data originally coming from SAP
- Creation of ETL Area (ETL TBLs and prod TBLs in SQL Server)
- ETL for data-typing/casting (Date/String/Numbers to set strong types on data originally as CHAR/TEXT)
- ETL to armonize the the PO/ITEM formatv(Format of data with 0-leading, according to SAP format etc...)
- ETL to implement de-duplication based on MD5 hashing of surrogate columns, which were the most frequent aggregated columns queried
- Creation of fast index for join based on hashes (MD5, with collision-evaluation: Bynary(16) to save MD5 128 bits HASH; for a 2n algorithm, your probably of a random collision is between any two items is 50% once you generate 2(n/2) outputs, following Birthday Attack principles -> 50% of collision in  (2 to 64) 18446744073709551616 lines 8-P)
- Fast BCP Export/Import batching process via C#

@Thanks for the support of one collaborator (Pedro J.M.(https://github.com/JPMorand), my student :), who helped me to complete writing some of the TSQL procedures for de-duplication)

