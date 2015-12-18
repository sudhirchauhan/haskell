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

--- Known as Algebric Data Types which is diffrent from Abstract Data type

type CardHolder = String
type CardNumber = String
type Address = [String]

data BillingInfo = CreditCard CardNumber CardHolder Address
                 | CachOnDelivery
                 | Invoice CustomerId
                   deriving (Show)
-- | Acts like a discrimination union allowing one of three options.
-- each option itself is a type

-- PATTERN MATCHING --
-- Function is defined as series of patterns
-- Ordering is important from specific to generic
-- Same function is repeated again and again.

sumList (x:xs) = x + sumList xs
sumList [] = 0

-- Values can be matched too

third (a,b,c) = c

-- Matches and returns c from the tuple
-- If there are Literals, then they should match explicitly

complicated(True,a,x:xs,5) = (a,xs)

-- This one will take a tuple and return element a and rest of the list xs.


-- Algebrix data types are matched using their value constructors

bookId (Book id title authors) = id
bookTitle (Book id title authors) = title
bookAuthors (Book id title authors) = authors

-- These will take Book data type and return id, title, and authors respectively.

-- _ is used to do a wildcard match and type less

bookIdAgain (Book id _ _) = id
bookTitleAgain (Book _ title _) = title
bookAuthorsAgain (Book _ _ authors) = authors

-- Records and shortcuts to allow creation of type as well as their deconstrcutors
-- Fields are separated by ,
-- Enclosed within {}

data Customer = Customer {
   customerId      :: CustomerId
 , customerName    :: String
 , customerAddress :: Address
 } deriving (Show)

mycustomer = Customer 23 "Me" ["Here"]
-- individual fields can be accessed like this
mycustomerName = customerName mycustomer


-- Maybe and Just type, what is below does not need to be done. However Maybe and Just are already defined so they should just be used
-- Maybe is used to define  optional type
<<<<<<< HEAD
data  AuthorName = AuthorName Just String
                 |Nothing
data BookInfoOptional = BookOptional Int String AuthorName deriving (Show)

--bookWithAuthors = BookOptional 23 "Sonata" (Just["Author1","So on"])
=======
type Authors = String
data BookInfoOptional = BookInfoOptional Int String  Authors

bookWithAuthors = BookInfoOptional 23 "Sonata" "Banks"
>>>>>>> 9d6416607ac28487734fcc6b2f3bdff28fed2779
-- bookWithAnounymous = BookOptional 24 "Hydrogen" Nothing


-- Recursive Types

{- data ListNew a = Cons a (ListNew a)
               | Nothing
               deriving (Show) -}
