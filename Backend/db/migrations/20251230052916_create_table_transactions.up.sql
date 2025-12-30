CREATE TABLE transactions (
                              id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
                              cashier_id VARCHAR(100),
                              customer_name TEXT,
                              total_amount DECIMAL(15,2),
                              cash_amount DECIMAL(15,2),
                              change_amount DECIMAL(15,2),
                              payment_time TIMESTAMP NULL DEFAULT NULL,
                              created_at TIMESTAMP NULL DEFAULT NULL,
                              updated_at TIMESTAMP NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
                              deleted_at TIMESTAMP NULL DEFAULT NULL,

                              CONSTRAINT fk_transactions_cashier
                                  FOREIGN KEY (cashier_id)
                                      REFERENCES users(id)
                                      ON UPDATE CASCADE
                                      ON DELETE SET NULL,

                              KEY idx_transactions_deleted_at (deleted_at),
                              KEY idx_transactions_cashier_id (cashier_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
