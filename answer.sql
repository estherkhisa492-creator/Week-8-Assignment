
-- ============================================
-- WEEK 8 ASSIGNMENT: MYSQL DATABASE BACKUP AND RESTORE
-- ============================================


-- ============================================
-- QUESTION 1: CREATING A COMPLETE DATABASE BACKUP
-- ============================================

-- Command to back up the sales database:
-- Run this command in your system terminal, NOT MySQL Workbench.

-- mysqldump -u root -p sales > sales_backup.sql

-- Explanation:
-- mysqldump is a MySQL utility used to create database backups.
-- -u root specifies the MySQL username.
-- -p prompts for the database password.
-- sales specifies the database to back up.
-- > sales_backup.sql saves the backup into a file.

-- Regular database backups are important because they:
-- 1. Protect against accidental data loss.
-- 2. Help recover data after system failures.
-- 3. Protect important business information.
-- 4. Support disaster recovery.


-- ============================================
-- QUESTION 2: BACKING UP ALL DATABASES
-- ============================================

-- Command to back up all databases:
-- Run this command in your system terminal.

-- mysqldump -u root -p --all-databases > all_databases_backup.sql

-- Explanation:
-- mysqldump is used to export MySQL databases.
-- -u root specifies the MySQL username.
-- -p prompts for the database password.
-- --all-databases exports every database on the server.
-- > all_databases_backup.sql saves all backups in one file.

-- Backing up all databases before migration is important because:
-- 1. It prevents data loss during server migration.
-- 2. It preserves all databases and their structures.
-- 3. It makes restoring databases on a new server easier.
-- 4. It helps maintain business continuity.


-- ============================================
-- QUESTION 3: DATA-ONLY DATABASE BACKUP
-- ============================================

-- Command to back up only the data in the sales database:
-- Run this command in your system terminal.

-- mysqldump -u root -p --no-create-info sales > sales_data_backup.sql

-- Explanation:
-- -u root specifies the MySQL username.
-- -p prompts for the database password.
-- --no-create-info excludes CREATE TABLE statements.
-- sales specifies the database to back up.
-- > sales_data_backup.sql saves the data backup in a file.

-- A data-only backup is useful when:
-- 1. Database tables already exist.
-- 2. Data needs to be transferred to another database.
-- 3. You want to restore records without recreating tables.
