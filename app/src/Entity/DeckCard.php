<?php

namespace App\Entity;

use App\Repository\DeckCardRepository;
use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\Serializer\Annotation\Groups;

use App\Entity\BaseTrait;

#[ORM\Entity(repositoryClass: DeckCardRepository::class)]
#[ORM\HasLifecycleCallbacks]
class DeckCard
{
    use BaseTrait;

    #[ORM\ManyToOne(inversedBy: 'deckCards')]
    #[Groups(['deck:read:collection', 'deck:create:item'])]
    private ?Card $card = null;

    #[ORM\ManyToOne(inversedBy: 'deckCards', cascade: ["persist"] )]
    #[Groups(['deck:read:collection'])]
    private ?Deck $deck = null;

    #[ORM\Column]
    #[Groups(['deck:read:collection', 'deck:create:item'])]
    private ?int $qty = null;

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
