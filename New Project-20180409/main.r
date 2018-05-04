t1 = read.csv2("planejamento PPAG 2017.csv", col.names = c("id","uo","prog","acao","subacao","descricao","descricao_prod","qtde_prevista_orig","qtde_concedida","ind_meta_cumulativa","qtde_exec_ate_per","qtde_exec_orig","qtde_exec_red","qtde_exec_total","eficacia_final","valor_orcado","valor_emp_orig","valor_liquid","eficiencia_liq_final","sequencia_sub_acao","reforma"))

#nova tabela a ter linha somadas
t2 = matrix(NA, nrow=nrow(t1), ncol=ncol(t1))
names(t2)[1:ncol(t1)] <- c("id","uo","prog","acao","subacao","descricao","descricao_prod","qtde_prevista_orig","qtde_concedida","ind_meta_cumulativa","qtde_exec_ate_per","qtde_exec_orig","qtde_exec_red","qtde_exec_total","eficacia_final","valor_orcado","valor_emp_orig","valor_liquid","eficiencia_liq_final","sequencia_sub_acao","reforma")


#somo se e somente se uo==prog==acao==subacao
#for(i in 1:nrow(t1)){
# for(j in i:nrow(t1)){
#uo = 2; prog = 3, acao = 4; subacao = 5
#if((t1[i,2] == t1[j,2])&&(t1[i,3] == t1[j,3])&&(t1[i,4] == t1[j,4])&&(t1[i,5] == t1[j,5])){
#print(t1[i,7])
#}
#}
#}


t3 = read.csv2("bla.csv", col.names = c("primeiro", "segundo", "terceiro", "quarto"))

fim<- nrow(t3)-1
bla=1
soma=0
coluna <- matrix(NA, nrow=nrow(t3), ncol=1)
t4 = matrix(NA, nrow=nrow(t3), ncol=ncol(t3))

t3<-t3[order(t3$primeiro, t3$segundo, t3$terceiro),] 
t3


i=1
#while(i <= fim){# aqui o baguio funfa
#    print(i)
#    i=i+1
#}

while(i <= fim){
    #print(paste("iTopo",i))
    
    #se tira isso da loop infinito MANO
    for(k in 1:(ncol(t4)-1))
        t4[bla,k] <- t3[i,k]
        
    
    soma = t3[i,4]
    #print(paste("soma=",soma))
    
    aux <- i+1
    if(fim < aux)
        fim <- fim+1

    j=aux
    while(j <= nrow(t3)){
        if((t3[i,1] == t3[j,1])&&(t3[i,2] == t3[j,2])&&(t3[i,3] == t3[j,3])){
            soma = soma + t3[j,4]
            #print(paste("somaFim",soma))
        }else{
            i=j-1
            j=nrow(t3)
            soma = 0
        }
        j=j+1
    }
    bla = bla+1 #linha em t4
    print(i)
    i=i+1
}
#coluna
#t3
#t4
