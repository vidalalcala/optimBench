--[[
  Benchmarking of conjugate gradient and affine sopt using the optimBench library
  Jose V. Alcala-Burgos
--]]

require 'torch'
require 'optimbench'

experiment = optimbench.experimentsDB()
experiment:load('allResults')
experiment:ComputeReferenceValues()
experiment:assessPerformance()
experiment:plotExperiments({}, {sgd_nesterov, cg, sgdols, })
