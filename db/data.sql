USE billing_app;

-- ======================================
-- Companies
-- ======================================
INSERT INTO companies (name, address, phone) VALUES
('Alpha Corp', '123 Main St', '0412-5551111'),
('Beta LLC', '456 Central Ave', '0412-5552222');

-- ======================================
-- Clients
-- ======================================
INSERT INTO clients (company_id, name, email, phone) VALUES
(1, 'John Doe', 'john@example.com', '0412-1112222'),
(1, 'Mary Smith', 'mary@example.com', '0412-3334444'),
(2, 'Carlos Ruiz', 'carlos@example.com', '0412-5556666');

-- ======================================
-- Categories
-- ======================================
INSERT INTO categories (company_id, name, description) VALUES
(1, 'Services', 'Professional services'),
(1, 'Physical Products', 'Tangible products'),
(2, 'Digital Products', 'Software and apps');

-- ======================================
-- Products
-- ======================================
INSERT INTO products (company_id, category_id, name, description, price) VALUES
(1, 1, 'Consulting', 'Business consulting', 100.00),
(1, 2, 'Laptop', 'Dell Inspiron Laptop', 1200.00),
(2, 3, 'Software License', 'Accounting software', 50.00);

-- ======================================
-- Suppliers
-- ======================================
INSERT INTO suppliers (name, contact, phone) VALUES
('Supplier One', 'Pedro', '0412-7778888'),
('Supplier Two', 'Ana', '0412-9990000');

-- ======================================
-- Company-Supplier relationships
-- ======================================
INSERT INTO company_suppliers (company_id, supplier_id) VALUES
(1, 1),
(1, 2),
(2, 2);

-- ======================================
-- Employees
-- ======================================
INSERT INTO employees (company_id, name, position, email, phone) VALUES
(1, 'Luis Barrios', 'Manager', 'luis@alpha.com', '0412-1234567'),
(2, 'Ana Torres', 'Assistant', 'ana@beta.com', '0412-7654321');

-- ======================================
-- Users
-- ======================================
INSERT INTO users (employee_id, username, password, role) VALUES
(1, 'luis', 'password123', 'admin'),
(2, 'ana', 'password123', 'user');

-- ======================================
-- Taxes
-- ======================================
INSERT INTO taxes (company_id, name, rate) VALUES
(1, 'VAT', 16.00),
(2, 'VAT', 12.00);

-- ======================================
-- Invoices
-- ======================================
INSERT INTO invoices (company_id, client_id, invoice_date, total) VALUES
(1, 1, '2025-09-01', 1300.00),
(1, 2, '2025-09-02', 100.00),
(2, 3, '2025-09-03', 50.00);

-- ======================================
-- Invoice Details
-- ======================================
INSERT INTO invoice_details (invoice_id, product_id, quantity, unit_price) VALUES
(1, 1, 1, 100.00),
(1, 2, 1, 1200.00),
(2, 1, 1, 100.00),
(3, 3, 1, 50.00);

-- ======================================
-- Payments
-- ======================================
INSERT INTO payments (invoice_id, payment_date, amount, method) VALUES
(1, '2025-09-01', 1300.00, 'Bank Transfer'),
(2, '2025-09-02', 100.00, 'Cash'),
(3, '2025-09-03', 50.00, 'Credit Card');
