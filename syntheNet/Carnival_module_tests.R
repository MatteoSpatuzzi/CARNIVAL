library(dplyr)

carnivalOptions <- defaultCplexCarnivalOptions()
carnivalOptions$solverPath <- ("/Applications/CPLEX_Studio201/cplex/bin/x86-64_osx/cplex")
carnivalOptions$outputFolder <- "/Users/darthvader/Desktop/Heidelberg/Bachelorarbeit/Code/Git/CARNIVAL/tests/test_runs/"


synth_perturbations_1 = c(I1 = 1)
synth_network_1 = data.frame(source = c("I1", "N1", "N1", "N2", "N3"),
                             interaction = c(1, 1, 1, -1, 1),
                             target = c("N1", "N2", "N3", "N3", "M1"),
                             stringsAsFactors = T)
synth_measurements_1 = c(M1 = -1)

synth_perturbations_1 <- t(as.data.frame(synth_perturbations_1))
synth_measurements_1 <- t(as.data.frame(synth_measurements_1))


Result_1<- runCARNIVAL(inputObj =  synth_perturbations_1,
                       netObj = synth_network_1,
                       measObj  = synth_measurements_1,
                       solver = "cplex",
                       solverPath = "/Applications/CPLEX_Studio201/cplex/bin/x86-64_osx/cplex",
                       betaWeight = 0
                       
)

####

synth_perturbations_2 = c(I1 = 1)
synth_network_2 = data.frame(source = c("I1", "N1", "N1", "N2", "N3"),
                             interaction = c(1, 1, 1, 1, 1),
                             target = c("N1", "N2", "N3", "N3", "M1"),
                             stringsAsFactors = T)
synth_measurements_2 = c(M1 = -1)

synth_perturbations_2 <- t(as.data.frame(synth_perturbations_1))
synth_measurements_2 <- t(as.data.frame(synth_measurements_1))

Result_2 <- runCARNIVAL(inputObj =  synth_perturbations_2,
                       netObj = synth_network_2,
                       measObj  = synth_measurements_2,
                       solver = "cplex",
                       solverPath = "/Applications/CPLEX_Studio201/cplex/bin/x86-64_osx/cplex",
                       betaWeight = 0
)


####

synth_perturbations_3 = c(I1 = 1, I2 = 1)
synth_network_3 = data.frame(source = c("I1", "N1", "N1", "N2", "N3", "N3", "N4", "N5", "N5", "N6", "N7"),
                             interaction = c(1, 1, 1, -1),
                             target = c("N1", "N2", "M1", "M1"),
                             stringsAsFactors = T)
synth_measurements_3 = c(M1 = -1)

synth_perturbations_3 <- t(as.data.frame(synth_perturbations_3))
synth_measurements_3 <- t(as.data.frame(synth_measurements_3))

Result_3 <- runCARNIVAL(inputObj =  synth_perturbations_3,
                        netObj = synth_network_3,
                        measObj  = synth_measurements_3,
                        solver = "cplex",
                        solverPath = "/Applications/CPLEX_Studio201/cplex/bin/x86-64_osx/cplex",
                        betaWeight = 0
)


####

synth_perturbations_4 = c(I1 = 1, I2 = 1)
synth_network_4 = data.frame(source = c("I1", "I2", "N1", "N2"),
                             interaction = c(1, 1, 1, -1),
                             target = c("N1", "N2", "M1", "M1"),
                             stringsAsFactors = T)
synth_measurements_4 = c(M1 = -1)

synth_perturbations_4 <- t(as.data.frame(synth_perturbations_4))
synth_measurements_4 <- t(as.data.frame(synth_measurements_4))

Result_4 <- runCARNIVAL(inputObj =  synth_perturbations_4,
                       netObj = synth_network_4,
                       measObj  = synth_measurements_4,
                       solver = "cplex",
                       solverPath = "/Applications/CPLEX_Studio201/cplex/bin/x86-64_osx/cplex",
                       betaWeight = 0
)

####

synth_perturbations_5 = c(I1 = 1, I2 = 1, I3 = 1)
synth_network_5 = data.frame(source = c("I1", "I2", "I3", "N1", "N1", "N1", "N2", "N2", "N3"),
                             interaction = c(1, 1, 1, 1, 1, 1, 1, 1, 1),
                             target = c("N1", "N2", "N3", "M1", "M2", "M3", "M2", "M3", "M3"),
                             stringsAsFactors = T)
synth_measurements_5 = c(M1 = 1, M2 = 1, M3 = 1)

synth_perturbations_5 <- t(as.data.frame(synth_perturbations_5))
synth_measurements_5 <- t(as.data.frame(synth_measurements_5))

Result_5 <- runCARNIVAL(inputObj =  synth_perturbations_5,
                        netObj = synth_network_5,
                        measObj  = synth_measurements_5,
                        solver = "cplex",
                        solverPath = "/Applications/CPLEX_Studio201/cplex/bin/x86-64_osx/cplex",
                        betaWeight = 0.0
)
Result_5


synth_perturbations_5_1 = c(I1 = 1, I2 = 1, I3 = 1)
synth_network_5_1 = data.frame(source = c("I1", "I1", "I1", "I2", "I2", "I3", "N1", "N2", "N3"),
                               interaction = c(1, 1, 1, 1, 1, 1, 1, 1, 1),
                               target = c("N1", "N2", "N3", "N2", "N3", "N3", "M1", "M2", "M3"),
                               stringsAsFactors = T)
synth_measurements_5_1 = c(M1 = 1, M2 = 1, M3 = 1)

synth_perturbations_5_1 <- t(as.data.frame(synth_perturbations_5_1))
synth_measurements_5_1 <- t(as.data.frame(synth_measurements_5_1))

