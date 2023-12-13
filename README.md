# r²SCAN-Based Double-Hybrids

[![DOI](https://flat.badgen.net/badge/DOI/10.1063%205.0174988)](https://doi.org/10.1063/5.0174988)

## Functional Implementation

- Pr²SCAN functionals can be build in Orca and Turbomole via the LibXC
- r²SCAN can be used with [libxc version 5.1.0](https://www.tddft.org/programs/libxc/changes/#510---2021-01-19) as `MGGA_X_R2SCAN` (id=497), `MGGA_C_R2SCAN` (id=498)
- [XCFun 2.1.0](https://github.com/dftlibs/xcfun/releases/tag/v2.1.0) also implements support for the r²SCAN functional
- Routines for r²SCAN functional implementation can be found at https://gitlab.com/dhamil/r2scan-subroutines (Fortran), routines for Vasp are included

- $\kappa$ Pr²SCAN functionals employ the regularized MP2 implemented in a development version of ORCA 5.0
- $\omega$ Pr²SCAN functionals utilize the error function splitting of the two-electron operator implemented in a development version of ORCA 5.0

- Libraries implementing DFT-D4 can be found at https://github.com/dftd4/dftd4 (Fortran) and https://github.com/dftd4/cpp-d4 (C++)
- NL dispersion correction DFT-NL (VV10, by Vydrov and Van Voorhis) can be used in Orca and Turbomole. For program-suits that do not support the usage of a scaling factor of the NL energy, one can scale the obtained NL energy by $NLScal$ manually.

## ORCA Input Files

- [r²SCAN0-DH-D4](/input-files/r2scan0-dh-d4.inp)
- [r²SCAN-CIDH-D4](/input-files/r2scan-cidh-d4.inp)
- [r²SCAN-QIDH-D4](/input-files/r2scan-qidh-d4.inp)
- [r²SCAN0-2-D4](/input-files/r2scan0-2-d4.inp)

  
- [Pr²SCAN50-D4](input-files/pr2scan50-d4.inp)  / [NL](/input-files/pr2scan50-nl.inp)
- [Pr²SCAN69-D4](input-files/pr2scan69-d4.inp) / [NL](/input-files/pr2scan69-nl.inp)


- [kPr²SCAN50-D4](input-files/kpr2scan50-d4.inp) / [NL](/input-files/kpr2scan50-nl.inp)


- [wr²SCAN-D4](input-files/wr2scan-d4.inp) / [NL](/input-files/wr2scan-nl.inp)
- [wPr²SCAN50-D4](input-files/wpr2scan50-d4.inp) / [NL](/input-files/wpr2scan50-nl.inp)


## Functional Parameters

### Functional

All functionals employ the following fundamental relation.

$E_{XC}^{DH} = (1-a_{X})E_{X}^{DFT} + a_{X}E_{X}^{HF} + (1-a_{C})E_{C}^{DFT} + a_{C}(a_{SS}E_{C}^{SS-MP2}+a_{OS}E_{C}^{OS-MP2})$


| Functional | $a_X$ | $a_C$ | $a_{OS}$ | $a_{SS}$ | $\kappa$ | $\omega$ | 
| :---: | :---: | :---: | :---: | :---: | :---: | :---: |
| r²SCAN0-DH     | $1/2$               (0.50)   | $1/8$               (0.13)   | $4/3$              | 0     |  |  |
| r²SCAN-CIDH    | $6^{-1/3}$          (0.55)   | $1/6$               (0.17)   | $4/3$              | 0     |   |  |
| r²SCAN-QIDH    | $3^{-1/3}$          (0.69)   | $1/3$               (0.33)   | $4/3$              | 0     |   |  |
| r²SCAN0-2      | $2^{-1/3}$          (0.79)   | $1/2$               (0.50)   | $4/3$              | 0     |   |  |
| Pr²SCAN50      | $1/2$               (0.50)   | $1/4$               (0.25)   | $4/3$              | 0     |   |  |
| Pr²SCAN69      | $3^{-1/3}$          (0.69)   | $4/9$               (0.44)   | $4/3$              | 0     |   |  |
| $\kappa$ Pr²SCAN50      | $1/2$               (0.50)   | $3/10$              (0.30)   | $4/3$              | 0     |  2.7500 |  |
| $\omega$ Pr²SCAN50      | $1/2$               (0.50)   | $7/20$              (0.35)   | $4/3$              | 0     |   | 0.2140 |



### Dispersion Correction

Dispersion correction parameters were fitted against the S22x5, NCIBLIND10, and S66x8 (2022 revision by Martin et al.) benchmark sets for non-covalent interaction energies by least-squares Levenberg-Marquardt minimization. All parameters were fitted close to the complete basis set limit using the large def2-QZVPP quadruple-zeta basis set.

#### D4
| Functional | $s_6$ | $s_8$ | $s_9$ | $a_1$ | $a_2$ |
| :---: | :---: | :---: | :---: | :---: | :---: |
| r²SCAN0-DH       | 0.9424  | 0.3856             | 1.0000       | 0.4271       | 5.8565       |
| r²SCAN-CIDH      | 0.8666  | 0.5336             | 1.0000       | 0.4171       | 5.9125       |
| r²SCAN-QIDH      | 0.7867  | 0.2955             | 1.0000       | 0.4001       | 5.8300       |
| r²SCAN0-2        | 0.7386  | 0.0000 | 1.0000       | 0.4030       | 5.5142       |
| Pr²SCAN50        | 0.7964  | 0.3421             | 1.0000       | 0.4663       | 5.7916       |
| Pr²SCAN69        | 0.7167  | 0.0000 | 1.0000       | 0.4644       | 5.2563       |
| $\kappa$ Pr²SCAN50 | 0.8402 | 0.1212             | 1.0000       | 0.4382       | 5.8232       |
| $\omega$ Pr²SCAN50 | 0.8143 | 0.3842             | 1.0000       | 0.4135       | 5.8773       |

This Markdown table includes the provided data with appropriate formatting for GitHub. Adjustments 

 
#### NL
Non-local dispersion correction makes use of a scaling factor $a_{NL}$, that is given by $a_{NL}=1-a_C$.

| Method | $a_{NL}$ | $NL_{b}$ |
| :---: | :---: | :---: |
| Pr²SCAN50        | 0.7500      | 10.9207      |
| Pr²SCAN69        | 0.5556      | 9.0691       |
| $\kappa$ Pr²SCAN50 | 0.7000     | 10.6723      |
| $\omega$ Pr²SCAN50 | 0.6500     | 9.4149       |



