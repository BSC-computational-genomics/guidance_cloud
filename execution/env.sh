#
# SCRIPT GLOBAL VARIABLES
#

SCRIPT_DIR=$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )


#
# HELPER METHODS
#
set_env() {
  # System env variables
  export LC_ALL="C"

  # Guidance binary locations
  export BCFTOOLSBINARY=/usr/bin/bcftools
  export RSCRIPTBINDIR=/usr/bin/
  export SAMTOOLSBINARY=/usr/bin/samtools
  export PLINKBINARY=/usr/bin/plink
  export EAGLEBINARY=/usr/bin/eagle
  export QCTOOLBINARY=/usr/bin/qctool1.4
  export SHAPEITBINARY=/usr/bin/shapeit
  export IMPUTE2BINARY=/usr/bin/impute2
  export SNPTESTBINARY=/usr/bin/snptest_v2.5
  export MINIMAC3BINARY=/usr/bin/minimac3
  export MINIMAC4BINARY=/usr/bin/minimac4
  #export MINIMAC4BINARY=/apps/MINIMAC4/1.0.0/INTEL/bin/minimac4

  export RSCRIPTDIR="${HOME}"/R_SCRIPTS/
  export R_LIBS="~/R"

  # Guidance execution env variables
  # shellcheck source=./env_execution.sh
  # shellcheck disable=SC1091
  source "${HOME}"/env_execution.sh
}


#
# MAIN METHOD
#

main() {
  set_env
}


#
# ENTRY POINT
#

main "$@"
