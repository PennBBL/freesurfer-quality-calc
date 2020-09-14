#!/bin/bash
#path=`dirname $0`
#sleep 1
#cd $path
#echo "This bash script will create table from ?.stats files"
#echo "Written by Jamaan Alghamdi & Dr. Vanessa Sluming"
#echo "University of Liverpool"
#echo "jamaan.alghamdi@gmail.com"
#echo "http://www.easyneuroimaging.com"
#echo "20/12/2010

#"
subj=$1
session_label=$2

#export FREESURFER_HOME=/opt/freesurfer
#sleep 1

INPUT_DIR=/flywheel/v0/input
#SUBJECTS_DIR=${FREESURFER_HOME}/subjects
#InDir=`find ${INPUT_DIR}/fmriprepdir/*/freesurfer/sub-*/ -name 'stats'`

cd ${INPUT_DIR}/fmriprepdir/*/freesurfer/
export SUBJECTS_DIR=$PWD
#subj=`ls -d ./sub* | cut -d '/' -f 2`
#asegstats2table -i ${InDir}/wmparc.stats --delimiter comma --meas volume --skip --all-segs --tablefile wmparc_stats.csv
python2 ${FREESURFER_HOME}/bin/asegstats2table --subjects ${subj} --delimiter comma --meas volume --skip --statsfile wmparc.stats --all-segs --tablefile /flywheel/v0/output/${subj}_${session_label}_wmparc_stats.csv
python2 ${FREESURFER_HOME}/bin/asegstats2table --subjects ${subj} --delimiter comma --meas volume --skip --tablefile /flywheel/v0/output/${subj}_${session_label}_aseg_stats.csv
python2 ${FREESURFER_HOME}/bin/aparcstats2table --subjects ${subj} --delimiter comma --hemi lh --meas volume --skip --tablefile /flywheel/v0/output/${subj}_${session_label}_aparc_volume_lh.csv
#python2 ${FREESURFER_HOME}/bin/asegstats2table --subjects ${subj} --meas volume --skip --statsfile wmparc.stats --all-segs --tablefile wmparc_stats.csv


python2 ${FREESURFER_HOME}/bin/aparcstats2table --subjects ${subj} --delimiter comma --hemi lh --meas thickness --skip --tablefile /flywheel/v0/output/${subj}_${session_label}_aparc_thickness_lh.csv
python2 ${FREESURFER_HOME}/bin/aparcstats2table --subjects ${subj} --delimiter comma --hemi lh --meas area --skip --tablefile /flywheel/v0/output/${subj}_${session_label}_aparc_area_lh.csv
python2 ${FREESURFER_HOME}/bin/aparcstats2table --subjects ${subj} --delimiter comma --hemi lh --meas meancurv --skip --tablefile /flywheel/v0/output/${subj}_${session_label}_aparc_meancurv_lh.csv
python2 ${FREESURFER_HOME}/bin/aparcstats2table --subjects ${subj} --delimiter comma --hemi rh --meas volume --skip --tablefile /flywheel/v0/output/${subj}_${session_label}_aparc_volume_rh.csv
python2 ${FREESURFER_HOME}/bin/aparcstats2table --subjects ${subj} --delimiter comma --hemi rh --meas thickness --skip --tablefile /flywheel/v0/output/${subj}_${session_label}_aparc_thickness_rh.csv
python2 ${FREESURFER_HOME}/bin/aparcstats2table --subjects ${subj} --delimiter comma --hemi rh --meas area --skip --tablefile /flywheel/v0/output/${subj}_${session_label}_aparc_area_rh.csv
python2 ${FREESURFER_HOME}/bin/aparcstats2table --subjects ${subj} --delimiter comma --hemi rh --meas meancurv --skip --tablefile /flywheel/v0/output/${subj}_${session_label}_aparc_meancurv_rh.csv
python2 ${FREESURFER_HOME}/bin/aparcstats2table --subjects ${subj} --delimiter comma --hemi lh --parc aparc.a2009s --meas volume --skip -t /flywheel/v0/output/${subj}_${session_label}_lh_a2009s_volume.csv
python2 ${FREESURFER_HOME}/bin/aparcstats2table --subjects ${subj} --delimiter comma --hemi lh --parc aparc.a2009s --meas thickness --skip -t /flywheel/v0/output/${subj}_${session_label}_lh_a2009s_thickness.csv
python2 ${FREESURFER_HOME}/bin/aparcstats2table --subjects ${subj} --delimiter comma --hemi lh --parc aparc.a2009s --meas area --skip -t /flywheel/v0/output/${subj}_${session_label}_lh_a2009s_area.csv
python2 ${FREESURFER_HOME}/bin/aparcstats2table --subjects ${subj} --delimiter comma --hemi lh --parc aparc.a2009s --meas meancurv --skip -t /flywheel/v0/output/${subj}_${session_label}_lh_a2009s_meancurv.csv
python2 ${FREESURFER_HOME}/bin/aparcstats2table --subjects ${subj} --delimiter comma --hemi rh --parc aparc.a2009s --meas volume --skip -t /flywheel/v0/output/${subj}_${session_label}_rh_a2009s_volume.csv
python2 ${FREESURFER_HOME}/bin/aparcstats2table --subjects ${subj} --delimiter comma --hemi rh --parc aparc.a2009s --meas thickness --skip -t /flywheel/v0/output/${subj}_${session_label}_rh_a2009s_thickness.csv
python2 ${FREESURFER_HOME}/bin/aparcstats2table --subjects ${subj} --delimiter comma --hemi rh --parc aparc.a2009s --meas area --skip -t /flywheel/v0/output/${subj}_${session_label}_rh_a2009s_area.csv
python2 ${FREESURFER_HOME}/bin/aparcstats2table --subjects ${subj} --delimiter comma --hemi rh --parc aparc.a2009s --meas meancurv --skip -t /flywheel/v0/output/${subj}_${session_label}_rh_a2009s_meancurv.csv
python2 ${FREESURFER_HOME}/bin/aparcstats2table --subjects ${subj} --delimiter comma --hemi lh --parc BA --meas volume --skip -t /flywheel/v0/output/${subj}_${session_label}_lh_BA_volume.csv
python2 ${FREESURFER_HOME}/bin/aparcstats2table --subjects ${subj} --delimiter comma --hemi lh --parc BA --meas thickness --skip -t /flywheel/v0/output/${subj}_${session_label}_lh_BA_thickness.csv
python2 ${FREESURFER_HOME}/bin/aparcstats2table --subjects ${subj} --delimiter comma --hemi lh --parc BA --meas area --skip -t /flywheel/v0/output/${subj}_${session_label}_lh_BA_area.csv
python2 ${FREESURFER_HOME}/bin/aparcstats2table --subjects ${subj} --delimiter comma --hemi lh --parc BA --meas meancurv --skip -t /flywheel/v0/output/${subj}_${session_label}_lh_BA_meancurv.csv
python2 ${FREESURFER_HOME}/bin/aparcstats2table --subjects ${subj} --delimiter comma --hemi rh --parc BA --meas volume --skip -t /flywheel/v0/output/${subj}_${session_label}_rh_BA_volume.csv
python2 ${FREESURFER_HOME}/bin/aparcstats2table --subjects ${subj} --delimiter comma --hemi rh --parc BA --meas thickness --skip -t /flywheel/v0/output/${subj}_${session_label}_rh_BA_thickness.csv
python2 ${FREESURFER_HOME}/bin/aparcstats2table --subjects ${subj} --delimiter comma --hemi rh --parc BA --meas area --skip -t /flywheel/v0/output/${subj}_${session_label}_rh_BA_area.csv
python2 ${FREESURFER_HOME}/bin/aparcstats2table --subjects ${subj} --delimiter comma --hemi rh --parc BA --meas meancurv --skip -t /flywheel/v0/output/${subj}_${session_label}_rh_BA_meancurv.csv
