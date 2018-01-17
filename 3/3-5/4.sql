SELECT
  c1.CategoryName AS カテゴリ名1
, c2.CategoryName AS カテゴリ名2
FROM
  Categories AS c1
    JOIN
  Categories AS c2
    ON c1.CategoryID < c2.CategoryID
;

-- 組み合わせでJOINしたいときに < とする
