# Once in a Tram

One day, Jack was going home by tram. When he got his ticket, he noticed that number on the ticket was not *lucky*. A *lucky* ticket is a six-digit number on the ticket in which sum of the first three digits is equal to the sum of the last three digits.

For example, number `165912` is lucky because sum of `1+6+5=12`, and `9+1+2=12`.

Since the number on the ticket wasn't lucky, Jack needs your help to find the next lucky ticket number.

For example, if Jack's ticket number is `165901`, then the next lucky ticket number is `165903`.

Given Jack's current ticket number, find and print the next lucky ticket number.

### Input Format

The first line contains an integer, x, denoting the 6-digit number on the ticket.

### Constraints

10^5 <= x <= 10^6 - 2

### Output Format

For the given input find and print the next lucky ticket number.

### Sample Input 0

`555555`

### Sample Output 0

`555564`

### Explanation 0

After `555555` the first lucky number is `555564`, where the sum of first three digits `5+5+5` is equal to the sum of last three digits `5+6+4`.
