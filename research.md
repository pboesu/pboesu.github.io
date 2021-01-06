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
Boersch-Supan et al. (2019) [Robustness of simple avian population trend models](https://doi.org/10.1016/j.biocon.2019.108286)<br>   
Isaac et al. (2019) [Data integration for large-scale models of species distributions](https://www.cell.com/trends/ecology-evolution/fulltext/S0169-5347(19)30255-1)<br>   

**Presentation:** [Integrating citizen science data sets to improve a national bird monitoring scheme](https://youtu.be/yejolG6GyPU)

## Seabird Ecology<a name="albatross">&nbsp;</a>

### Albatrosses and petrels
<table style="width:80%"><tr><td>
<img class="img-research" src="http://leah.johnson-gramacy.com/albatross/wp-content/gallery/at-sea/JC66-800px-wm-2573.jpg"> Albatrosses are the largest seabirds and top-predators of the open ocean, but like other petrels their numbers are declining and many species are now endangered. I am using a combination of mathematical and statistical models and several decades of observational data to understand the factors affecting the population dynamics of these birds by studying their bioenergetics and foraging strategies. 
</td></tr></table>

**Papers:**   
Johnson, Boersch-Supan et al. (2017) [Sampling scale and movement model identifiability](https://doi.org/10.1002/ece3.3461)<br>   
Boersch-Supan et al. (2017) [Surface temperatures of albatross eggs and nests](https://doi.org/10.1080/01584197.2017.1406311)
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


## Bayesian inference for dynamic models of biological systems<a name="deBInfer">&nbsp;</a>
<table style="width:80%"><tr><td>
<img class="img-research" src="http://leah.johnson-gramacy.com/QED/wp-content/uploads/2015/12/pretty_pairs_full_model_teixdat_crop-1170x470.jpg"> Differential equations (DEs) are commonly used to model the temporal evolution of dynamic
systems in science and engineering, but statistical methods for comparing DE models to data
and for parameter inference are relatively poorly developed. This is especially problematic in
the presence of latent model states or parameters, when observations are noisy or when only a
small number of observed time points are available.<br>
Bayesian approaches offer a coherent framework for parameter inference that can account for
multiple sources of uncertainty, while making use of prior information. This approach further
offers a rigorous methodology modeling the link between unobservable model states and
parameters, and observable quantities.
</td></tr></table>

**Paper:** Boersch-Supan & Johnson (2018): [Two case studies detailing Bayesian inference for dynamic energy budget models](https://doi.org/10.1016/j.seares.2018.07.014)<br>

Boersch-Supan et al. (2016): [deBInfer: Bayesian inference for dynamical models of biological systems in R](http://doi.org/10.1111/2041-210X.12679)<br>
**Software:** [https://github.com/pboesu/debinfer](https://github.com/pboesu/debinfer)

## Disease and Vector Ecology<a name="disease">&nbsp;</a>

<table style="width:80%"><tr><td>
<img class="img-research" src="/public/images/Culex_sp.png">
More recently I have become interested in building models to answer questions from disease and vector ecology, and have contributed to studies investigating vector behaviour, environmental drivers of disease prevalence,  and other disease-related projects.
</td></tr></table>

#### Related Publications
Ryan, Lippi, Boersch-Supan et al. 2017: [Quantifying Seasonal and Diel Variation in Anopheline and Culex Human Biting Rates in Southern Ecuador](https://doi.org/10.1101/192773)  
Youker-Smith, Boersch-Supan et al. 2018:[Environmental drivers of ranavirus in free living amphibians in constructed ponds](https://doi.org/10.1101/321299)

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


