SELECT '1-01. HLL_CREATE(4)', IF(CRC32(HLL_CREATE(4)) = 3971697493, 'OK', 'FAIL');
SELECT '1-02. HLL_CREATE(16)', IF(CRC32(HLL_CREATE(16)) = 3617033963, 'OK', 'FAIL');
SELECT '1-03. HLL_CREATE(17)', IF(CRC32(HLL_CREATE(17)) = 2129186253, 'OK', 'FAIL');
SELECT '1-04. HLL_CREATE(20)', IF(CRC32(HLL_CREATE(20)) = 2805525020, 'OK', 'FAIL');
SELECT '1-04. HLL_CREATE(21)', IF(HLL_CREATE(21) IS NULL, 'OK', 'FAIL');
SELECT '1-04. HLL_CREATE(3)', IF(HLL_CREATE(3) IS NULL, 'OK', 'FAIL');
SELECT '1-05. HLL_CREATE(4, ...)', IF(CRC32(HLL_CREATE(4, 'a', 'b', 'c')) = 1787871784, 'OK', 'FAIL');
SELECT '1-06. HLL_CREATE(4, ...)', IF(CRC32(HLL_CREATE(4, 'a', 'b', 'c', 'a', 'b', 'c')) = 1787871784, 'OK', 'FAIL');
SELECT '1-06. HLL_CREATE(4, ...)', IF(CRC32(HLL_CREATE(4, 1, 2, 3, 1, 2, 3)) = 1496289803, 'OK', 'FAIL');
SELECT '1-07. HLL_CREATE(17, ...)', IF(CRC32(HLL_CREATE(17, 'a', 'b', 'c')) = 2173263202, 'OK', 'FAIL');
SELECT '1-08. HLL_CREATE(17, ...)', IF(CRC32(HLL_CREATE(17, 'a', 'b', 'c', 'a', 'b', 'c')) = 2173263202, 'OK', 'FAIL');
SELECT '1-09. HLL_ADD(HLL_CREATE(5), ...)', IF(CRC32(HLL_ADD(HLL_CREATE(4), 'a', 'b', 'c')) = 1787871784, 'OK', 'FAIL');
SELECT '1-10. HLL_ADD(HLL_CREATE(5), ...)', IF(CRC32(HLL_ADD(HLL_CREATE(5), 'a', 'b', 'c', 'a', 'b', 'c')) = 3263172521, 'OK', 'FAIL');
SELECT '1-11. HLL_ADD(HLL_CREATE(5), ...)', IF(CRC32(HLL_ADD(HLL_CREATE(5), 1, 2, 3, 1, 2, 3)) = 2466700816, 'OK', 'FAIL');
SELECT '1-12. HLL_ADD(HLL_CREATE(18), ...)', IF(CRC32(HLL_ADD(HLL_CREATE(18), 'a', 'b', 'c')) = 2805043086, 'OK', 'FAIL');
SELECT '1-13. HLL_ADD(HLL_CREATE(18), ...)', IF(CRC32(HLL_ADD(HLL_CREATE(18), 'a', 'b', 'c', 'a', 'b', 'c')) = 2805043086, 'OK', 'FAIL');
SELECT '1-14. HLL_COUNT(HLL_CREATE(6), ...)', IF(HLL_COUNT(HLL_CREATE(6, 'a', 'b', 'c')) = 3, 'OK', 'FAIL');
SELECT '1-15. HLL_COUNT(HLL_CREATE(7), ...)', IF(HLL_COUNT(HLL_CREATE(7, 1, 2, 3, 1, 2, 3)) = 3, 'OK', 'FAIL');
SELECT '1-16. HLL_COUNT(HLL_CREATE(19), ...)', IF(HLL_COUNT(HLL_CREATE(19, 'a', 'b', 'c', 'a', 'b', 'c')) = 3, 'OK', 'FAIL');
SELECT '1-17. HLL_MERGE()', IF(CRC32(HLL_MERGE(HLL_CREATE(4, 1, 2, 3), HLL_CREATE(4, 1, 2, 3))) = 1496289803, 'OK', 'FAIL');
SELECT '1-18. HLL_MERGE()', IF(CRC32(HLL_MERGE(HLL_CREATE(4, 3), HLL_CREATE(4, 1, 2))) = 1496289803, 'OK', 'FAIL');
SELECT '1-19. HLL_MERGE()', IF(HLL_MERGE(HLL_CREATE(4), HLL_CREATE(5)) IS NULL, 'OK', 'FAIL');
