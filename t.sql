CREATE TABLE t (
  a INTEGER PRIMARY KEY,
  b VARCHAR(25),
  c INTEGER REFERENCES t(a)
) ;