lock throttle to 1. // To set Throttle to 100%

// For Science - GooExperiment
SET P TO SHIP:PARTSNAMED("GooExperiment")[0].
SET M TO P:GETMODULE("ModuleScienceExperiment").
M: DEPLOY.
WAIT UNTIL M:HASDATA. // To check for DATA
M:TRANSMIT. // TRANSMIT to KSC

WAIT 5. // waiting for 5 sec

// For Science - sensorTHERMOMETER
SET P TO SHIP:PARTSNAMED("sensorTHERMOMETER")[0].
SET M TO P:GETMODULE("ModuleScienceExperiment").
M: DEPLOY.  // Start the experiment
WAIT UNTIL M:HASDATA.
M:TRANSMIT. // TRANSMIT to KSC

WAIT 5.

print "take-off".
stage. // Stage to next process.
print "Script-complete".