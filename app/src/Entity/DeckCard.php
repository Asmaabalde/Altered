<?php

namespace App\Entity;

use App\Repository\DeckCardRepository;
use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\Serializer\Annotation\Groups;
use ApiPlatform\Metadata\ApiResource;
use ApiPlatform\Metadata\GetCollection;
use ApiPlatform\Metadata\Post;
use ApiPlatform\Metadata\Put;
use ApiPlatform\Metadata\Get;
use ApiPlatform\Metadata\Delete;


use App\Entity\BaseTrait;

#[ORM\Entity(repositoryClass: DeckCardRepository::class)]
#[ORM\HasLifecycleCallbacks]
#[ApiResource(
    operations: [
        new GetCollection(
            normalizationContext: ['groups' => ['deck_card:read:collection']]
        ),
        new Get(
            normalizationContext: ['groups' => ['all','deck_card:read:collection']]
        ),
        new Post(
            denormalizationContext: ['groups' => 'deck_card:create:item'],
            security: "is_granted('ROLE_USER')"
        ),
        new Put(
            denormalizationContext: ['groups' => 'deck_card:update:item'],
            security: "is_granted('ROLE_USER')"
        ),
        new Delete(
            denormalizationContext: ['groups' => 'deck_card:create:item'],
            security: "is_granted('ROLE_USER')"
        )
    ]
)]
class DeckCard
{
    use BaseTrait;

    #[ORM\ManyToOne(inversedBy: 'deckCards')]
    #[Groups(['deck_card:read:collection', 'deck_card:create:item', 'deck_card:update:item'])]
    private ?Card $card = null;

    #[ORM\ManyToOne(inversedBy: 'deckCards', cascade: ["persist"] )]
    #[Groups(['deck_card:read:collection', 'deck_card:create:item', 'deck_card:update:item'])]
    private ?Deck $deck = null;

    #[ORM\Column]
    #[Groups(['deck_card:read:collection', 'deck_card:create:item', 'deck_card:update:item'])]
    private ?int $qty = null;

    public function __construct()
    {
        $this->createdAt = new \DateTimeImmutable();
        $this->updatedAt = new \DateTimeImmutable();
    }

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getCard(): ?Card
    {
        return $this->card;
    }

    public function setCard(?Card $card): static
    {
        $this->card = $card;

        return $this;
    }

    public function getDeck(): ?Deck
    {
        return $this->deck;
    }

    public function setDeck(?Deck $deck): static
    {
        $this->deck = $deck;

        return $this;
    }

    public function getQty(): ?int
    {
        return $this->qty;
    }

    public function setQty(int $qty): static
    {
        $this->qty = $qty;

        return $this;
    }
}
