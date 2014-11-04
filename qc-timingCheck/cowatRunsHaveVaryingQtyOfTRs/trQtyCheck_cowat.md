M, 20141103:
=============
Stella consulted me on afni_proc error from single-session processing of participant MA001 COWA categories data from Andy's data:

`WARNING: '-stim_times 2' (LOCAL) run #1 has 1 times outside range 0 .. 282 [PSFB syndrome]`

Stella is using Andy's COWA category block onsets of 45, 105, 165, 225, and 285 seconds (15-second blocks). The one-line loop below reveals that all participants' COWA runs have 150 TRs except for four participants: MA001, MA002, MA003, MA007:

```bash
cd /data/birc/Atlanta/tranThesis/02.collectedData-TREAT_AS_SENSITIVE/mrSourceNiftisScreened
for file in MA*/*/language/*_MNI*; do echo -n "$file "; 3dinfo $file | grep steps; done > /tmp/stellaCowa_checkingTrQty.txt
```

The output of that loop is per-participant summary lines revealing four participants with COWA runs that have qty TRs != 150 :
```
MA001/sessA/language/epi01_MNI.nii.gz Number of time steps = 142  Time step = 2.00000s  Origin = 0.00000s
MA002/sessA/language/epi01_MNI.nii.gz Number of time steps = 157  Time step = 2.00000s  Origin = 0.00000s
MA003/sessA/language/epi01_MNI.nii.gz Number of time steps = 152  Time step = 2.00000s  Origin = 0.00000s
MA007/sessA/language/epi01_MNI.nii.gz Number of time steps = 152  Time step = 2.00000s  Origin = 0.00000s
```

...and that the rest of the participants have 150 TRs for COWA runs:

```
MA010/sessA/language/epi01_MNI.nii.gz Number of time steps = 150  Time step = 2.00000s  Origin = 0.00000s
MA012/sessA/language/epi01_MNI.nii.gz Number of time steps = 150  Time step = 2.00000s  Origin = 0.00000s
MA014/sessA/language/epi01_MNI.nii.gz Number of time steps = 150  Time step = 2.00000s  Origin = 0.00000s
MA020/sessA/language/epi01_MNI.nii.gz Number of time steps = 150  Time step = 2.00000s  Origin = 0.00000s
MA021/sessA/language/epi01_MNI.nii.gz Number of time steps = 150  Time step = 2.00000s  Origin = 0.00000s
MA022/sessA/language/epi01_MNI.nii.gz Number of time steps = 150  Time step = 2.00000s  Origin = 0.00000s
MA023/sessA/language/epi01_MNI.nii.gz Number of time steps = 150  Time step = 2.00000s  Origin = 0.00000s
MA025/sessA/language/epi01_MNI.nii.gz Number of time steps = 150  Time step = 2.00000s  Origin = 0.00000s
MA027/sessA/language/epi01_MNI.nii.gz Number of time steps = 150  Time step = 2.00000s  Origin = 0.00000s
MA028/sessA/language/epi01_MNI.nii.gz Number of time steps = 150  Time step = 2.00000s  Origin = 0.00000s
MA029/sessA/language/epi01_MNI.nii.gz Number of time steps = 150  Time step = 2.00000s  Origin = 0.00000s
MA031/sessA/language/epi01_MNI.nii.gz Number of time steps = 150  Time step = 2.00000s  Origin = 0.00000s
MA033/sessA/language/epi01_MNI.nii.gz Number of time steps = 150  Time step = 2.00000s  Origin = 0.00000s
MA035/sessA/language/epi01_MNI.nii.gz Number of time steps = 150  Time step = 2.00000s  Origin = 0.00000s
MA036/sessA/language/epi01_MNI.nii.gz Number of time steps = 150  Time step = 2.00000s  Origin = 0.00000s
MA038/sessA/language/epi01_MNI.nii.gz Number of time steps = 150  Time step = 2.00000s  Origin = 0.00000s
MA039/sessA/language/epi01_MNI.nii.gz Number of time steps = 150  Time step = 2.00000s  Origin = 0.00000s
MA041/sessA/language/epi01_MNI.nii.gz Number of time steps = 150  Time step = 2.00000s  Origin = 0.00000s
MA044/sessA/language/epi01_MNI.nii.gz Number of time steps = 150  Time step = 2.00000s  Origin = 0.00000s
MA046/sessA/language/epi01_MNI.nii.gz Number of time steps = 150  Time step = 2.00000s  Origin = 0.00000s
MA049/sessA/language/epi01_MNI.nii.gz Number of time steps = 150  Time step = 2.00000s  Origin = 0.00000s
MA052/sessA/language/epi01_MNI.nii.gz Number of time steps = 150  Time step = 2.00000s  Origin = 0.00000s
MA053/sessA/language/epi01_MNI.nii.gz Number of time steps = 150  Time step = 2.00000s  Origin = 0.00000s
MA055/sessA/language/epi01_MNI.nii.gz Number of time steps = 150  Time step = 2.00000s  Origin = 0.00000s
MA056/sessA/language/epi01_MNI.nii.gz Number of time steps = 150  Time step = 2.00000s  Origin = 0.00000s
MA058/sessA/language/epi01_MNI.nii.gz Number of time steps = 150  Time step = 2.00000s  Origin = 0.00000s
MA062/sessA/language/epi01_MNI.nii.gz Number of time steps = 150  Time step = 2.00000s  Origin = 0.00000s
MA065/sessA/language/epi01_MNI.nii.gz Number of time steps = 150  Time step = 2.00000s  Origin = 0.00000s
MA066/sessA/language/epi01_MNI.nii.gz Number of time steps = 150  Time step = 2.00000s  Origin = 0.00000s
MA067/sessA/language/epi01_MNI.nii.gz Number of time steps = 150  Time step = 2.00000s  Origin = 0.00000s
MA070/sessA/language/epi01_MNI.nii.gz Number of time steps = 150  Time step = 2.00000s  Origin = 0.00000s
MA074/sessA/language/epi01_MNI.nii.gz Number of time steps = 150  Time step = 2.00000s  Origin = 0.00000s
MA076/sessA/language/epi01_MNI.nii.gz Number of time steps = 150  Time step = 2.00000s  Origin = 0.00000s
MA079/sessA/language/epi01_MNI.nii.gz Number of time steps = 150  Time step = 2.00000s  Origin = 0.00000s
```

Just to be safe I confirmed that the motor runs from Andy's original data all have 90 TRs (2 s each), and that the restA runs all have 225 TRs (2 s each):

```
cd data/birc/Atlanta/tranThesis/UAMS_data/UAMS_data_xferred
for file in *motor*; do echo -n "$file "; 3dinfo $file | grep steps; done > /tmp/stellaMotor_checkingTrQty.txt
for file in *restA*; do echo -n "$file "; 3dinfo $file | grep steps; done > /tmp/stellaRestA_checkingTrQty.txt
```

Stella will consult Andy and her Atlanta mentors on how to proceed with the four nonstandard COWA runs. 

Stella's screenshot of the error is in this directory, as well as a screenshot of the HRF-convolved stimulus blocks demonstrating that the fifth block of COWA categories was truncated for MA001.
-stowler
