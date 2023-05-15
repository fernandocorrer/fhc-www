---
layout: defaults/classes_posts
title: Practical class
---

## Mendelian Genetics

### Exercise 1 

You received ears of corn with smooth and wrinkled seeds from an F2 generation. The gene **Su** in recessive condition (*su su*) (sugary endosperm) results in wrinkled seeds. After counting the number of seeds in each category, use the Chi-square test to analyze if your data follows the expectations for an F2 generation considering a single gene where one allele showing dominance over the other.

<img width="60%" src='figures/pract_01/su_01.png'>

<img width="60%" src='figures/pract_01/su_02.png'>

After counting the number of seeds in each category, fill out the table. Remember that for the case we are testing, the expected ratio is 3:1. Then, let's calculate the $\chi^2$ :

| Category | Observed frequency (fo) | Expected frequency (fe) | $(fo - fe)$ | $(fo - fe)^2$ | $[(fo - fe)^2]/(fe)$ |
|----------|-------------------------|-------------------------|-------------|---------------|----------------------|
| Normal   |                         | 3/4n                    |             |               |                      |
| Wrinkled |                         | 1/2n                    |             |               |                      |
|          |  (n)                    |                         |             | -             | $\chi^2$=            |


We can also use the formula directly:

$$\chi^2\_{Calculated} = \sum \frac{(observed - expected)^2}{expected}$$

Then, we can find the $\chi^2$ in the table (\chi^2_{Table}) considering the number of degrees of freedom

* Degrees of freedom: Number of categories - 1
    
If $\chi^2\_{Calculated} > \chi^2\_{Table}$

* $fo \neq fe$
    
* Differences between the observed and expected frequencies cannot be attributed to chance. Segregation does not follow the expected ratio (3:1).

Otherwise:

* Differences between the observed and expected frequencies can be attributed to chance.  Conclusion: the 3:1 ratio explains the results.

### Exercise 2

Similarly, count the number of i) purple and smooth; ii) purple and wrinkled; iii) yellow and smooth; iv) yellow and wrinkled. Consider that the gene **Y** is responsible for seed color and that **Y** encodes for a purple and **y** for yellow. Those ears also come from an F2 generation. Analyze your data using the Chi-square test (expected ratio for two traits controlled by independent genes).


<img width="60%" src='figures/pract_01/y-su_01.png'>

<img width="60%" src='figures/pract_01/y-su_02.png'>


