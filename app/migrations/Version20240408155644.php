<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20240408155644 extends AbstractMigration
{
    public function getDescription(): string
    {
        return '';
    }

    public function up(Schema $schema): void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE card ADD card_set_id INT DEFAULT NULL');
        $this->addSql('ALTER TABLE card ADD CONSTRAINT FK_161498D362C45E6C FOREIGN KEY (card_set_id) REFERENCES card_set (id)');
        $this->addSql('CREATE INDEX IDX_161498D362C45E6C ON card (card_set_id)');
    }

    public function down(Schema $schema): void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE card DROP FOREIGN KEY FK_161498D362C45E6C');
        $this->addSql('DROP INDEX IDX_161498D362C45E6C ON card');
        $this->addSql('ALTER TABLE card DROP card_set_id');
    }
}
