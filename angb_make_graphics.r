source('angb_data_extraction_functions.r')

# This makes a plot for each data set
get_mosaic_plot = function(df,resp) {
#M = matrix(1:16,nrow=4,ncol=4) # Set up matrix to duplicate pair permutations, e.g. response for (WBSC,SUFW) = (SUFW,WBSC)
#colnames <- rownames(M) <- c("NHHE","REWA","SUFW","WBSC")  
  display_dat = array( rep(-1,32,), dim=c(4,4,2)) 
  s1 = factor(df$Stimuli_1[-1]) 
  s2 = factor(df$Stimuli_2[-1]) 
  display_dat[cbind(s1,s2,1)] = df[-1,resp]
  display_dat[cbind(s2,s1,1)] = df[-1,resp]
  display_dat[cbind(s2,s1,2)] = df$Present[-1] - df[-1,resp] 
# Not sure how to coerce this into a mult-way contingency table... maybe should have started with that
# Something like provideDimnames(display_dat) 
}

