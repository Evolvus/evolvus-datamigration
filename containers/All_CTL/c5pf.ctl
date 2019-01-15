-- File Name		: C5PF.ctl

-- File Created for	: Control file for upload the Branch details Mster DaTa

-- Created By		: Ashok Kumar.S

-- Client		: ENBD

-- Created On		: 01-11-2011
-------------------------------------------------------------------

load data
truncate into table C5PF
fields terminated by x'09'
TRAILING NULLCOLS
(
   C5ATP,
   C5ATD,
   C5APP,
   C5ACS,
   C5II0A,
   C5CBR,
   C5CDR,
   C5CTR,
   C5DBR,
   C5DDR,
   C5DLM,
   C5DTR,
   C5HBN,
   C5HVS,
   C5ICI,
   C5IDBC,
   C5IFQC,
   C5RTMC,
   C5PEGC,
   C5IDBD,
   C5IFQD,
   C5RTMD,
   C5PEGD,
   C5IDI,
   C5LBN,
   C5LVS,
   C5MIAC,
   C5MIAD,
   C5PMIC,
   C5PMID,
   C5SCA0,
   C5SCA1,
   C5SCA2,
   C5SCA3,
   C5SCB0,
   C5SCB1,
   C5SCB2,
   C5SCB3,
   C5SCB4,
   C5SCC4,
   C5SCC5,
   C5SCD0,
   C5SCD2,
   C5SCD3,
   C5SCD4,
   C5SCD5,
   C5SCD6,
   C5SCD7,
   C5SCE0,
   C5SCE1,
   C5SCE4,
   C5SCE6,
   C5SCF0,
   C5SCF2,
   C5SCF3,
   C5SCF5,
   C5SCF6,
   C5SCF7,
   C5SCH0,
   C5SCH1,
   C5SCH2,
   C5SCH6,
   C5SC10,
   C5SC11,
   C5SC12,
   C5SC14,
   C5SC15,
   C5SC16,
   C5SC17,
   C5SC20,
   C5SC21,
   C5SC22,
   C5SC27,
   C5SC31,
   C5SC32,
   C5SC34,
   C5SC35,
   C5SC36,
   C5SC37,
   C5SC46,
   C5SC47,
   C5SC50,
   C5SC53,
   C5SC60,
   C5SC61,
   C5SC62,
   C5SC63,
   C5SC64,
   C5SC65,
   C5SC66,
   C5SC67,
   C5SC73,
   C5SC80,
   C5SC81,
   C5SC82,
   C5SC83,
   C5SC84,
   C5SC85,
   C5SC86,
   C5SC87,
   C5SC90,
   C5SC91,
   C5SC92,
   C5SC93,
   C5SC94,
   C5SC95,
   C5SC96,
   C5SC97,
   C5NS3,
   C5RETP,
   C5VTE,
   C5SC54,
   C5SCG0,
   C5SCG1,
   C5SCG2,
   C5SCG3,
   C5SCG4,
   C5SCG5,
   C5SCG6,
   C5SCG7,
   C5SCA4,
   C5SC33,
   C5OBR,
   C5ODR,
   C5APRD,
   C5SCC7,
   C5SCA5,
   C5IIFD,
   C5IBFD,
   C5VAFD,
   C5SCA6,
   C5IFQB,
   C5AIB7,
   C5SCI4,
   C5SCJ0,
   C5SCJ1,
   C5SCJ2,
   C5SCJ3,
   C5SCJ4,
   C5SCJ5,
   C5SCJ6,
   C5SCJ7,
   C5SCK0,
   C5SCK1,
   C5SCI7,
   C5CLT,
   C5ING,
   C5SCK2,
   C5SCK3,
   C5SCK4,
   C5SCK5,
   C5SCK6
)
