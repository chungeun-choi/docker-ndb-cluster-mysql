# Extra Data (NDB Infomations) in rows event 

CREATE TABLE bdteste.t (
    p INT PRIMARY KEY,
    c INT,
    UNIQUE KEY u (c)
)   ENGINE NDB;

INSERT INTO bdteste.t
    VALUES (1,1), (2,2), (3,3), (4,4), (5,5);


# Extra Data (Partition infomation) in rows event 

CREATE TABLE test (id INTEGER) \
            PARTITION BY RANGE (id) ( \
                PARTITION p0 VALUES LESS THAN (1),   \
                PARTITION p1 VALUES LESS THAN (2),   \
                PARTITION p2 VALUES LESS THAN (3),   \
                PARTITION p3 VALUES LESS THAN (4),   \
                PARTITION p4 VALUES LESS THAN (5)    \
            );


INSERT INTO test (id) VALUES(3)

UPDATE test set id = 1 WHERE id = 3;