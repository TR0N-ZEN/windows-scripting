$WorkingDirectory = pwd
ping www.dslreports.com -f -l 1500 | outfile $WorkingDirectory\TestResult.csv