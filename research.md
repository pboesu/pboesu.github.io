---
layout: page
title: Research Projects
submenu:
  - { hook: "bto", title: "Citizen Science" }
  - { hook: "albatross", title: "Seabirds" }
  - { hook: "deBInfer", title: "Bayesian Inference" }
  - { hook: "disease", title: "Disease Ecology" }
  - { hook: "seamounts", title: "Marine Ecology" }

---

## Citizen Science & Bird Populations <a name="bto">&nbsp;</a>
<table style="width:80%"><tr><td>
<img class="img-research" src="/public/images/bt_05_16_coverage_map.png"> The <a href="http://www.bto.org">British Trust for Ornithology</a> combines professional field ornithology and a network of over 60,000 volunteers to monitor change in the environment. I am part of the scientific team analysing these rich datasets which deliver the information used to plan and assess conservation action, and to inform decision-making processes for the benefits of society, wildlife and the natural world. I am also involved in research towards new and improved statistical methods for citizen science data sets.
</td></tr></table>

**Papers:**    
Robinson et al. (2022) [Extreme uncertainty and unquantifiable bias do not inform population sizes](https://doi.org/10.1073/pnas.2113862119)    
Boersch-Supan & Robinson (2021) [Integrating structured and unstructured citizen science data](https://www.biorxiv.org/content/10.1101/2021.03.03.431294v1)    
Boersch-Supan et al. (2019) [Robustness of simple avian population trend models](https://doi.org/10.1016/j.biocon.2019.108286)<br>
Isaac et al. (2019) [Data integration for large-scale models of species distributions](https://www.cell.com/trends/ecology-evolution/fulltext/S0169-5347(19)30255-1)<br>

**Reports:**    
Boersch-Supan & Robinson (2022) [Evaluating terrestrial bird trends for Welsh Statement Areas](https://data.jncc.gov.uk/data/39254c2d-37e7-46d9-ae63-4739228e1b0d/jncc-report-716.pdf)    
Mancini et al. (2022) [An introduction to model-based data integration for biodiversity assessments](https://data.jncc.gov.uk/data/1c774649-3cf8-4964-bf38-443a12accd09/introduction-to-model-based-data-integration.pdf)    

**Presentation:** [Integrating citizen science data sets to improve a national bird monitoring scheme](https://youtu.be/yejolG6GyPU)

## Seabird Ecology<a name="albatross">&nbsp;</a>

### Albatrosses, petrels, gulls
<table style="width:80%"><tr><td>
<img class="img-research" src="http://leah.johnson-gramacy.com/albatross/wp-content/gallery/at-sea/JC66-800px-wm-2573.jpg"> I am using a combination of mathematical and statistical models and several decades of observational data to understand the factors affecting the population dynamics of various flying seabirds by studying their bioenergetics and foraging movements. 
</td></tr></table>

**Papers:**<br> 
Johnston, Thaxter, Boersch-Supan et al. (2022) [Avoidance and attraction of gulls to offshore wind farms](https://doi.org/10.3354/meps13964)<br>
Johnson, Boersch-Supan et al. (2017) [Sampling scale and movement model identifiability](https://doi.org/10.1002/ece3.3461)<br>
Boersch-Supan et al. (2017) [Surface temperatures of albatross eggs and nests](https://doi.org/10.1080/01584197.2017.1406311)<br>
Borrelle, Boersch-Supan et al. (2016): [Recovery of seabirds on islands eradicated of invasive predators](../public/Borrelle_et_al_2016_prepress.pdf)<br>
#### Related Links
<a href="https://figshare.com/articles/Unravelling_physiological_and_ecological_determinants_of_albatross_chick_growth/1591048">Slides from my WSC2015 talk on metabolic models for albatrosses</a> 

### Foraging phenology and chick-provisioning in macaroni penguins<a name="weighbridge">&nbsp;</a>
<table style="width:80%"><tr><td>
<img class="img-research" src="/public/images/jumping_out_crop.gif"> With a global population of over 11 million individuals macaroni penguins are not only the most numerous penguins, but also the largest consumers of prey among all seabirds. I am using an automatic weighbridge to study body weights and foraging movements of marked and unmarked penguins at a study colony on Bird Island, South Georgia to better understand how macaronis forage during the breeding season, how they balance provisioning their chicks with the need to maintain their own body condition, and whether they modulate their foraging and migration phenology in response to local prey availability.
</td></tr></table>

This work relies on a data base of several hundred thousand body mass time series collected over a decade. This poses computational challenges for data processing and analysis. I have addressed part of this challenge by creating an [R wrapper](http://doi.org/10.21105/joss.00100) for some very fast time series similarity search algorithms.

**Paper:** Boersch-Supan (2016): [rucrdtw: Fast time series subsequence search in R](http://doi.org/10.21105/joss.00100)<br>
**Software:** [rucrdtw: R Bindings for the UCR Suite](https://cran.r-project.org/package=rucrdtw)


## Bayesian inference for models of biological systems<a name="deBInfer">&nbsp;</a>
<table style="width:80%"><tr><td>
<img class="img-research" src="/public/images/bayesian_inference.jpg"> Statistical methods for estimating model parameters are often challenged by the nature of ecological data. This is especially problematic in the presence of latent model states or parameters, when observations are noisy or when only sparse or incomplete observations are available.<br>
Bayesian approaches offer a coherent framework for parameter inference that can account for
multiple sources of uncertainty, while making use of prior information. This approach further
offers a rigorous methodology modeling the link between unobservable model states and
parameters, and observable quantities.
</td></tr></table>

**Papers:**    
Boersch-Supan et al. (2022): [Bayesian inference for models of moult duration and timing in birds](https://doi.org/10.48550/arXiv.2205.12120)    
Boersch-Supan & Robinson (2021) [Integrating structured and unstructured citizen science data](https://www.biorxiv.org/content/10.1101/2021.03.03.431294v1)    
Boersch-Supan & Johnson (2018): [Bayesian inference for dynamic energy budget models](https://doi.org/10.1016/j.seares.2018.07.014)<br>
Boersch-Supan et al. (2016): [deBInfer: Bayesian inference for dynamical models of biological systems in R](http://doi.org/10.1111/2041-210X.12679)    
    
**Software:**    
[https://github.com/pboesu/moultmcmc](https://github.com/pboesu/moultmcmc)    
[https://github.com/pboesu/debinfer](https://github.com/pboesu/debinfer)

## Disease and Vector Ecology<a name="disease">&nbsp;</a>

<table style="width:80%"><tr><td>
<img class="img-research" src="/public/images/Culex_sp.png">
More recently I have become interested in building models to answer questions from disease and vector ecology, and have contributed to studies investigating vector behaviour, environmental drivers of disease prevalence,  and other disease-related projects.
</td></tr></table>

#### Related Publications    
Nguyen, Boersch-Supan et al. 2021: [Interventions shift the thermal optimum for disease transmission](https://doi.org/10.1073/pnas.2017537118)    
Ryan, Lippi, Boersch-Supan et al. 2017: [Seasonal and Diel Variation in Mosquito Biting Rates](https://doi.org/10.1101/192773)    
Youker-Smith, Boersch-Supan et al. 2018: [Ranavirus in free living amphibians in constructed ponds](https://doi.org/10.1101/321299)

## Marine Ecology<a name="seamounts">&nbsp;</a>
<table style="width:80%"><tr><td>
<img class="img-research" src="http://news.bbcimg.co.uk/media/images/51453000/gif/_51453465_pic6.gif">Since my PhD I have studied a variety of marine systems, predominantly in open ocean environments. I have studied the effect of oceaninc fronts, seamounts, and islands on the distribution of pelagic biota and their predator-prey interactions and contributed to biogeographic and behavioural studies of marine animals ranging from pelagic microbes to hydrothermal vent animals. </td></tr></table>

#### Related Publications
O'Brian et al. (2020): [Drivers of octopus abundance and density](https://doi.org/10.1016/j.jembe.2020.151377)<br>
Djurhuus, Boersch-Supan et al. (2017): [Microbial biogeography tracks water-mass features](http://dx.doi.org/10.1098/rsos.170033)<br>
Letessier TB et al. (2016): [Enhanced pelagic biomass around coral atolls](http://dx.doi.org/10.3354/meps11675)<br>
Boersch-Supan et al. (2015): [The distribution of pelagic scattering layers across the Southwest Indian Ocean](http://dx.doi.org/10.1016/j.dsr2.2015.06.023)<br>
Laptikovsky V, Boersch-Supan PH et al. (2015): [Cephalopods of the Southwest Indian Ocean Ridge](http://dx.doi.org/10.1016/j.dsr2.2015.07.002)    
Letessier TB et al. (2015): [Seamount influences on mid-water shrimps (Decapoda) and gnathophausiids ...](http://dx.doi.org/10.1016/j.dsr2.2015.05.009)    
Boersch-Supan et al. (2012). [Elephant seal foraging dives track prey distribution, not temperature ...](http://dx.doi.org/10.3354/meps09890)    
Rogers et al. (2012): [Discovery of Southern Ocean deep-sea hydrothermal vent communities](http://dx.doi.org/10.1371/journal.pbio.1001234)    


