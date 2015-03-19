source('angb_data_extraction_functions.r')
species = c("WBSC","SUFW","NHHE","REWA","EASP","BRTH","CRRO","PICU")

print_tex_table = function(df,name,col_format) {
  cat("\\begin{tabular}{",col_format,"}
\\hline
\\multicolumn{",ncol(df),"}{|l|}{",name,"}\\\\
\\hline
")
  headers = gsub("_"," ",names(df)) # Get rid of undercores
  cat(headers[1],sprintf('& %s',headers[-1]),"\\\\ \n") 
  for (i in 1:nrow(df)) {
    cat(
	gsub("NA","none",sprintf("%s & %s",df[i,1],df[i,2])),
	#sprintf('& %s',df[i,c(-1,-2)]),
        sprintf("& %s, %.2f",df[i,c(-1,-2)],df[i,c(-1,-2)]/df[i,"Present"]),
	"\\\\ \n"
	)
  }
  cat(
"\\hline
\\end{tabular} \n")
}
garbage = lapply(species, 
       function(name){ 
	 cat("\\begin{minipage}{.45\\textwidth}\n")
	 print_tex_table(get_dataframe_by_species(name),paste("Species: ",name),"|ccc|llll|") 
	 cat("\\end{minipage}\n\\begin{minipage}{.45\\textwidth}")
	 print_tex_table(get_dataframe_by_size(name),paste("Species to size: ",name),"|cc|llll|")
	 print_tex_table(get_dataframe_by_reliability(name),paste("Reliability: ",name),"|cc|llll|" )
	 cat("\\end{minipage}")
	 cat("\\\\ \\begin{center}")
	 print_tex_table(get_dataframe_by_nuclear_species(name,"WBSC"),paste(name," vs. WBSC"),"|cc|llll|" )
	 print_tex_table(get_dataframe_by_nuclear_species(name,"SUFW"),paste(name," vs. SUFW"),"|cc|llll|" )
	 cat("\\\\")
	 print_tex_table(get_dataframe_by_nuclear_species(name,"NHHE"),paste(name," vs. NHHE"),"|cc|llll|" )
	 print_tex_table(get_dataframe_by_nuclear_species(name,"REWA"),paste(name," vs. REWA"),"|cc|llll|" )
	 cat("\\\\")
	 print_tex_table(get_dataframe_by_control(name),paste("Control: name"),"|cc|llll|" )
	 cat("\\\\ \\end{center}")
	 cat("\\newpage\n")
       })
