CREATE TABLE transaction_items (
                                   id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
                                   transaction_id BIGINT UNSIGNED,
                                   product_id BIGINT UNSIGNED,
                                   quantity BIGINT DEFAULT 1,
                                   price DECIMAL(15,2),
                                   sub_total DECIMAL(15,2),
                                   created_at TIMESTAMP NULL DEFAULT NULL,
                                   updated_at TIMESTAMP NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
                                   deleted_at TIMESTAMP NULL DEFAULT NULL,

                                   CONSTRAINT fk_transactions_items
                                       FOREIGN KEY (transaction_id)
                                           REFERENCES transactions(id),

                                   CONSTRAINT fk_transaction_items_product
                                       FOREIGN KEY (product_id)
                                           REFERENCES products(id),

                                   KEY idx_transaction_items_deleted_at (deleted_at),
                                   KEY idx_transaction_items_transaction_id (transaction_id),
                                   KEY idx_transaction_items_product_id (product_id)
)  ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
