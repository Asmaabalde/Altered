<?php

namespace App\Entity;

use App\Repository\DeckRepository;
use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\Serializer\Annotation\Groups;
use ApiPlatform\Metadata\ApiResource;
use ApiPlatform\Metadata\GetCollection;
use ApiPlatform\Metadata\Post;
use ApiPlatform\Metadata\Put;
use ApiPlatform\Metadata\Get;
use ApiPlatform\Metadata\Delete;

use App\Entity\BaseTrait;

#[ORM\Entity(repositoryClass: DeckRepository::class)]
#[ORM\HasLifecycleCallbacks]
#[ApiResource(
    operations: [
        new GetCollection(
            normalizationContext: ['groups' => ['all', 'deck:read:collection']]
        ),
        new Get(
            normalizationContext: ['groups' => ['all', 'deck:read:collection']]
        ),
        new Post(
            denormalizationContext: ['groups' => 'deck:create:item'],
            security: "is_granted('ROLE_USER')"
        ),
        new Put(
            denormalizationContext: ['groups' => 'deck:update:item'],
            security: "is_granted('ROLE_USER')"
        ),
        new Delete(
            denormalizationContext: ['groups' => 'deck:create:item'],
            security: "is_granted('ROLE_USER')"
        )
    ]
)]  
class Deck
{
    use BaseTrait;

    #[ORM\Column(length: 255)]
    #[Groups(['deck:read:collection', 'deck:create:item', 'deck:update:item'])]
    private ?string $name = null;

    #[ORM\ManyToOne(inversedBy: 'decks')]
    #[Groups(['deck:read:collection', 'deck:create:item', 'deck:update:item'])]
    private ?User $user = null;

    #[ORM\ManyToOne(inversedBy: 'decks')]
    #[Groups(['deck:read:collection', 'deck:create:item', 'deck:update:item'])]
    private ?Card $hero = null;

    #[ORM\OneToMany(targetEntity: DeckCard::class, mappedBy: 'deck', orphanRemoval: true, cascade: ["persist"])]
    #[Groups(['deck:read:collection', 'deck:create:item'])]
    private Collection $deckCards;

    public function __construct()
    {
        $this->createdAt = new \DateTimeImmutable();
        $this->updatedAt = new \DateTimeImmutable();
        $this->deckCards = new ArrayCollection();
    }

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getName(): ?string
    {
        return $this->name;
    }

    public function setName(string $name): static
    {
        $this->name = $name;

        return $this;
    }

    public function getUser(): ?User
    {
        return $this->user;
    }

    public function setUser(?User $user): static
    {
        $this->user = $user;

        return $this;
    }

    public function __toString()
    {
        return $this->name;
    }

    public function getHero(): ?Card
    {
        return $this->hero;
    }

    public function setHero(?Card $hero): static
    {
        $this->hero = $hero;

        return $this;
    }

    /**
     * @return Collection<int, DeckCard>
     */
    public function getDeckCards(): Collection
    {
        return $this->deckCards;
    }

    public function addDeckCard(DeckCard $deckCard): static
    {
        if (!$this->deckCards->contains($deckCard)) {
            $this->deckCards->add($deckCard);
            $deckCard->setDeck($this);
        }

        return $this;
    }

    public function removeDeckCard(DeckCard $deckCard): static
    {
        if ($this->deckCards->removeElement($deckCard)) {
            // set the owning side to null (unless already changed)
            if ($deckCard->getDeck() === $this) {
                $deckCard->setDeck(null);
            }
        }

        return $this;
    }
}
