################################################################################
#                                                                              # 
# This file provides functions for extracing counts for logit binomial regre-  # 
# ssion on bird call stimuli-response data collected by Billings (et.al.?) in  #
# the summer of 2013 from the ANGB Community in ???                            #
#                                                                              # 
# The raw data is contained in the CSV file:                                   # 
#                                                                              # 
#    Australia_response_data_1-27-15.csv                                       # 
#                                                                              # 
#  The name/location of the filename can be changed were indicated below       # 
#                                                                              # 
# FUNCTIONS                                                                    # 
#                                                                              # 
#                                                                              # 
################################################################################

# FILENAME HERE
# Change location/name of the data file 
au_csv_data = read.csv('./Australia_response_data_1-27-15.csv') # Load the csv file

get_dataframe_by_species = function(name) {
  sub = subset(au_csv_data, Species == name) # Subset of data with given species name.
  sub$Any = with(sub, as.numeric((Approach + Playback + Post) > 0) ) # Make a new variable for any type of response
  df = count_response( with(sub, data.frame(Stimuli_1,Stimuli_2,Present)) )  # Count all stimuli pairs for Present response
  df = merge(df,count_response( with(sub, data.frame(Stimuli_1,Stimuli_2,Approach)) )) # Count all stimuli pairs for Approach response and merge
  df = merge(df,count_response( with(sub, data.frame(Stimuli_1,Stimuli_2,Playback)) )) # Count all stimuli pairs for Approach response and merge
  df = merge(df,count_response( with(sub, data.frame(Stimuli_1,Stimuli_2,Post)) )) # Count all stimuli pairs for Approach response and merge
  df = merge(df,count_response( with(sub, data.frame(Stimuli_1,Stimuli_2,Any)) )) # Count all stimuli pairs for Approach response and merge
  idx1 = (df$Stimuli_1 == "CRRO" & !is.na(df$Stimuli_2)) # Find all control indices matched with with something not NA
  idx2 = (df$Stimuli_1 != "CRRO" & is.na(df$Stimuli_2)) # Find all indices where an NA is paired with a non-control
  df = df[!idx1&!idx2,] # Don't return those pairs
  idx3 = matrix(1:16,c(4,4))[lower.tri(matrix(1:16,c(4,4)),diag=T)] # This is a ridiculous way of extracting unique non-ordered tuples {a,b} = {b,a}
  idx3 = c(1,(idx3+1)) # Exclude CRRO control row from pairs
  df = df[idx3,] 
  rownames(df) = 1:nrow(df)
  return(df) 
}

count_response = function(df) { 
  df[,ncol(df)] = factor(df[,ncol(df)]) # These two lines makes sure that 0 and 1 are included
  levels(df[,ncol(df)]) = c(0,1)
  a_name = names(df)[ncol(df)] # Save the column name of response
  df = as.data.frame.table(table(df,useNA="ifany")) # Form a contingency table, then convert to data frame with counts
  df = subset(df, df[,ncol(df)-1] == 1) # Only count where there is a 1
  df = df[,-ncol(df)+1] # Remove the column of 1's
  names(df)[ncol(df)] = a_name # Rename the last colum from Freq to the reponse name
  return(df)
}

sum_columns_over_factor = function(df,factors) {
  out = sapply(c("Present","Approach","Playback","Post","Any"),function(x)(tapply(df[,x], factors , sum)))  # Sum up each column with the same factor level
  out = data.frame(out) 
  out = cbind(Sizes=factor(rownames(out)),out) # sapply returns the factor levels as row names
  rownames(out) = 1:nrow(out) # Rename rows to ordered indices 
  return(out)
}

# Hypothesis 2 - Nuclear Species
get_dataframe_by_nuclear_species = function(name,nuclear_species) {
  df = get_dataframe_by_species(name) # Get species dataframe
  idx = (df$Stimuli_1[-1] == nuclear_species) + (df$Stimuli_2[-1] == nuclear_species) + 1 # By adding true/false, we can obtain indices for the factor levels. Note the control row is excluded.
  levs = c("no-match","one-match","two-matches")	  # Define levels for indices above.
  nuclear_species = factor(c("control",levs[idx]))	  # Make factors and add control row back to levels
  return( sum_columns_over_factor(df, nuclear_species) )  # Return sums of each factor level
}

# Hypothesis 1 - Size
get_dataframe_by_size = function(name) { 
  df = get_dataframe_by_species(name) # Get species dataframe
  idx = (df$Stimuli_1[-1] == "REWA") + (df$Stimuli_2[-1] == "REWA") + 1 # By adding true/false, we indicate factor levels. Only REWA are large.
  levs = c("small-small","small-large","large-large")
  sizes = factor(c("control",levs[idx])) 
  return( sum_columns_over_factor(df, sizes) )
}

# Hypothesis 3 - Conspecifics - This is also tested in Hypothesis 2 when name = nuclear_species
get_dataframe_by_conspecific_species = function(name) { 
  df = get_dataframe_by_species(name) 
  idx = (df$Stimuli_1[-1] == name) + (df$Stimuli_2[-1] == name) + 1 # By adding true/false, we can indicate factor levels
  levs = c("none","one-species","two-species")
  conspecific_species = factor(c("control",levs[idx])) 
  return( sum_columns_over_factor(df, conspecific_species) )
}

# Hypothesis 4 - Reliability
get_dataframe_by_reliability = function(name) {
  df = get_dataframe_by_species(name)
  idx = (factor(df$Stimuli_1[-1]) == df$Stimuli_2[-1]) + 1
  levs = c("two-species","one-species")
  number_species = factor(c("control",levs[idx]))
  return( sum_columns_over_factor(df, number_species) )
} 
# Hypothesis 5 - Control Effect
get_dataframe_by_control = function(name) {
  df = get_dataframe_by_species(name)
  idx = (df$Stimuli_1 == 'CRRO') + 1
  levs = c("not-control","control")
  controls = factor(levs[idx]);
  ddf = sum_columns_over_factor(df,controls);
  return(ddf)
}

