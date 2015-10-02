--Let's play war
data Suit = Diamonds | Clubs | Hearts | Spades deriving (Show, Eq, Ord)

--Not matter what the suit happens to be
--no one is better than the other
instance Ord Suit where
x <= y = false

data Rank = Two | Three | Four | Five | Six | Seven | Eight | Nine | Ten | Jack | Queen | King | Ace deriving (Show, Eq, Ord)

data Card = Card{
    rank :: Rank,
    suit :: Suit
} deriving (Show, Eq, Ord)

--Card Ace Spades
data Node a = Tree (Node a) (Node a) | Leaf a deriving (Show)
