AU_data = read.csv('./Australia_response_data_1-27-15.csv')

# Determine Control
ctrl_idx = is.na(AU_data$Stimuli_2) # Find indices where there is a control

# This creates a true/false variable whether there is one species simulus or not 
one_species_idx = as.character(AU_data$Stimuli_1) == as.character(AU_data$Stimuli_2) # Find stimuli with matching code names
one_species_idx[is.na(one_species_idx)] = FALSE # Since logicals with NA default to NA, change those to false
AU_data$num_species = as.numeric(!one_species_idx) + 1 # This tricky line coerces one_species_idx to an integer and adds 1 if not one species
AU_data$num_species[ctrl_idx] = "control" # Coerce them to strings

# Determine whether there is any response
AU_data$Any_response = rowSums(AU_data[,8:10]) > 0

# Count responses to stimulus for each species
counts = table(num_species,Any_response,Species)

# This calculates pihat for each species
pi = counts[,2,] / rowSums(counts[,,]) 
