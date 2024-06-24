<?php

namespace App\Entity;

use App\Repository\CardTypeRepository;
use Symfony\Component\Serializer\Annotation\Groups;
use Doctrine\ORM\Mapping as ORM;
use App\Entity\BaseTrait;

#[ORM\Entity(repositoryClass: CardTypeRepository::class)]
#[ORM\HasLifecycleCallbacks]
class CardType
{
    use BaseTrait;

    #[ORM\Column(length: 30)]
    #[Groups(['card:read:collection'])]
    private ?string $reference = null;

    #[ORM\Column(length: 50)]
    #[Groups(['card:read:collection'])]
    private ?string $name = null;

    #[ORM\Column(length: 50)]
    #[Groups(['card:read:collection'])]
    private ?string $altered_id = null;

    public function __construct()
    {
        $this->createdAt = new \DateTimeImmutable();
        $this->updatedAt = new \DateTimeImmutable();
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

    public function __toString()
    {
        return $this->name;
    }
}
