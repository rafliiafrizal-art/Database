CREATE TABLE dosen (
    id_doesn SERIAL PRIMARY KEY,
    nama_dosen VARCHAR(100) NOT NULL,
    spesialisasi VARCHAR(50)
);

CREATE TABLE mahasiswa (
    nim VARCHAR(15) PRIMARY KEY,
    nama_mahasiswa VARCHAR(100) NOT NULL,
    jurusan VARCHAR(50),
    id_dosen_wali INT REFERENCES dosen(id_dosen)
);

INSERT INTO dosen (nama_dosen, spesialisasi) VALUES ('Budi Santoso', 'Inustrial Engginering');
INSERT INTO mahasiswa (nim, nama_mahasiswa, jurusan, id_dosen_wali);
VALUES ('2026001', 'rafli', 'Industrial Engginering', 1);

SELECT mahasiswa.nama_mahasiswa, dosen.nama_dosen
FROM mahasiswa
JOIN dosen ON mahasiswa.id_dosen_wali = dosen.id_dosen;