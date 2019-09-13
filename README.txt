README for Q1:
We first do the type check for s to ensure it's atmoic; then if both a and lst are atomic, the count will increase by 1; The last branch of cond deals with the general case, where lst is a nested list, in this case, we recursively apply count-occur on the (car lst) anf (cdr lst), and add up the count they return.
Input format: (count-occur s lst)
Output format: the time of s happened in the lst

README for Q2: 
We first do the type check for c and i; then if c=0, we output 0; if c!=0 and i=0, we output c; otherwise, we will multiply c with i, and substract 1 from i.
Input format: (deriv1 lst) where lst should be in the form of (c x i)
Output format: the 3-place tuple of derived value

README for Q3:
We first check if we get the end of lst, then if lst is atomic, we will return lst itself. Finally, we will use mapcan to recursively apply my-flatten function on each element of lst, and concatenate their flatten output to the result list.
Input format: (my-flatten lst) where lst can be any nested list
Output format: the corresponding flatten list

README for Q4:
We define two functions, in my-intersection, we nestedly iterate over l1 and l2, to compare each pair of their elements, and use nest-equal to check equality of nested element. For nest-equal, we respectively take care of each situation, including: both/either of l1 and l2 are null/atom/list. And we recursively apply nest-equal on the first part of l1 and l2 and the rest part of them, in order to get the equality between two lists.
Input format: (my-intersection l1 l2)
Output format: the list containing all the intersected elements

README for Q5:
We define two functions, in find-match, we try to matach the pattern of pred upon each element of facts with 'match' function. The match function will first check if the predicate matches, if matches, then it will turn to check the length of arguments of pred and the specific fact, if they are equal, then the two predicates match.
Input format: (find-match pred facts)
Output format: the first fact in the 'facts' list matched

README for Q6:
The store-fact will first store the complete predication key anyway, then it will check if the predicate key has existed. if not, it wll create a new list to store the value of this predicate key; if exist, it will append the predication to the list of key 'pred'. For store-facts, it uses mapcar to apply store-fact on each fact, and store its two version keys into the hash table.
To use this function, you have to create hash table and facts, then pass them into the store-facts function. You can use gethash to test the returned result.
Input format: (store-facts facts ht)
Output format: use (gethash key ht) to get the stored value.
