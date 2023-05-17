---
layout: defaults/classes_posts
title: Practical class
---

## Mendelian Genetics

### Exercise 1 

You received ears of corn with smooth and wrinkled seeds from an F2 generation. The gene **Su** in recessive condition (*su su*) (sugary endosperm) results in wrinkled seeds. After counting the number of seeds in each category, use the Chi-square test to analyze if your data follows the expectations for an F2 generation considering a single gene where one allele showing dominance over the other.

<img width="60%" src='figures/pract_01/su_01.png'>

<img width="60%" src='figures/pract_01/su_02.png'>

After counting the number of seeds in each category, fill out the table. Remember that for the case we are testing, the expected ratio is 3:1. Then, let's calculate the $\chi^2$:

<style type="text/css">
.tg  {border-collapse:collapse;border-spacing:0;}
.tg td{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  overflow:hidden;padding:10px 5px;word-break:normal;}
.tg th{border-color:black;border-style:solid;border-width:1px;font-family:Arial, sans-serif;font-size:14px;
  font-weight:normal;overflow:hidden;padding:10px 5px;word-break:normal;}
.tg .tg-0pky{border-color:inherit;text-align:left;vertical-align:top}
</style>
<table class="tg">
<thead>
  <tr>
    <th class="tg-0pky">Category</th>
    <th class="tg-0pky">Observed frequency (fo)</th>
    <th class="tg-0pky">Expected frequency (fe)</th>
    <th class="tg-0pky">$(fo - fe)$</th>
    <th class="tg-0pky">$(fo - fe)^2$</th>
    <th class="tg-0pky">$[(fo - fe)^2]/(fe)$</th>
  </tr>
</thead>
<tbody>
  <tr>
    <td class="tg-0pky">Normal</td>
    <td class="tg-0pky"></td>
    <td class="tg-0pky">3/4n</td>
    <td class="tg-0pky"></td>
    <td class="tg-0pky"></td>
    <td class="tg-0pky"></td>
  </tr>
  <tr>
    <td class="tg-0pky">Wrinkled</td>
    <td class="tg-0pky"></td>
    <td class="tg-0pky">1/2n</td>
    <td class="tg-0pky"></td>
    <td class="tg-0pky"></td>
    <td class="tg-0pky"></td>
  </tr>
  <tr>
    <td class="tg-0pky"></td>
    <td class="tg-0pky">(n)</td>
    <td class="tg-0pky"></td>
    <td class="tg-0pky"></td>
    <td class="tg-0pky">-</td>
    <td class="tg-0pky">$\chi^2$=</td>
  </tr>
</tbody>
</table>


We can also use the formula directly:

$$\chi^2_{Calculated} = \sum \frac{(observed - expected)^2}{expected}$$

Then, we can find the $\chi^2$ in the table (\chi^2_{Table}) considering the number of degrees of freedom

* Degrees of freedom: Number of categories - 1
    
If $\chi^2_{Calculated} > \chi^2_{Table}$

* $fo \neq fe$
    
* Differences between the observed and expected frequencies cannot be attributed to chance. Segregation does not follow the expected ratio (3:1).

Otherwise:

* Differences between the observed and expected frequencies can be attributed to chance.  Conclusion: the 3:1 ratio explains the results.

### Exercise 2

Similarly, count the number of i) purple and smooth; ii) purple and wrinkled; iii) yellow and smooth; iv) yellow and wrinkled. Consider that the gene **Y** is responsible for seed color and that **Y** encodes for a purple and **y** for yellow. Those ears also come from an F2 generation. Analyze your data using the Chi-square test (expected ratio for two traits controlled by independent genes).


<img width="60%" src='figures/pract_01/y-su_01.png'>

<img width="60%" src='figures/pract_01/y-su_02.png'>


