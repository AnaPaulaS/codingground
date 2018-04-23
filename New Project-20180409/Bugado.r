t3 = read.csv2("bla.csv", col.names = c("primeiro", "segundo", "terceiro", "quarto"))
t3
fim<- nrow(t3)-1
bla<-c(1)
soma<-c(0)

t4 = matrix(NA, nrow=nrow(t3), ncol=ncol(t3))

#soma caso iguais a ultima coluna
for(i in 1:fim){
    soma <- (0)
    aux <- i+1
    if(fim < aux)
        fim <- fim+1
        
    soma <- sum(soma,t3[i,4])

    for(j in aux:fim){
    
        if((t3[i,1] == t3[j,1])&&(t3[i,2] == t3[j,2])&&(t3[i,3] == t3[j,3])){
            print(paste("J=",j))
        
            #SOMENTE ESCREVO NA LINHA DE t4 VARIANDO A COLUNA POR K DE 1 A 3
            for(k in 1:(ncol(t4)-1))
                t4[bla,k] <- t3[i,k]
                
            soma <- soma + t3[j,4]
            
            #SOMA TA MUITO BUGADA MANO
            t4[bla,4] <- soma #OLHAR ISSO
            
            bla <- bla+1 #bla esta somente em t4
            
        }
    }
}
t4
