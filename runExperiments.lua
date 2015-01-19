require 'torch'

require 'optimbench' 
experiment = optimbench.experimentsDB()
experiment:runExperiments()
experiment:save('allResults')
