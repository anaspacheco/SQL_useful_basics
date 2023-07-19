-- primary keys can never be null
-- default: if not assigned, it'll be assigned a default name 
-- AUTO_INCREMENT: will automatically increment for each new cat insreted into the table

-- aliases: AS 

-- STRING FUNCTIONS https://dev.mysql.com/doc/refman/8.0/en/string-functions.html

-- DATA TYPES:
-- TIME: hh: mm: dd
-- DATE: YYYY-MM-DD

-- CURTIME(), CURDATE(), NOW();

-- SELECT AVG(pages), COUNT(*) FROM books GROUP BY released_year;
/*
CREATE TABLE captions2 (
  text VARCHAR(150),
  created_at TIMESTAMP default CURRENT_TIMESTAMP,
  updated_at TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);
*/

/*
-- They both store datetime information, but there's a difference in the range, 
-- TIMESTAMP has a smaller range. TIMESTAMP also takes up less space. 
-- TIMESTAMP is used for things like meta-data about when something is created
-- or updated.

CREATE TABLE houses (
  purchase_price INT NOT NULL,
  sale_price INT NOT NULL,
  CONSTRAINT sprice_gt_pprice CHECK(sale_price >= purchase_price)
);

To change table: ALTER TABLE;
*/

-- INNER JOIN: you only see the overlap between A and B 
-- LEFT JOIN: you get everything from A and the overlap between A and B
-- RIGHT JOIN: you get everything from B and the overlap between A and B 
-- OUTER JOIN: you get everything NOT in A and B

-- CREATE OR REPLACE VIEW full_reviews AS
-- The ROLLUP option allows you to include extra rows that represent the subtotals,
-- essentially creating a subtotal for each row


 





 
