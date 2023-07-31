# r2SCAN Double-Hybrids

## Functional Implementation

- Pr²SCAN-D4 functionals can be build in Orca and Turbomole via the LibXC
- r²SCAN can be used with [libxc version 5.1.0](https://www.tddft.org/programs/libxc/changes/#510---2021-01-19) as `MGGA_X_R2SCAN` (id=497), `MGGA_C_R2SCAN` (id=498)
- [XCFun 2.1.0](https://github.com/dftlibs/xcfun/releases/tag/v2.1.0) also implements support for the r²SCAN functional
- routines for r²SCAN functional implementation can be found at https://gitlab.com/dhamil/r2scan-subroutines (Fortran), routines for Vasp are included

- [kpr2scan...]
- [wpr2scan...]

- Libraries implementing DFT-D4 can be found at https://github.com/dftd4/dftd4 (Fortran) and https://github.com/dftd4/cpp-d4 (C++)
- [NL] mit NLScal

## Functional Parameters

### Functional

$E_{XC}^{DH} = (1-a_{X})E_{X}^{DFT} + a_{X}E_{X}^{HF} + (1-a_{C})E_{C}^{DFT} + a_{C}(a_{SS}E_{C}^{SS-MP2}+a_{OS}E_{C}^{OS-MP2})$

| Method | a<sub>X</sub> | a<sub>C</sub> | a<sub>OS</sub> | a<sub>SS</sub> | 
| --- | --- | --- | --- | --- |
|r²SCAN0-DH	|	1/2	(0.50)	|	1/6	|	4/3	|	0	|
|r²SCAN0-2	|	2<sup>-1/3</sup>	(0.79)	|	2/3	|	4/3	|	0	|
|r²SCAN-CIDH	|	6<sup>-1/3</sup>	(0.55)	|	2/9	|	4/3	|	0	|
|r²SCAN-QIDH	|	3<sup>-1/3</sup>	(0.69)	|	4/9	|	4/3	|	0	|
|Pr²SCAN50	|	1/2	(0.50)	|	0.25	|	4/3	|	0	|
|$\kappa$Pr²SCAN50	|	1/2	(0.50)	|	0.30	|	4/3	|	0	|
|$\omega$Pr²SCAN50	|	1/2	(0.50)	|	0.35	|	4/3	|	0	|

### Dispersion Correction

#### D4

#### NL

## Benchmark Results

### Main-Group Chemistry

#### GMTKN55

### Transition-Metal and Metal-Organic Chemistry
