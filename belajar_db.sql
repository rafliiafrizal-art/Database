CREATE TABLE dosen (
    id_dosen SERIAL PRIMARY KEY,
    nama_dosen VARCHAR(100) NOT NULL,
    spesialis VARCHAR(50)
);

CREATE TABLE mahasiswa (
    nim VARCHAR(15) PRIMARY KEY,
    nama_mahasiswa VARCHAR(100) NOT NULL,
    jurusan VARCHAR(50),
    id_dosen_wali INT REFERENCES dosen(id_dosen)
);

INSERT INTO dosen (nama_dosen, spesialis) VALUES ('Budi santoso', 'Industrial Engineering');
INSERT INTO dosen (nim, nama_mahasiswa, jurusan, id_dosen_wali) VALUES ('2026001', 'Rafli', 'Indsutrial Engineering', 1);

SELECT mahasiswa.nama_mahasiswa, dosen.nama_dosen FROM 
JOIN dosen ON mahasiswa.id_dosen_wali = dosen.id_dosen;