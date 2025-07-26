-- Création de l'utilisateur et de la base de données
CREATE USER mon_utilisateur WITH PASSWORD 'Mot2P@sseS3curisé';
CREATE DATABASE ma_base;
GRANT ALL PRIVILEGES ON DATABASE ma_base TO mon_utilisateur;

-- Configuration sécurité
ALTER SYSTEM SET listen_addresses = '*';
ALTER SYSTEM SET password_encryption = 'scram-sha-256';

-- Configuration HBA
CREATE EXTENSION IF NOT EXISTS pg_cron;