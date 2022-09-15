SELECT p.Name Product, c.Name Category
FROM products p, categories c, productscategories pc
WHERE pc.categoryid = c.id AND pc.productid = p.id
UNION
SELECT p1.Name Product, NULL Category
FROM products p1, categories c1, productscategories pc1
WHERE p1.id not IN (SELECT productid FROM productscategories);