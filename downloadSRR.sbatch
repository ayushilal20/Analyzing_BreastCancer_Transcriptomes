

#!/bin/bash
#SBATCH -JDownloadSRRfiles                      # Job name
#SBATCH -N4 --ntasks-per-node=8                 # Number of nodes and cores per node required
#SBATCH --mem-per-cpu=11G                       # Memory per core
#SBATCH -t800                                   # Duration of the job (Ex: 15 mins)
#SBATCH -oReport-SRRdownload.out                # Combined output and error messages file
#SBATCH --mail-type=BEGIN,END,FAIL              # Mail preferences
#SBATCH --mail-user=akrishna311@gatech.edu      # E-mail address for notifications

./downloadSRR.sh

