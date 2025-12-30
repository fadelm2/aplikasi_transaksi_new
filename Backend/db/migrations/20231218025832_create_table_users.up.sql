CREATE TABLE users (
                       id           VARCHAR(100) NOT NULL PRIMARY KEY,
                       role_id      INT NOT NULL,
                       username     VARCHAR(255) NOT NULL,
                       email        VARCHAR(255) NOT NULL,
                       password     VARCHAR(255) NOT NULL,
                       company_name VARCHAR(255) NOT NULL,
                       created_at TIMESTAMP NULL DEFAULT NULL,
                       updated_at TIMESTAMP NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
) ENGINE=InnoDB;

INSERT INTO users
(id, role_id, username, email, password, company_name, created_at, updated_at)
VALUES
    ('noc1', 1, 'admin_user', 'admin@greenet.com',
     '$2a$10$Z4MR5mDWzrDxVCCasdu5VeTf5DbYcsyMb/aMeP4BlDFoOeLO2.R9y',
     'GREENET', NOW(), NOW()),

    ('admin1', 1, 'admin_user', 'user@greenet.com',
     '$2a$10$Z4MR5mDWzrDxVCCasdu5VeTf5DbYcsyMb/aMeP4BlDFoOeLO2.R9y',
     'GREENET', NOW(), NOW()),

    ('teknisi1', 3, 'teknisi', 'mod@greenet.com',
     '$2a$10$Z4MR5mDWzrDxVCCasdu5VeTf5DbYcsyMb/aMeP4BlDFoOeLO2.R9y',
     'GREENET', NOW(), NOW()),

    ('driver1', 4, 'driver', 'mod@greenet.com',
     '$2a$10$Z4MR5mDWzrDxVCCasdu5VeTf5DbYcsyMb/aMeP4BlDFoOeLO2.R9y',
     'GREENET', NOW(), NOW()),
    ('karyawan', 5, 'karyawan', 'mod@greenet.com',
     '$2a$10$Z4MR5mDWzrDxVCCasdu5VeTf5DbYcsyMb/aMeP4BlDFoOeLO2.R9y',
     'GREENET', NOW(), NOW()),

    ('superadmin', 99, 'superadmin', 'user@greenet.com',
     '$2a$10$Z4MR5mDWzrDxVCCasdu5VeTf5DbYcsyMb/aMeP4BlDFoOeLO2.R9y',
     'GREENET', NOW(), NOW()),

    ('customers', 2, 'admin_user', 'user@greenet.com',
     '$2a$10$Z4MR5mDWzrDxVCCasdu5VeTf5DbYcsyMb/aMeP4BlDFoOeLO2.R9y',
     'GREENET', NOW(), NOW());
