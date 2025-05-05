-- DB作成
CREATE DATABASE sample_db;
-- 作成したDBに接続
\c sample_db;
-- テーブル作成
DROP TABLE IF EXISTS book;

-- ID用シーケンス作成
CREATE SEQUENCE book_id_seq START 1;


-- テーブル作成
CREATE TABLE IF NOT EXISTS book
(
    id integer DEFAULT nextval('book_id_seq') NOT NULL,
    name character varying(100) NOT NULL,
    status integer NOT NULL DEFAULT 0,
    create_date timestamp without time zone DEFAULT now(),
    create_user character varying(100),
    update_date timestamp without time zone DEFAULT now(),
    update_user character varying(100),
    CONSTRAINT book_primary_key PRIMARY KEY (id)
);

-- サンブルデータの登録
INSERT INTO book (id, name) VALUES(nextval('book_id_seq'), 'sample_book_01');
INSERT INTO book (id, name) VALUES(nextval('book_id_seq'), 'sample_book_02');
INSERT INTO book (id, name) VALUES(nextval('book_id_seq'), 'sample_book_03');