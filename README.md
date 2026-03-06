# Cross-Cultural Differences in Trust and Cooperation
### A Comparative Analysis of Italy and Iran using World Values Survey
---

## Project Overview

This project analyzes cross-cultural differences in trust and cooperation using data from the **World Values Survey (WVS)**.

The analysis compares trust patterns in **Italy and Iran** across different social contexts (family, neighbors, strangers) and investigates regional disparities within each country. It also explores how the **Principle of Mutual Benefit (PMB)**, a behavioral economics framework, explains why cooperative behavior succeeds in some societies and breaks down in others.

Statistical techniques including **correspondence analysis, clustering, chi-square testing, and weighted scoring** are used to identify and visualize distinct trust structures across cultures.

> Understanding trust dynamics is essential for economics, governance, and cross-border business. This project demonstrates how quantitative methods can be applied to study the cultural and institutional differences that shape how societies cooperate.

<img width="805" height="470" alt="image" src="https://github.com/user-attachments/assets/18b0dbcc-0ca3-4550-93b4-3a979ca48c53" />


---

## Research Questions

1. How do trust levels differ across regions within Italy and Iran?
2. How does trust vary across social contexts of family, neighbors, and strangers?
3. Can the Principle of Mutual Benefit explain observed patterns of cooperation across these cultures?
   
---

## Dataset

**Source:** [World Values Survey (WVS)](https://www.worldvaluessurvey.org)

> Raw WVS data is publicly available at [worldvaluessurvey.org](https://www.worldvaluessurvey.org). Processed subsets used in this analysis are included where licensing permits.

---

## Methods

- **Data preprocessing & cleaning**: filtering WVS responses by country and region, handling missing values, recoding ordinal variables
- **Correspondence Analysis**: 2D visualization of associations between trust categories and regional/national groupings
- **Clustering**: identifying distinct trust profiles (dendrogram + scatter plot)
- **Chi-Square Tests**: assessing statistical significance of trust differences between groups
- **Weighted Average Trust Scores**: constructing comparable composite trust metrics across ordinal scales

---

## Key Findings

| Finding | Interpretation |
|---|---|
| Iran has higher family trust (weighted avg: ~3.5+) | Reflects collectivist social structure; cooperation is in-group dependent |
| Italy has higher trust in strangers (2.07 vs. 1.99) | Individualist trust networks, especially in the North |
| 37% of Iranians report zero trust in strangers vs. 21.5% of Italians | Significant gap in out-group trust with implications for market behavior |
| Northern Italy outperforms South on institutional trust | Historical North-South social capital divide (Putnam, 1993) |
| PMB functions effectively only where institutional trust is high | Voluntary cooperation requires reliable governance structures to scale |

---

## Skills Demonstrated

`Behavioral Economics` `Statistical Modeling` `Correspondence Analysis` `Clustering` `Hypothesis Testing` `Cross-Cultural Research` `Python` `Data Visualization` `Survey Data Analysis` `World Values Survey`

---

## Some Visual Outputs


### Trust Across Social Contexts: Italy vs. Iran
Comparison of trust scores in family, neighbor, and stranger relationships between the two countries.

<img width="1837" height="1311" alt="image" src="https://github.com/user-attachments/assets/fd521572-4554-41f8-8281-f22b8efabd9d" />
<img width="2154" height="1538" alt="image" src="https://github.com/user-attachments/assets/e1adae42-b819-461a-9fd4-7e0a1d750f3e" />

---

### Correspondence Analysis Plot
2D projection of trust categories and regional groupings, showing how trust structures cluster differently across societies.

<img width="1117" height="643" alt="image" src="https://github.com/user-attachments/assets/dbb225c4-6f2b-459d-9847-97842068102f" />
<img width="1013" height="597" alt="image" src="https://github.com/user-attachments/assets/22c81da7-959b-43ec-a42c-dc0a65e8c3d4" />

<img width="1112" height="638" alt="image" src="https://github.com/user-attachments/assets/744a5919-0a35-40f2-9593-723b154ce0b5" />
<img width="1058" height="564" alt="image" src="https://github.com/user-attachments/assets/43a7b495-b5f0-4fca-9be9-8d1bf7659f26" />


---
### Clustering
Hierarchical clustering of regions by trust levels, revealing how areas group by shared trust dynamics rather than geographical location.

<img width="1191" height="726" alt="image" src="https://github.com/user-attachments/assets/e41705f6-fa8a-4668-a7b8-1687392513d2" />
<img width="1125" height="623" alt="image" src="https://github.com/user-attachments/assets/49ccfe19-31c0-4682-a0a0-6676bb200b93" />

<img width="1360" height="840" alt="image" src="https://github.com/user-attachments/assets/d1a6ae65-181c-4b17-b167-b0adbba519f8" />
<img width="1109" height="619" alt="image" src="https://github.com/user-attachments/assets/39748188-2de8-418c-9f23-452d092196d9" />