Result_5_1 <- runCARNIVAL(inputObj =  synth_perturbations_5_1,
                        netObj = synth_network_5_1,
                        measObj  = synth_measurements_5_1,
                        solver = "cplex",
                        solverPath = "/Applications/CPLEX_Studio201/cplex/bin/x86-64_osx/cplex",
                        betaWeight = 0
)
Result_5_1


synth_perturbations_6 = c(I1 = 1, I2 = 1, I3 = 1)
synth_network_6 = data.frame(source = c("I1", "I2", "I2", "I3", "I3", "I3"),
                             interaction = c(1, 1, 1, 1, 1, 1),
                             target = c("M1", "M1", "M2", "M1", "M2", "M3"),
                             stringsAsFactors = T)
synth_measurements_6 = c(M1 = 1, M2 = 1, M3 = 1)

synth_perturbations_6 <- t(as.data.frame(synth_perturbations_6))
synth_measurements_6 <- t(as.data.frame(synth_measurements_6))


Result_6 <- runCARNIVAL(inputObj =  synth_perturbations_6,
                        netObj = synth_network_6,
                        measObj  = synth_measurements_6,
                        solver = "cplex",
                        solverPath = "/Applications/CPLEX_Studio201/cplex/bin/x86-64_osx/cplex",
                        betaWeight = 0.001
)


synth_perturbations_7 = c(I1 = 1, I2 = 1, I3 = 1, I4 = 1)
synth_network_7 = data.frame(source = c("I1", "I2", "I3", "I4", "I4", "I4", "I4"),
                             interaction = c(1, 1, 1, 1, 1, 1, 1),
                             target = c("M1", "M2", "M3", "M1", "M2", "M3", "M4"),
                             stringsAsFactors = T)
synth_measurements_7 = c(M1 = 1, M2 = 1, M3 = 1, M4 = 1)

synth_perturbations_7 <- t(as.data.frame(synth_perturbations_7))
synth_measurements_7 <- t(as.data.frame(synth_measurements_7))


Result_7 <- runCARNIVAL(inputObj =  synth_perturbations_7,
                        netObj = synth_network_7,
                        measObj  = synth_measurements_7,
                        solver = "cplex",
                        solverPath = "/Applications/CPLEX_Studio201/cplex/bin/x86-64_osx/cplex",
                        betaWeight = 0.001
)

synth_perturbations_8 = c(I1 = 1, I2 = 1, I3 = 1, I4 = 1, I5 = 1)
synth_network_8 = data.frame(source = c("I1", "I2", "I3", "I4", "I4", "I4", "I4", "I4", "I5"),
                             interaction = c(1, 1, 1, 1, 1, 1, 1, 1, 1),
                             target = c("M1", "M2", "M3", "M1", "M2", "M3", "M4", "M5", "M5"),
                             stringsAsFactors = T)
synth_measurements_8 = c(M1 = 1, M2 = 1, M3 = 1, M4 = 1, M5 = 1)

synth_perturbations_8 <- t(as.data.frame(synth_perturbations_8))
synth_measurements_8 <- t(as.data.frame(synth_measurements_8))


Result_8 <- runCARNIVAL(inputObj =  synth_perturbations_8,
                        netObj = synth_network_8,
                        measObj  = synth_measurements_8,
                        solver = "cplex",
                        solverPath = "/Applications/CPLEX_Studio201/cplex/bin/x86-64_osx/cplex",
                        betaWeight = 0.001
)


synth_perturbations_9 = c(I1 = 1, I2 = 1, I3 = 1, I4 = 1, I5 = 1, I6 = 1)
synth_network_9 = data.frame(source = c("I1", "I2", "I3", "I4", "I4", "I4", "I4", "I4", "I5", "I4", "I6"),
                             interaction = c(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
                             target = c("M1", "M2", "M3", "M1", "M2", "M3", "M4", "M5", "M5", "M6", "M6"),
                             stringsAsFactors = T)
synth_measurements_9 = c(M1 = 1, M2 = 1, M3 = 1, M4 = 1, M5 = 1, M6 = 1)

synth_perturbations_9 <- t(as.data.frame(synth_perturbations_9))
synth_measurements_9 <- t(as.data.frame(synth_measurements_9))


Result_9 <- runCARNIVAL(inputObj =  synth_perturbations_9,
                        netObj = synth_network_9,
                        measObj  = synth_measurements_9,
                        solver = "cplex",
                        solverPath = "/Applications/CPLEX_Studio201/cplex/bin/x86-64_osx/cplex",
                        betaWeight = 0.001
)


synth_perturbations_10 = c(I1 = 1, I2 = 1, I3 = 1, I4 = 1, I5 = 1, I6 = 1)
synth_network_10 = data.frame(source = c("I1", "I2", "I3", "I4", "I4", "I4", "I4", "I4", "I5", "I4", "I6"),
                             interaction = c(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
                             target = c("M1", "M1", "M1", "M1", "M2", "M3", "M4", "M5", "M1", "M6", "M1"),
                             stringsAsFactors = T)
synth_measurements_10 = c(M1 = 1, M2 = 1, M3 = 1, M4 = 1, M5 = 1, M6 = 1)

synth_perturbations_10 <- t(as.data.frame(synth_perturbations_10))
synth_measurements_10 <- t(as.data.frame(synth_measurements_10))


Result_10 <- runCARNIVAL(inputObj =  synth_perturbations_10,
                        netObj = synth_network_10,
                        measObj  = synth_measurements_10,
                        solver = "cplex",
                        solverPath = "/Applications/CPLEX_Studio201/cplex/bin/x86-64_osx/cplex",
                        betaWeight = 0.001
)

