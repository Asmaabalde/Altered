<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20240410121954 extends AbstractMigration
{
    public function getDescription(): string
    {
        return '';
    }

    public function up(Schema $schema): void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE deck ADD hero_id INT DEFAULT NULL');
        $this->addSql('ALTER TABLE deck ADD CONSTRAINT FK_4FAC363745B0BCD FOREIGN KEY (hero_id) REFERENCES card (id)');
        $this->addSql('CREATE INDEX IDX_4FAC363745B0BCD ON deck (hero_id)');
    }

    public function down(Schema $schema): void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE deck DROP FOREIGN KEY FK_4FAC363745B0BCD');
        $this->addSql('DROP INDEX IDX_4FAC363745B0BCD ON deck');
        $this->addSql('ALTER TABLE deck DROP hero_id');
    }
}
