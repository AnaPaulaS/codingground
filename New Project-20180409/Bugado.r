t3 = read.csv2("bla.csv", col.names = c("primeiro", "segundo", "terceiro", "quarto"))
t3
fim<- nrow(t3)-1
bla<-c(1)
soma<-c(0)

t4 = matrix(NA, nrow=nrow(t3), ncol=ncol(t3))

#soma caso iguais a ultima coluna
ft3 = read.csv2("bla.csv", col.names = c("primeiro", "segundo", "terceiro", "quarto"))
t3
fim<- nrow(t3)-1
bla<-c(1)
soma<-c(0)

t4 = matrix(NA, nrow=nrow(t3), ncol=ncol(t3))

#soma caso iguais a ultima coluna
for(i in 1:fim){

    for(k in 1:(ncol(t4)-1))
        t4[bla,k] <- t3[i,k]
    
    soma = t3[i,4]
    #print(paste("soma=",soma))
    
    aux <- i+1
    if(fim < aux)
        fim <- fim+1
        
    for(j in aux:nrow(t3)){ 
        if((t3[i,1] == t3[j,1])&&(t3[i,2] == t3[j,2])&&(t3[i,3] == t3[j,3])){
            soma = soma + t3[j,4]
        }else{
            i=j
            j=nrow(t3)+1
            soma = 0
        }
        #print(paste("J=",j))
    }
    bla <- bla+1 #linha em t4
    
}
t4
