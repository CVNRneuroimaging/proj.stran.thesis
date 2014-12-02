Eight participants have poor epi-to-t1 alignment per Stella's email:

MA010
MA022
MA031
MA036
MA052
MA056
MA067
MA074



Inventory: looks like we have 35 motor runs with consistent file paths/names, and 38 T1s with consistent file path/names:
```bash
$ cd /data/birc/Atlanta/tranThesis/02.collectedData-TREAT_AS_SENSITIVE/mrSourceNiftisScreened
$ ls
MA001 MA003 MA010 MA014 MA021 MA023 MA027 MA029 MA033 MA036 MA039 MA043 MA046 MA049 MA052 MA055 MA058 MA065 MA067 MA072 MA076
MA002 MA007 MA012 MA020 MA022 MA025 MA028 MA031 MA035 MA038 MA041 MA044 MA048 MA050 MA053 MA056 MA062 MA066 MA070 MA074 MA079

$ ls | wc
      42      42     252

# motor EPIs:
$ ls -d */sessB | wc
      35      35     420

$ ls -d */sessB/motor | wc
      35      35     630

$ ls */sessB/motor/epi01.nii | wc
      35      35     980

$ ls */sessB/motor/epi01_MNI.nii.gz | wc
      35      35    1225

# T1s:
$ ls -d */sessA | wc
      38      38     456

$ ls -d */sessA/T1 | wc
      38      38     570

$ ls */sessA/T1/MA???-T1.nii | wc
      38      38    1064

$ ls */sessA/T1/MA???_MNI.nii.gz | wc
      38      38    1216
```

Confirmed that these files (two EPIs, two T1s) exist specifically for our eight participants of interest:
```bash
$ for blind in MA010 MA022 MA031 MA036 MA052 MA056 MA067 MA074; do \
   du -h ${blind}/sessB/motor/epi01.nii; \
   du -h ${blind}/sessB/motor/epi01_MNI.nii.gz; \
   du -h ${blind}/sessA/T1/MA???-T1.nii; \
   du -h ${blind}/sessA/T1/MA???_MNI.nii.gz; \
done

 41M    MA010/sessB/motor/epi01.nii
 14M    MA010/sessB/motor/epi01_MNI.nii.gz
 20M    MA010/sessA/T1/MA010-T1.nii
7.0M    MA010/sessA/T1/MA010_MNI.nii.gz
 41M    MA022/sessB/motor/epi01.nii
 12M    MA022/sessB/motor/epi01_MNI.nii.gz
 20M    MA022/sessA/T1/MA022-T1.nii
5.9M    MA022/sessA/T1/MA022_MNI.nii.gz
 41M    MA031/sessB/motor/epi01.nii
 15M    MA031/sessB/motor/epi01_MNI.nii.gz
 20M    MA031/sessA/T1/MA031-T1.nii
6.9M    MA031/sessA/T1/MA031_MNI.nii.gz
 41M    MA036/sessB/motor/epi01.nii
 13M    MA036/sessB/motor/epi01_MNI.nii.gz
 20M    MA036/sessA/T1/MA036-T1.nii
5.6M    MA036/sessA/T1/MA036_MNI.nii.gz
 41M    MA052/sessB/motor/epi01.nii
 13M    MA052/sessB/motor/epi01_MNI.nii.gz
 28M    MA052/sessA/T1/MA052-T1.nii
5.7M    MA052/sessA/T1/MA052_MNI.nii.gz
 41M    MA056/sessB/motor/epi01.nii
 13M    MA056/sessB/motor/epi01_MNI.nii.gz
 28M    MA056/sessA/T1/MA056-T1.nii
5.0M    MA056/sessA/T1/MA056_MNI.nii.gz
 41M    MA067/sessB/motor/epi01.nii
 15M    MA067/sessB/motor/epi01_MNI.nii.gz
 28M    MA067/sessA/T1/MA067-T1.nii
5.2M    MA067/sessA/T1/MA067_MNI.nii.gz
 41M    MA074/sessB/motor/epi01.nii
 13M    MA074/sessB/motor/epi01_MNI.nii.gz
 28M    MA074/sessA/T1/MA074-T1.nii
5.3M    MA074/sessA/T1/MA074_MNI.nii.gz
```

Generated 9-slice summary visualizations to see whether the eight misregistered participants have EPIs that look qualitatively different from the rest:
```bash
$ slicesdir */sessB/motor/epi01.nii
$ mv slicesdir ~/src.mywork.gitRepos/proj.stran.thesis/qc-regEpi2t1/slicesdir.epi01

$ slicesdir */sessB/motor/epi01_MNI.nii.gz
$ mv slicesdir ~/src.mywork.gitRepos/proj.stran.thesis/qc-regEpi2t1/slicesdir.epi01_MNI

$ open ~/src.mywork.gitRepos/proj.stran.thesis/qc-regEpi2t1/slicesdir.epi*/index.html
```


Generated 9-slice summary visualizations to see whether the eight misregistered participants have T1s that look qualitatively different from the rest:
```bash
$ slicesdir */sessA/T1/MA???-T1.nii
$ mv slicesdir slicesdir.t1

$ slicesdir */sessA/T1/MA???_MNI.nii.gz
$ mv slicesdir slicesdir.t1_MNI

$ open slicesdir.t1*/index.html

#deleted because of some visible facial anatomy:
rm -fr slicesdir.t1*
```
