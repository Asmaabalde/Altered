<?php

namespace App\Entity;

use App\Repository\RarityRepository;
use Doctrine\Common\Collections\ArrayCollection;
use Doctrine\Common\Collections\Collection;
use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\Serializer\Annotation\Groups;

use App\Entity\BaseTrait;

#[ORM\Entity(repositoryClass: RarityRepository::class)]
#[ORM\HasLifecycleCallbacks]
class Rarity
{
    use BaseTrait;

    #[ORM\Column(length: 50)]
    private ?string $reference = null;

    #[ORM\Column(length: 50)]
    #[Groups(['card:read:collection', 'deck:read:collection'])]
    private ?string $name = null;

    #[ORM\Column(length: 50)]
    private ?string $altered_id = null;

    #[ORM\OneToMany(targetEntity: Card::class, mappedBy: 'rarity')]
    private Collection $cards;

    public function __construct()
    {
        $this->createdAt = new \DateTimeImmutable();
        $this->updatedAt = new \DateTimeImmutable();
        
        $this->cards = new ArrayCollection();
    }

    public function getId(): ?int
    {
        return $this->id;
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

    public function getName(): ?string
    {
        return $this->name;
    }

    public function setName(string $name): static
    {
        $this->name = $name;

        return $this;
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

    /**
     * @return Collection<int, Card>
     */
    public function getCards(): Collection
    {
        return $this->cards;
    }

    public function addCard(Card $card): static
    {
        if (!$this->cards->contains($card)) {
            $this->cards->add($card);
            $card->setRarity($this);
        }

        return $this;
    }

    public function removeCard(Card $card): static
    {
        if ($this->cards->removeElement($card)) {
            // set the owning side to null (unless already changed)
            if ($card->getRarity() === $this) {
                $card->setRarity(null);
            }
        }

        return $this;
    }

    public function __toString()
    {
        return $this->name;
    }
}
