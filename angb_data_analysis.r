################################################################################
#                                                                              # 
# angb_data_analysis.r                                                         # 
#                                                                              # 
# These codes show how to use the functions in the file:                       #
#    angb_data_extraction_functions.r                                          # 
# for for fitting binomial regression models.                                  # 
# You need specify at least three things for fitting a model:                  #
#                                                                              # 
# 1. The four letter coded name of the species corresponding to the response   #
# 2. The covariates or model parameters and it corresponds to the function you #
# use to make the data frame. Your options are:                                # 
#    a) get_dataframe_by_species(name)                                         # 
#    b) get_dataframe_by_size(name)                                            # 
#    c) get_dataframe_by_nuclear_species(name,nuclear_species)                 # 
#    d) get_dataframe_by_conspecific_species(name)                             # 
#    e) get_dataframe_by_reliability(name)                                     #                          
# Note that get_dataframe_by_nuclear_species(name,name) is the same as         #
# get_dataframe_by_species(name).                                              #
# 3. The response type is either Approach, Playback, Post, or a fourth category#
# Any which counts a response if any of the previous categories responded.     #
# 4. If grouping by nuclear species, you need to specify the species you are   #
# comparing to.                                                                # 
# Note, that in each reduced data frame, the categorical covariate is named    #
# 'Sizes' for convenience                                                      #
#                                                                              # 
################################################################################

# Source this function to get the data extraction functions
source('angb_data_extraction_functions.r')

# The following example fits SUFW Playback response to WBSC stimulus without the control row
#Get data for SUFW
(name = "SUFW") # Save the name in a variable
(df_full = get_dataframe_by_species(name)) # Look at ungrouped data
(df_reduced = get_dataframe_by_nuclear_species(name,"WBSC")) # Reduce the data by comparing with WBSC
# Fit the model to the reduced data
logit_model = glm(cbind(Playback,Present-Playback)~factor(Sizes),family=binomial, data=df_reduced[-1,]) # We removed the control row by putting the -1 in df_reduced[-1,].  We also refactored the Size

logit_model = glm(cbind(Any,Present-Any)~factor(Sizes),family=binomial, data=df_reduced[-1,]) # We removed the control row by putting the -1 in df_reduced[-1,].  We also refactored the Size
(summary(logit_model))

# The following codes loop through all possible analyses with logit link and no
# removing of outliers - something you might need to change by hand on a case
# by case basis.

# The vector species is a vector of strings that has the bird codes for which you'd like to do analysis
# You can also do any of this manually as well.
# Below I've defined three of them
#species = levels(au_csv_data$Species) # This puts the species in alphabetical order
#species = c("WBSC","SUFW","NHHE","REWA","EASP","BRTH","CRRO","PICU") # The last 3 are not of interest
species = c("WBSC","SUFW","NHHE","REWA","EASP")
names(species) = as.character(lapply(species, function(name){ paste("=============== ",name," ==============") })) 

# This will show you tables of each of the data frames. They are in order of species
# These also save the data in arrays of data.frames. This might be useful for looping later.
cat(" =====================================================================\n", 
    " In the following output we have the following indices coded as follows\n",
    sprintf("%s => [[%d]]\n", species, 1:5), 
    " =====================================================================\n")
(lapply(species, get_dataframe_by_species))
(lapply(species, get_dataframe_by_size)
(lapply(species, get_dataframe_by_reliability))
(matching_data = lapply(species, function(name) { lapply(c("WBSC","SUFW","NHHE","REWA"), function(compared_to) {get_dataframe_by_nuclear_species(name,compared_to)}) }) )

# This function does analysis on a given dataframe and does a zero cell correction with a given buffer
zero_correct_analyze = function( df, buf=.001 ) { 
  m = ncol(df)
  resp = df[,(m-3):m]  # Get response columns
  resp[resp < 1] = buf # Add buf percentage of present to zero responses
  df[,(m-3):m] = resp  # Update dataframe
  idx = 3:0	       # Name the indices so that output is readable
  names(idx) = names(df[,(m-3):m]) # Name them
  return(lapply( idx, function(i){ 
    summary( glm(cbind(df[,m-i],df[,m-4]-df[,m-i])~ . ,data=df[,1:(m-5)],family=binomial) ) 
  }))
}

# Hypothesis 0
cat(" ============= No Reduction model ================\n") 
lapply(species, function(name) {
  zero_correct_analyze( get_dataframe_by_species(name) )
})

# Hypotheis 1
cat(" ============= Hypothesis 1 - Size response ================\n") 
lapply(species, function(name) {
  zero_correct_analyze( get_dataframe_by_size(name) )
})

# Hypothesis 2 and 3 for WBSC
cat(" ============= Hypothesis 2 and 3 - Response to WBSC ================\n") 
lapply(species, function(name) {
  zero_correct_analyze( get_dataframe_by_species(name,"WBSC") )
})

# Hypothesis 2 and 3 for SUFW
cat(" ============= Hypothesis 2 and 3 - Response to SUFW ================\n") 
lapply(species, function(name) {
  zero_correct_analyze( get_dataframe_by_species(name,"SUFW") )
})

# Hypothesis 2 and 3 for NHHE
cat(" ============= Hypothesis 2 and 3 - Response to NHHE ================\n") 
lapply(species, function(name) {
  zero_correct_analyze( get_dataframe_by_species(name,"NHHE") )
})

# Hypothesis 2 and 3 for REWA
cat(" ============= Hypothesis 2 and 3 - Response to REWA ================\n") 
lapply(species, function(name) {
  zero_correct_analyze( get_dataframe_by_species(name,"REWA") )
})

# Hypothesis 4
cat(" ============= Hypothesis 4 - Response to Reliable Signal (same or different) ================\n") 
lapply(species, function(name) {
  zero_correct_analyze( get_dataframe_by_reliability(name) )
})

# Hypothesis 5
cat(" ============= Hypothesis 5 - Response to control ================\n") 
lapply(species, function(name) {
  zero_correct_analyze( get_dataframe_by_control(name),.8 )
})
