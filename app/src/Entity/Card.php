<?php

namespace App\Entity;

use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\Serializer\Annotation\Groups;
use ApiPlatform\Metadata\ApiResource;
use ApiPlatform\Metadata\GetCollection;
use ApiPlatform\Metadata\Get;
use ApiPlatform\Metadata\ApiFilter;
use ApiPlatform\Doctrine\Orm\Filter\SearchFilter;

use App\Repository\CardRepository;
use App\Entity\BaseTrait;

#[ORM\Entity(repositoryClass: CardRepository::class)]
#[ORM\HasLifecycleCallbacks]
#[ApiResource(
    operations: [
        new GetCollection(
            normalizationContext: ['groups' => ['all', 'card:read:collection']]
        ),
        new Get(
            normalizationContext: ['groups' => ['all', 'card:read:collection']]
        ),
    ],
    paginationEnabled: false
)]
#[ApiFilter(SearchFilter::class, properties: ['cardType.name' => 'exact', 'mainFaction.name' => 'exact'])]
class Card
{
    use BaseTrait;

    #[ORM\Column(length: 50)]
    #[Groups(['card:read:collection', 'deck:read:collection'])]
    private ?string $altered_id = null;

    #[ORM\ManyToOne]
    #[Groups(['card:read:collection', 'deck:read:collection'])]
    private ?CardType $cardType = null;

    #[ORM\ManyToOne]
    #[Groups(['card:read:collection', 'deck:read:collection'])]
    private ?Faction $mainFaction = null;

    #[ORM\Column(length: 255)]
    #[Groups(['card:read:collection', 'deck:read:collection'])]
    private ?string $name = null;

    #[ORM\Column(length: 50)]
    #[Groups(['card:read:collection', 'deck:read:collection'])]
    private ?string $reference = null;

    #[ORM\ManyToOne(inversedBy: 'cards')]
    #[Groups(['card:read:collection', 'deck:read:collection'])]
    private ?Rarity $rarity = null;

    #[ORM\Column(length: 255)]
    #[Groups(['card:read:collection', 'deck:read:collection'])]
    private ?string $picture = null;

    #[ORM\Column(length: 255)]
    #[Groups(['card:read:collection', 'deck:read:collection'])]
    private ?string $imagePath = null;

    #[ORM\ManyToOne(inversedBy: 'cards')]
    private ?CardSet $cardSet = null;

    #[ORM\OneToMany(targetEntity: Deck::class, mappedBy: 'hero')]
    private Collection $decks;

    #[ORM\OneToMany(targetEntity: DeckCard::class, mappedBy: 'card', orphanRemoval: true, cascade: ["persist"])]
    private Collection $deckCards;

    public function __construct()
    {
        $this->createdAt = new \DateTimeImmutable();
        $this->updatedAt = new \DateTimeImmutable();
        $this->decks = new ArrayCollection();
        $this->deckCards = new ArrayCollection();
    }

    public function getId(): ?int
    {
        return $this->id;
    }

    public function getAlteredId(): ?string
    {
        return $this->altered_id;
    }

    public function setAlteredId(string $altered_id): static
    {
        $this->altered_id = $altered_id;

        return $this;
    }

    public function getCardType(): ?CardType
    {
        return $this->cardType;
    }

    public function setCardType(?CardType $cardType): static
    {
        $this->cardType = $cardType;

        return $this;
    }

    public function getMainFaction(): ?Faction
    {
        return $this->mainFaction;
    }

    public function setMainFaction(?Faction $mainFaction): static
    {
        $this->mainFaction = $mainFaction;

        return $this;
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

    public function getReference(): ?string
    {
        return $this->reference;
    }

    public function setReference(string $reference): static
    {
        $this->reference = $reference;

        return $this;
    }

    public function getRarity(): ?Rarity
    {
        return $this->rarity;
    }

    public function setRarity(?Rarity $rarity): static
    {
        $this->rarity = $rarity;

        return $this;
    }

    public function getPicture(): ?string
    {
        return $this->picture;
    }

    public function setPicture(string $picture): static
    {
        $this->picture = $picture;

        return $this;
    }

    public function getImagePath(): ?string
    {
        return $this->imagePath;
    }

    public function setImagePath(string $imagePath): static
    {
        $this->imagePath = $imagePath;

        return $this;
    }

    public function __toString()
    {
        return $this->name;
    }

    public function getCardSet(): ?CardSet
    {
        return $this->cardSet;
    }

    public function setCardSet(?CardSet $cardSet): static
    {
        $this->cardSet = $cardSet;

        return $this;
    }

    /**
     * @return Collection<int, Deck>
     */
    public function getDecks(): Collection
    {
        return $this->decks;
    }

    public function addDeck(Deck $deck): static
    {
        if (!$this->decks->contains($deck)) {
            $this->decks->add($deck);
            $deck->setHero($this);
        }

        return $this;
    }

    public function removeDeck(Deck $deck): static
    {
        if ($this->decks->removeElement($deck)) {
            // set the owning side to null (unless already changed)
            if ($deck->getHero() === $this) {
                $deck->setHero(null);
            }
        }

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
            $deckCard->setCard($this);
        }

        return $this;
    }

    public function removeDeckCard(DeckCard $deckCard): static
    {
        if ($this->deckCards->removeElement($deckCard)) {
            // set the owning side to null (unless already changed)
            if ($deckCard->getCard() === $this) {
                $deckCard->setCard(null);
            }
        }

        return $this;
    }
}
