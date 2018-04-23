t1 = read.csv2("planejamento PPAG 2017.csv", col.names = c("id","uo","prog","acao","subacao","descricao","descricao_prod","qtde_prevista_orig","qtde_concedida","ind_meta_cumulativa","qtde_exec_ate_per","qtde_exec_orig","qtde_exec_red","qtde_exec_total","eficacia_final","valor_orcado","valor_emp_orig","valor_liquid","eficiencia_liq_final","sequencia_sub_acao","reforma"))

#nova tabela a ter linha somadas
t2 = matrix(NA, nrow=nrow(t1), ncol=ncol(t1))
names(t2)[1:ncol(t1)] <- c("id","uo","prog","acao","subacao","descricao","descricao_prod","qtde_prevista_orig","qtde_concedida","ind_meta_cumulativa","qtde_exec_ate_per","qtde_exec_orig","qtde_exec_red","qtde_exec_total","eficacia_final","valor_orcado","valor_emp_orig","valor_liquid","eficiencia_liq_final","sequencia_sub_acao","reforma")

# printa primeira linha t1[1, ]
# printa primeira coluna t1[ ,1]

#somo se e somente se uo==prog==acao==subacao
#for(i in 1:nrow(t1)){
# for(j in i:nrow(t1)){
#uo = 2; prog = 3, acao = 4; subacao = 5
#  if((t1[i,2] == t1[j,2])&&(t1[i,3] == t1[j,3])&&(t1[i,4] == t1[j,4])&&(t1[i,5] == t1[j,5])){
#print(t1[i,7])

#  }
# }
#}


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
  
  for(j in aux:fim){
    if((t3[i,1] == t3[j,1])&&(t3[i,2] == t3[j,2])&&(t3[i,3] == t3[j,3])){
      
      for(k in 1:(ncol(t4)-1)){ #k varia coluna da linha bla
        t4[bla,k] <- t3[i,k]
        soma <- sum(t3[i,4], t3[j,4])
      }
      
      t4[bla,4] <- soma
      bla <- bla+1 #bla esta somente em t4
      
    }
  }
}
t4
