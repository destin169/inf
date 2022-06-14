############################# Devoir final2 ##################################### 
 Nom : Destin
Prenom :THEYO
code : DE170606
  ################ DEVOIR FINAL 2 ###################
  ##### IMPORTATION DS DONNEES #####################
######################j'ai choisi un ensemble de donnees 
sur la population rural par a la
croissance de la population du pays .
ces donnees consernent simplement haiti .
et ils provient dun ensemble de donnes relater par la banque mondiale .
pop_rural=population rural d haiti
crois_pop= croissance de la population d  haiti ##########

library('openxlsx')

blue<-read.xlsx("toh.xlsx")
as.numeric(blue$Annees)
blue
blue<-na.omit(blue)

######## graphique###############
######## nuage de point ########

library(ggplot2)
ggplot(data=blue,aes(x=pop_rural,y=crois_pop,color='red'))+
  geom_point(size=2,shape=1)+
  theme_classic()

######## graphique##############
######## graphique en ligne ####
ggplot(blue)+
  geom_line(aes(x=pop_rural,y=crois_pop,color='red'))


####### graphique #############
###### graphique en baton ####
ggplot(data=blue,aes(x=pop_rural,y=crois_pop,color='red'))+
  geom_bar(stat = "identity")






