-- file: Ch03/BookStore.hs

data BookInfo = Book Int String [String]
                deriving (Show)
-- BookInfo is Type constructor, Book is value or data contructor.
data BookInfoProper = BookInfoProper Int String [String]
                deriving (Show)
-- Both Type and Value contructor can and usually have the same name.                
data MagazineInfo = Magazine Int String [String]
                    deriving (Show)
-- vi press ^ or Zero to move to the beginning of line        
myInfo = Book 334234332 "Algebra" ["Me","You"]

-- Type synonyms
type CustomerId = Int
type ReviewBody = String

data BookReview = BookReview BookInfo CustomerId String

data BetterReview = BetterReview BookInfo CustomerId ReviewBody

-- keyword type is used to create synonyms whic helps is making it more readable.

type BookRecord = (BookInfo, BookReview)

-- also used to create short names

--- Algebric Data Types

type CardHolder = String
type CardNumber = String
type Address = [String]

data BillingInfo = CreditCard CardNumber CardHolder Address
                 | CachOnDelivery
                 |Invoice CustomerId
                 deriving (Show)
