t1 = read.csv2("planejamento PPAG 2017.csv", col.names = c("id","uo","prog","acao","subacao","descricao","descricao_prod","qtde_prevista_orig","qtde_concedida","ind_meta_cumulativa","qtde_exec_ate_per","qtde_exec_orig","qtde_exec_red","qtde_exec_total","eficacia_final","valor_orcado","valor_emp_orig","valor_liquid","eficiencia_liq_final","sequencia_sub_acao","reforma"))

#nova tabela a ter linha somadas 
t2 = matrix(NA, nrow=nrow(t1), ncol=ncol(t1))
names(t2)[1:ncol(t1)] <- c("id","uo","prog","acao","subacao","descricao","descricao_prod","qtde_prevista_orig","qtde_concedida","ind_meta_cumulativa","qtde_exec_ate_per","qtde_exec_orig","qtde_exec_red","qtde_exec_total","eficacia_final","valor_orcado","valor_emp_orig","valor_liquid","eficiencia_liq_final","sequencia_sub_acao","reforma")

# pegar primeira linha t1[1, ]
# pegar primeira coluna t1[ ,1]

for(i in 1:nrow(t1)){
    for(j in i:nrow(t1)){
        if(t1[ ,i] == t1[ ,j] ){
            print("aqui")
        }
    }
}

#for(i in 1:nrow(t1)){
   #for(j in i:nrow(t1)){
     #print(j)
      #uo2 prog3 acao4 subacao5
      #if((t1[2,i] == t1[2,j]) && (t1[,i] == t1[3,j]) && (t1[4,i] == t1[4,j]) && (t1[5,i] == t1[5,j])){
        #t1[j,1]
        #nrow(t1)
        #dados.col2[i] += dados.col[j] #fazer para cada coluna tabela
      #}
    #}
#}
