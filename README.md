# r2SCAN Double-Hybrids

## Functional Implementation

- Pr²SCAN functionals can be build in Orca and Turbomole via the LibXC
- r²SCAN can be used with [libxc version 5.1.0](https://www.tddft.org/programs/libxc/changes/#510---2021-01-19) as `MGGA_X_R2SCAN` (id=497), `MGGA_C_R2SCAN` (id=498)
- [XCFun 2.1.0](https://github.com/dftlibs/xcfun/releases/tag/v2.1.0) also implements support for the r²SCAN functional
- Routines for r²SCAN functional implementation can be found at https://gitlab.com/dhamil/r2scan-subroutines (Fortran), routines for Vasp are included

- $\kappa$ Pr²SCAN functionals employ the regularized MP2 implemented in a development version of ORCA 5.0
- $\omega$ Pr²SCAN functionals utilize the error function splitting of the two-electron operator implemented in a development version of ORCA 5.0

- Libraries implementing DFT-D4 can be found at https://github.com/dftd4/dftd4 (Fortran) and https://github.com/dftd4/cpp-d4 (C++)
- NL dispersion correction DFT-NL (VV10, by Vydrov and Van Voorhis) can be used in Orca and Turbomole. For program-suits that do not support the usage of a scaling factor of the NL energy, one can scale the obtained NL energy by $NLScal$ manually.

## Functional Parameters

### Functional

All functionals employ the following fundamental relation.

$E_{XC}^{DH} = (1-a_{X})E_{X}^{DFT} + a_{X}E_{X}^{HF} + (1-a_{C})E_{C}^{DFT} + a_{C}(a_{SS}E_{C}^{SS-MP2}+a_{OS}E_{C}^{OS-MP2})$


| Functional | $a_X$ | $a_C$ | $a_{OS}$ | $a_{SS}$ | $\kappa$ | $\omega$ | 
| :---: | :---: | :---: | :---: | :---: | :---: | :---: |
|r²SCAN0-DH	|	1/2	<br>(0.5000)	|	1/6 <br>(0.1667) |	4/3 <br>(1.333)	|	0	|  |  |
|r²SCAN-CIDH	|	6<sup>-1/3</sup>	<br>(0.5500)	|	2/9 <br>(0.2223) |	4/3	 <br>(1.333)|	0	|  |  |
|r²SCAN-QIDH	|	3<sup>-1/3</sup>	<br>(0.6934)	|	4/9 <br>(0.445) |	4/3 <br>(1.333)	|	0	|  |  |
|r²SCAN0-2	|	2<sup>-1/3</sup>	<br>(0.7937)	|	2/3 <br>(0.6667) |	4/3 <br>(1.333)	|	0	|  |  |
|Pr²SCAN50	|	1/2	<br>(0.5000)	|	1/4 <br>(0.2500)	|	4/3 <br>(1.333)	|	0	|  |  |
|$\kappa$ Pr²SCAN50	|	1/2	<br>(0.5000)	|	3/10 <br>(0.3000)	|	4/3 <br>(1.333)	|	0	| 2.750000 |  |
|$\omega$ Pr²SCAN50	|	1/2	<br>(0.5000)	|	7/20 <br>(0.3500)	|	4/3 <br>(1.333)	|	0	|  | 0.214013 |

### Dispersion Correction

Dispersion correction parameters were fitted against the S22x5\cite{S22}, NCIBLIND10\cite{NCIBLIND10}, and S66x8\cite{S66_bench} (2022 revision by Martin \textit{et al.}\cite{s66x8_2022}) benchmark sets for non-covalent interaction energies by least-squares Levenberg-Marquardt minimization. All parameters were fitted close to the complete basis set limit using the large def2-QZVPP quadruple-$\zeta$ basis set.

#### D4
| Functional | $s_6$ | $s_8$ | $s_9$ | $a_1$ | $a_2$ |
| :---: | :---: | :---: | :---: | :---: | :---: |
|r²SCAN0-DH	|  |  |  |  |  |
|r²SCAN-CIDH	|  |  |  |  |  |
|r²SCAN-QIDH	|  |  |  |  |  |
|r²SCAN0-2	|  |  |  |  |  | |
|Pr²SCAN50	|  |  |  |  |  |
|$\kappa$ Pr²SCAN50	|  |  |  |  |  |
|$\omega$ Pr²SCAN50	|  |  |  |  |  |

#### NL
Non-local dispersion correction makes use of a scaling factor $NLScal$, that is given by $NLScal=1-a_C$.

| Method | $NLb$ | $NLScal$ |
| :---: | :---: | :---: |
|r²SCAN0-DH	|  |	 |
|r²SCAN-CIDH	|  |	 |
|r²SCAN-QIDH	|  |	 |
|r²SCAN0-2	|  |	 |
|Pr²SCAN50	|  |	 |
|$\kappa$ Pr²SCAN50	|  |	 |
|$\omega$ Pr²SCAN50	|  |	 |


## Benchmark Results

### Overview

### Individual Benchmark Sets


