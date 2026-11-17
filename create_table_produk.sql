create table produk(
  id serial primary key,
  nama varchar(50) not null,
  harga INT check (harga>0),
  stok INT DEFAULT 0 check (stok>=0) not null,
  kategori_id INT,
    FOREIGN KEY (kategori_id) REFERENCES kategori(id)
)
