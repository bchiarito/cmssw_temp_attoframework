#! /bin/bash
echo "&&& Now Inside: payload_plotter.sh &&&"
echo "&&& Here there are all the input arguments &&&"
echo $@

echo ""
mv plotting_util.py CMSSW_10_6_20/src/PhysicsTools/NanoAODTools/python/fmk_plotting/
echo "&&& Run &&&"
python CMSSW_10_6_20/src/PhysicsTools/NanoAODTools/python/fmk_plotting/nanoaodtools_looper.py local --$5 --out $2 --lumi=$7 --loc=${12} --cut=${13} --photonchoice=${14} --plotter=${16} --phislice=${17} --year=$6
echo "&&& Done: payload_plotter.sh &&&"
