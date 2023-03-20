# Run logic optimization with the remap optimization enabled, save results in a checkpoint, report timing estimates
opt_design -directive AddRemap 
write_checkpoint -force $outputDir/post_opt
report_timing_summary -file $outputDir/post_opt_timing_summary.rpt