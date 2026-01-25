#!/bin/bash
set -e

# Check inputs
if [ "$#" -ne 2 ]; then
  echo "Usage: $0 <PHECODE> <POP>"
  echo "Example: $0 172 META"
  exit 1
fi

PHECODE=$1
POP=$2

# Load environment
source ~/.bashrc
conda activate imlabtools

echo "Starting islet PrediXcan runs"
echo "Phecode: $PHECODE"
echo "Population: $POP"
echo "--------------------------------------"

# Acinar (wrapper)
bash ~/aou_sc_predixcan/00wrapper.sh --phecode "$PHECODE" --pop "$POP" --ref Acinar --cell_type islet
echo "Finished Acinar"

python ~/aou_sc_predixcan/03run_predixcan.py --phecode "$PHECODE" --pop "$POP" --ref Activated_stellate --cell_type islet
echo "Finished Activated_stellate"

python ~/aou_sc_predixcan/03run_predixcan.py --phecode "$PHECODE" --pop "$POP" --ref Alpha --cell_type islet
echo "Finished Alpha"

python ~/aou_sc_predixcan/03run_predixcan.py --phecode "$PHECODE" --pop "$POP" --ref Beta --cell_type islet
echo "Finished Beta"

python ~/aou_sc_predixcan/03run_predixcan.py --phecode "$PHECODE" --pop "$POP" --ref Delta --cell_type islet
echo "Finished Delta"

python ~/aou_sc_predixcan/03run_predixcan.py --phecode "$PHECODE" --pop "$POP" --ref Ductal --cell_type islet
echo "Finished Ductal"

python ~/aou_sc_predixcan/03run_predixcan.py --phecode "$PHECODE" --pop "$POP" --ref Endothelial --cell_type islet
echo "Finished Endothelial"

python ~/aou_sc_predixcan/03run_predixcan.py --phecode "$PHECODE" --pop "$POP" --ref Epsilon --cell_type islet
echo "Finished Epsilon"

python ~/aou_sc_predixcan/03run_predixcan.py --phecode "$PHECODE" --pop "$POP" --ref Gamma --cell_type islet
echo "Finished Gamma"

python ~/aou_sc_predixcan/03run_predixcan.py --phecode "$PHECODE" --pop "$POP" --ref Immune --cell_type islet
echo "Finished Immune"

python ~/aou_sc_predixcan/03run_predixcan.py --phecode "$PHECODE" --pop "$POP" --ref Quiescent_stellate --cell_type islet
echo "Finished Quiescent_stellate"

echo "Finished ALL islet PrediXcan runs for phecode=$PHECODE pop=$POP"
