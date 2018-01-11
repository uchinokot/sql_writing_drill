SELECT
  p.PrefecturalName
, SUM(
        CASE
          WHEN c.PrefecturalID IS NULL THEN 0
          ELSE 1
        END
      ) AS 顧客数
FROM
  Prefecturals AS p
    LEFT OUTER JOIN
  Customers AS c
    ON p.PrefecturalID = c.PrefecturalID
GROUP BY
  p.PrefecturalID
;

-- Prefecturals AS p
--   LEFT OUTER JOIN
-- Customers AS c
--   ON p.PrefecturalID = c.PrefecturalID
-- 上記の順番を前後してなにが変化するのかを理解していない
