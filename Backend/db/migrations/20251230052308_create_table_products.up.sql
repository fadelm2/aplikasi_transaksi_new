CREATE TABLE products (
                          id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
                          category_id BIGINT UNSIGNED,
                          name TEXT NOT NULL,
                          price DECIMAL(15,2) NOT NULL,
                          stock BIGINT DEFAULT 0,
                          has_stock BOOLEAN DEFAULT TRUE,
                          image TEXT,
                          created_at TIMESTAMP NULL DEFAULT NULL,
                          updated_at TIMESTAMP NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
                          deleted_at TIMESTAMP NULL DEFAULT NULL,

                          CONSTRAINT fk_categories_products
                              FOREIGN KEY (category_id)
                                  REFERENCES categories(id)
                                  ON UPDATE CASCADE
                                  ON DELETE SET NULL,

                          KEY idx_products_deleted_at (deleted_at),
                          KEY idx_products_category_id (category_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
