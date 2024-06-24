<?php

declare(strict_types=1);

namespace DoctrineMigrations;

use Doctrine\DBAL\Schema\Schema;
use Doctrine\Migrations\AbstractMigration;

/**
 * Auto-generated Migration: Please modify to your needs!
 */
final class Version20240404162645 extends AbstractMigration
{
    public function getDescription(): string
    {
        return '';
    }

    public function up(Schema $schema): void
    {
        // this up() migration is auto-generated, please modify it to your needs
        $this->addSql('CREATE TABLE card (id INT AUTO_INCREMENT NOT NULL, card_type_id INT DEFAULT NULL, main_faction_id INT DEFAULT NULL, rarity_id INT DEFAULT NULL, altered_id VARCHAR(50) NOT NULL, name VARCHAR(255) NOT NULL, reference VARCHAR(50) NOT NULL, created_at DATETIME NOT NULL COMMENT \'(DC2Type:datetime_immutable)\', updated_at DATETIME NOT NULL COMMENT \'(DC2Type:datetime_immutable)\', INDEX IDX_161498D3925606E5 (card_type_id), INDEX IDX_161498D37CB08CB9 (main_faction_id), INDEX IDX_161498D3F3747573 (rarity_id), PRIMARY KEY(id)) DEFAULT CHARACTER SET utf8mb4 COLLATE `utf8mb4_unicode_ci` ENGINE = InnoDB');
        $this->addSql('ALTER TABLE card ADD CONSTRAINT FK_161498D3925606E5 FOREIGN KEY (card_type_id) REFERENCES card_type (id)');
        $this->addSql('ALTER TABLE card ADD CONSTRAINT FK_161498D37CB08CB9 FOREIGN KEY (main_faction_id) REFERENCES faction (id)');
        $this->addSql('ALTER TABLE card ADD CONSTRAINT FK_161498D3F3747573 FOREIGN KEY (rarity_id) REFERENCES rarity (id)');
    }

    public function down(Schema $schema): void
    {
        // this down() migration is auto-generated, please modify it to your needs
        $this->addSql('ALTER TABLE card DROP FOREIGN KEY FK_161498D3925606E5');
        $this->addSql('ALTER TABLE card DROP FOREIGN KEY FK_161498D37CB08CB9');
        $this->addSql('ALTER TABLE card DROP FOREIGN KEY FK_161498D3F3747573');
        $this->addSql('DROP TABLE card');
    }
}
