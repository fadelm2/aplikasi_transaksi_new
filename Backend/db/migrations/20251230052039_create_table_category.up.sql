CREATE TABLE categories (
                            id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
                            name TEXT NOT NULL,
                            created_at TIMESTAMP NULL DEFAULT NULL,
                            updated_at TIMESTAMP NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
                            deleted_at TIMESTAMP NULL DEFAULT NULL,
                            UNIQUE KEY uni_categories_name (name(255)),
                            KEY idx_categories_deleted_at (deleted_at)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
