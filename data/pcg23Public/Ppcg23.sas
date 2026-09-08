PROC FORMAT;

/* AGEGR DIFAGEGR */
   VALUE AGE_GROUP_CODES
      20 	= "20: Ages 24 or younger"
      25 	= "25: Ages 25-29"
      30 	= "30: Ages 30-34"
      35 	= "35: Ages 35-39"
      40 	= "40: Ages 40-44"
      45 	= "45: Ages 45-49"
      50 	= "50: Ages 50-54"
      55 	= "55: Ages 55-59"
      60 	= "60: Ages 60-64"
      65 	= "65: Ages 65-69"
      70 	= "70: Ages 70-75"
      98 	= "98: Logical Skip"
       . 	= "Missing"
   ;

/* GRLOANR GROWER UGLOANR UGOWER */
   VALUE $AMOUNT_BORROW_OWE_2D
      "01"	= "01: Did not earn a degree at this level"
      "02"	= "02: $0"
      "03"	= "03: 1 - 10000"
      "04"	= "04: 10001-20000"
      "05"	= "05: 20001-30000"
      "06"	= "06: 30001-40000"
      "07"	= "07: 40001-50000"
      "08"	= "08: 50001-60000"
      "09"	= "09: 60001-70000"
      "10"	= "10: 70001-80000"
      "11"	= "11: 80001-90000"
      "12"	= "12: 90001 or more"
      " " 	= "Missing"
   ;

/* BAIND */
   VALUE $BAIND_CODES
      "M"	= "M: Missing, unknown whether respondent received a BA-level degree"
      "N"	= "N: No, respondent did not receive a BA-level degree"
      "Y"	= "Y: Yes, respondent received a BA-level degree"
      " " 	= "Missing"
   ;

/* BACRN21C CARN21C CCCRN21C D2CRN21C D3CRN21C D4CRN21C D5CRN21C HDCRN21C MRCRN21C */
   VALUE $CARN21C
      "01"	= "01: Associate's Colleges: High Transfer-High Traditional"
      "02"	= "02: Associate's Colleges: High Transfer-Mixed Traditional/Nontraditional"
      "03"	= "03: Associate's Colleges: High Transfer-High Nontraditional"
      "04"	= "04: Associate's Colleges: Mixed Transfer/Career & Technical-High Traditional"
      "05"	= "05: Associate's Colleges: Mixed Transfer/Career & Technical-Mixed Traditional/Nontraditional"
      "06"	= "06: Associate's Colleges: Mixed Transfer/Career & Technical-High Nontraditional"
      "07"	= "07: Associate's Colleges: High Career & Technical-High Traditional"
      "08"	= "08: Associate's Colleges: High Career & Technical-Mixed Traditional/Nontraditional"
      "09"	= "09: Associate's Colleges: High Career & Technical-High Nontraditional"
      "13"	= "13: Special Focus Two-Year Institutions"
      "14"	= "14: Baccalaureate/Associate's Colleges: Associate's Dominant"
      "15"	= "15: Doctoral Universities: Very High Research Activity"
      "16"	= "16: Doctoral Universities: High Research Activity"
      "17"	= "17: Doctoral/Professional Universities"
      "18"	= "18: Master's Colleges & Universities: Larger Programs"
      "19"	= "19: Master's Colleges & Universities: Medium Programs"
      "20"	= "20: Master's Colleges & Universities: Small Programs"
      "21"	= "21: Baccalaureate Colleges: Arts & Sciences Focus"
      "22"	= "22: Baccalaureate Colleges: Diverse Fields"
      "23"	= "23: Baccalaureate/Associate's Colleges: Mixed Baccalaureate/Associate's"
      "24"	= "24: Special Focus Four-Year: Faith-Related Institutions"
      "25"	= "25: Special Focus Four-Year: Medical Schools & Centers"
      "26"	= "26: Special Focus Four-Year: Other Health Professions Schools"
      "27"	= "27: Special Focus Four-Year: Research Institutions"
      "29"	= "29: Special Focus Four-Year: Business & Management Schools"
      "30"	= "30: Special Focus Four-Year: Arts, Music & Design Schools"
      "31"	= "31: Special Focus Four-Year: Law Schools"
      "32"	= "32: Special Focus Four-Year: Other Special Focus Institutions, including Engineering and Other Technology-Related Schools"
      "L"	= "L: Logical Skip"
      "M"	= "M: Carnegie classification information is not available"
      " " 	= "Missing"
   ;

/* CTZN */
   VALUE $CITIZENSHIP_CODES
      "1"	= "1: U.S. citizen, Native"
      "2"	= "2: U.S. citizen, Naturalized"
      "3"	= "3: Non-U.S. citizen, Permanent resident"
      "4"	= "4: Non-U.S. citizen, Temporary resident"
      " " 	= "Missing"
   ;

/* CLICCODE */
   VALUE $CLIC_CODE_DEF
      "011"	= "011: Computer Networking, Administration, and Security"
      "012"	= "012: Computer Applications and Design"
      "013"	= "013: Other Information Technologies and Computers"
      "014"	= "014: Mathematics, Statistics, and Data Analytics"
      "021"	= "021: Life Sciences"
      "031"	= "031: Physical Sciences"
      "041"	= "041: Social Sciences"
      "051"	= "051: Engineering, Engineering Technician, and Engineering Technologist"
      "052"	= "052: Hazardous Materials Management, Operations, and Transporting"
      "053"	= "053: Water and Wastewater Treatment, Management, and Operations"
      "061"	= "061: EMT, CPR, or Basic First Aid"
      "062"	= "062: Healthcare Technician and Technologist"
      "063"	= "063: Healthcare Practitioner, Provider, and Specialist"
      "064"	= "064: Nurse"
      "065"	= "065: Other Health"
      "071"	= "071: Teaching/Education"
      "072"	= "072: Architecture"
      "081"	= "081: Project management, Quality Control, Operations, and Support"
      "082"	= "082: Accounting, Finance, Insurance, and Real Estate"
      "083"	= "083: Social Work and Counseling"
      "084"	= "084: History, Language, Linguistics, and Literature"
      "085"	= "085: Arts, Music, and Entertainment"
      "086"	= "086: Law or Legal Support"
      "087"	= "087: Religious Ordination"
      "091"	= "091: Transportation"
      "092"	= "092: Construction, Automotive, Manufacturing , and Other Skilled Trades"
      "093"	= "093: Physical Fitness, Sports, and Recreation"
      "094"	= "094: Childcare"
      "095"	= "095: Public Safety"
      "099"	= "099: Other Fields"
      "998"	= "998: Logical Skip"
      "999"	= "999: Uncodeable/Missing"
      " " 	= "Missing"
   ;

/* CLICISS */
   VALUE $CLI_ISS_TYPE_23_
      "1"	= "1: City or county government agency"
      "2"	= "2: State government agency"
      "3"	= "3: Federal government agency"
      "4"	= "4: Professional or trade association"
      "5"	= "5: Business or company"
      "6"	= "6: College or university"
      "7"	= "7: Other group or organization"
      "L"	= "L: Logical skip"
      " " 	= "Missing"
   ;

/* CMNOT */
   VALUE $CMNOT_CODES
      "E"	= "E: Erroneously Missing Due to Instrument Error"
      "L"	= "L: Logical Skip"
      "M"	= "M: Missing - blanked due to cross-cycle inconsistency"
      "N"	= "N: No"
      "Y"	= "Y: Yes"
      " " 	= "Missing"
   ;

/* CMPRI CMSEC */
   VALUE $CMPRICMSEC
      "0"	= "0: No second reason"
      "1"	= "1: Family-related reasons"
      "2"	= "2: Educational opportunities"
      "3"	= "3: Job or economic opportunities"
      "4"	= "4: Scientific or professional infrastructure"
      "5"	= "5: It was not my decision"
      "6"	= "6: Other"
      "E"	= "E: Erroneously Missing Due to Instrument Error"
      "L"	= "L: Logical Skip"
      "M"	= "M: Missing"
      " " 	= "Missing"
   ;

/* CCPRI CCSEC */
   VALUE $COMM_COLLEGE_REASONS
      "00"	= "00: No Secondary Reason"
      "01"	= "01: To earn college credits while still attending high school"
      "02"	= "02: To complete an associate degree"
      "03"	= "03: To prepare for college/increase chance of acceptance at a 4-year college or univ"
      "04"	= "04: To earn credits for a bachelor degree"
      "05"	= "05: For financial reasons (e.g. cost of a 4-year school)"
      "06"	= "06: To gain further skills or knowledge in your academic or occupational field"
      "07"	= "07: To facilitate a change in your academic or occupational field"
      "08"	= "08: To increase opportunities for promotion, advancement, or higher salary"
      "09"	= "09: For leisure or personal interest"
      "10"	= "10: Other"
      "L"	= "L: Logical Skip"
      " " 	= "Missing"
   ;

/* CTZUSIN */
   VALUE $CTZUSIN
      "N"	= "N: Non-U.S. citizen"
      "Y"	= "Y: U.S. citizen"
      " " 	= "Missing"
   ;

/* ACDRG D2DG D3DG D4DG D5DG DGRDG MRDG */
   VALUE $DEGREE_CODES
      "0"	= "0: No specific degree"
      "1"	= "1: Bachelor's"
      "2"	= "2: Master's"
      "3"	= "3: Doctorate"
      "4"	= "4: Professional"
      "5"	= "5: Other"
      "L"	= "L: Logical Skip"
      " " 	= "Missing"
   ;

/* NBAMEBG NDGMEBG NMRMEBG */
   VALUE $EDU19BROAD
      "1"	= "1: S&E fields"
      "2"	= "2: S&E related fields"
      "3"	= "3: Non-S&E fields"
      "4"	= "4: Logical skip"
      " " 	= "Missing"
   ;

/* N2ACED N2ACEDX N2BAMED N2BAMEDX N2BANED N2BANEDX N2D2MED N2D2MEDX N2D2NED N2D2NEDX
   N2D3MED N2D3MEDX N2D3NED N2D3NEDX N2D4MED N2D4MEDX N2D4NED N2D4NEDX N2D5MED N2D5MEDX
   N2D5NED N2D5NEDX N2DGRMED N2HDMEDX N2HDNED N2HDNEDX N2MRMED N2MRMEDX N2MRNED N2MRNEDX
   */
   VALUE $EDUC23F
      "116710"	= "116710: Computer and information sciences, general"
      "116730"	= "116730: Computer science"
      "116740"	= "116740: Computer systems analysis"
      "116760"	= "116760: Information science, studies"
      "116770"	= "116770: Other computer and information sciences"
      "128410"	= "128410: Applied mathematics"
      "128420"	= "128420: Mathematics, general"
      "128430"	= "128430: Operations research"
      "128440"	= "128440: Statistics"
      "128450"	= "128450: Other mathematics"
      "216050"	= "216050: Animal sciences"
      "216060"	= "216060: Food sciences and technology"
      "216070"	= "216070: Plant sciences"
      "216080"	= "216080: Agricultural, animal, plant, veterinary science and related fields, other"
      "226310"	= "226310: Biochemistry and biophysics"
      "226320"	= "226320: Biology, general"
      "226330"	= "226330: Botany and plant biology"
      "226340"	= "226340: Cell and molecular biology"
      "226350"	= "226350: Ecology"
      "226360"	= "226360: Genetics, animal and plant"
      "226370"	= "226370: Microbiological sciences and immunology"
      "226380"	= "226380: Nutrition sciences"
      "226390"	= "226390: Pharmacology, human and animal"
      "226400"	= "226400: Physiology, pathology, and related sciences (human and animal)"
      "226410"	= "226410: Zoology, animal biology"
      "226420"	= "226420: Other biological sciences"
      "236800"	= "236800: Environmental science or studies"
      "236810"	= "236810: Forestry sciences"
      "318730"	= "318730: Chemistry, except biochemistry"
      "328720"	= "328720: Atmospheric sciences and meteorology"
      "328740"	= "328740: Geological and earth sciences, geosciences"
      "328760"	= "328760: Geological and earth sciences, other including ocean and marine sciences"
      "338710"	= "338710: Astronomy and astrophysics"
      "338780"	= "338780: Physics, except biophysics"
      "348790"	= "348790: Other physical sciences"
      "416010"	= "416010: Agricultural economics"
      "419230"	= "419230: Economics"
      "429020"	= "429020: Public policy analysis"
      "429270"	= "429270: International relations and national security studies"
      "429280"	= "429280: Political science and government"
      "437040"	= "437040: Educational psychology"
      "438910"	= "438910: Clinical psychology"
      "438920"	= "438920: Counseling psychology"
      "438930"	= "438930: Experimental psychology"
      "438940"	= "438940: General psychology"
      "438950"	= "438950: Industrial/ organizational psychology"
      "438960"	= "438960: Social psychology"
      "438970"	= "438970: Other psychology"
      "449210"	= "449210: Anthropology and archaeology"
      "449220"	= "449220: Criminology"
      "449290"	= "449290: Sociology"
      "456200"	= "456200: Area and ethnic studies"
      "457710"	= "457710: Linguistics"
      "458610"	= "458610: History and philosophy of science and technology"
      "459240"	= "459240: Geography"
      "459300"	= "459300: Other social sciences"
      "517210"	= "517210: Aerospace, aeronautical, and astronautical/ space engineering"
      "527250"	= "527250: Chemical engineering"
      "537230"	= "537230: Architectural engineering"
      "537260"	= "537260: Civil engineering"
      "547270"	= "547270: Computer engineering and systems engineering"
      "547280"	= "547280: Electrical, electronics, and communications engineering"
      "557330"	= "557330: Industrial and manufacturing engineering"
      "567350"	= "567350: Mechanical engineering"
      "577220"	= "577220: Agricultural engineering"
      "577240"	= "577240: Bioengineering and biomedical engineering"
      "577290"	= "577290: Engineering sciences, mechanics and physics"
      "577300"	= "577300: Environmental, environmental health engineering"
      "577310"	= "577310: Engineering, general"
      "577340"	= "577340: Materials engineering, including ceramics and textiles"
      "577360"	= "577360: Metallurgical engineering"
      "577380"	= "577380: Naval architecture and marine engineering"
      "577390"	= "577390: Nuclear engineering"
      "577400"	= "577400: Petroleum engineering"
      "577410"	= "577410: Other engineering, including geophysical, geological, mining and mineral"
      "617810"	= "617810: Audiology and speech pathology"
      "617820"	= "617820: Health services administration"
      "617830"	= "617830: Health/ medical assistants"
      "617840"	= "617840: Health/ medical technologies"
      "617850"	= "617850: Medical preparatory programs (e.g., pre-dentistry, pre-medical, pre-veterinary)"
      "617860"	= "617860: Medicine (e.g., dentistry, optometry, osteopathic, podiatry, veterinary)"
      "617870"	= "617870: Registered nursing, nursing administration, nursing research and clinical nursing"
      "617880"	= "617880: Pharmacy"
      "617890"	= "617890: Physical therapy and other rehabilitation/ therapeutic services"
      "617900"	= "617900: Public health (including environmental health and epidemiology)"
      "617910"	= "617910: Other health/ medical sciences"
      "627020"	= "627020: Computer teacher education"
      "627060"	= "627060: Mathematics teacher education"
      "627090"	= "627090: Science teacher education, general science teacher education (includes biology, chemistry, earth science, physics, etc.)"
      "627120"	= "627120: Social science teacher education, including psychology teacher education"
      "636720"	= "636720: Computer programming"
      "636750"	= "636750: Data processing"
      "637510"	= "637510: Electrical and electronic technologies"
      "637520"	= "637520: Industrial production technologies"
      "637530"	= "637530: Mechanical engineering-related technologies"
      "637540"	= "637540: Other engineering-related technologies"
      "646100"	= "646100: Architecture/ environmental design"
      "646520"	= "646520: Actuarial science"
      "716020"	= "716020: Agribusiness, agricultural business operations"
      "716510"	= "716510: Accounting"
      "716530"	= "716530: Business administration and management"
      "716540"	= "716540: Business, commerce, general"
      "716550"	= "716550: Business and managerial economics"
      "716570"	= "716570: Financial management"
      "716590"	= "716590: Other business management/ administrative services"
      "727010"	= "727010: Education administration and supervision"
      "727030"	= "727030: Counselor education/ school counseling and guidance services"
      "727050"	= "727050: Elementary education and teaching"
      "727070"	= "727070: Physical education teaching and coaching"
      "727080"	= "727080: Pre-school/ kindergarten/ early childhood teacher education"
      "727100"	= "727100: Secondary teacher education"
      "727110"	= "727110: Special education and teaching"
      "727130"	= "727130: Other education"
      "738620"	= "738620: Philosophy, religion, theology"
      "739100"	= "739100: Social work"
      "746560"	= "746560: Business marketing/ marketing management"
      "746580"	= "746580: Marketing research"
      "757600"	= "757600: English language, literature and letters"
      "757720"	= "757720: Other foreign languages and literature"
      "758200"	= "758200: Liberal arts and sciences"
      "759260"	= "759260: History"
      "759410"	= "759410: Drama, theatre arts, and stagecraft"
      "759420"	= "759420: Fine and studio arts (all fields)"
      "759430"	= "759430: Music, all fields"
      "759440"	= "759440: Other visual and performing arts"
      "766610"	= "766610: Communications, general"
      "766620"	= "766620: Journalism"
      "766630"	= "766630: Other communication"
      "766820"	= "766820: Other conservation and natural resources"
      "766900"	= "766900: Criminal justice and corrections"
      "768000"	= "768000: Family, consumer sciences and human sciences"
      "768100"	= "768100: Legal professions and studies"
      "768300"	= "768300: Library science"
      "768500"	= "768500: Parks, recreation, leisure, fitness, and kinesiology"
      "769010"	= "769010: Public administration"
      "769030"	= "769030: Public affairs"
      "769950"	= "769950: Other fields (not listed)"
      "999989"	= "999989: Logical Skip"
      "999999"	= "999999: Unknown/Missing"
      " " 	= "Missing"
   ;

/* EDTP */
   VALUE $EDUCATION_INSTITUTION_CODES_R2_
      "1"	= "1: Preschool, elementary, middle, or secondary school or system"
      "2"	= "2: 2-year college, community college or technical institute"
      "3"	= "3: 4-year college or university, other than a medical school"
      "4"	= "4: Medical school"
      "5"	= "5: University-affiliated research institute"
      "6"	= "6: Other"
      "L"	= "L: Logical Skip"
      " " 	= "Missing"
   ;

/* CCINCD D5INCD HDINCD */
   VALUE $EDUCATION_INST_CODES
      "777777"	= "777777: Non-U.S. Academic Institution"
      "999997"	= "999997: Survey Exclusion/Confidentiality Suppression"
      "999998"	= "999998: Logical Skip"
      " " 	= "Missing"
   ;

/* EDDAD EDMOM */
   VALUE $EDUCATION_LEVEL_CODES
      "1"	= "1: Less than high school completed"
      "2"	= "2: High school diploma or equivalent"
      "3"	= "3: Some college, vocational, or trade school (including 2-year degrees)"
      "4"	= "4: Bachelor's degree (e.g. BS, BA, AB)"
      "5"	= "5: Master's degree (e.g. MS, MA, MBA)"
      "6"	= "6: Professional degree (e.g. JD, LLB, MD, DDS, etc.)"
      "7"	= "7: Doctorate (e.g. PhD, DSc, EdD, etc.)"
      "8"	= "8: Not applicable"
      " " 	= "Missing"
   ;

/* EMSIZE */
   VALUE $EMPLOYER_SIZE_R1_
      "1"	= "1: 10 or fewer employees"
      "2"	= "2: 11-24 employees"
      "3"	= "3: 25-99 employees"
      "4"	= "4: 100-499 employees"
      "5"	= "5: 500-999 employees"
      "6"	= "6: 1000-4999 employees"
      "7"	= "7: 5000-24999 employees"
      "8"	= "8: 25000+ employees"
      "L"	= "L: Logical Skip"
      " " 	= "Missing"
   ;

/* NEDTP */
   VALUE $EMPLOYER_TYPE_CODES_R2_
      "1"	= "1: Self-employed, not incorp. bus., profess. practice, or farm"
      "2"	= "2: Self-employed, incorp. business, profess. practice, or farm"
      "3"	= "3: Priv.-for-profit co./bus./indv., wrkg for wages/sal./commis."
      "4"	= "4: Private not-for-profit, tax-exempt/charitable organ."
      "5"	= "5: Local government (city, county, etc.)"
      "6"	= "6: State government"
      "7"	= "7: U.S. mil. ser., active duty or commiss. Corps. (e.g., USPHS)"
      "8"	= "8: U.S. Federal Government (e.g., civilian employee)"
      "9"	= "9: Another employer type"
      "L"	= "L: Logical Skip"
      " " 	= "Missing"
   ;

/* EMSECDT */
   VALUE $EMP_SECTOR_DET_CODES
      "11"	= "11: 4-yr coll/univ; med schl; univ. res. inst."
      "12"	= "12: 2-yr coll/pre-college institutions"
      "21"	= "21: Bus/Ind, for-profit"
      "22"	= "22: Bus/Ind, self-employed, not-incorporated"
      "23"	= "23: Bus/Ind, non-profit"
      "31"	= "31: Federal government"
      "32"	= "32: State/Local government"
      "L"	= "L: Logical Skip"
      " " 	= "Missing"
   ;

/* EMSECSM */
   VALUE $EMP_SECTOR_SUM_CODES
      "1"	= "1: Educational Institution"
      "2"	= "2: Government"
      "3"	= "3: Business/Industry"
      "L"	= "L: Logical Skip"
      " " 	= "Missing"
   ;

/* EMTP */
   VALUE $EMP_TYPE_CODE
      "01"	= "01: Elementary, middle, or secondary school"
      "02"	= "02: 2-year college, junior college, or technical institute"
      "03"	= "03: 4-year college or university"
      "04"	= "04: Medical school"
      "05"	= "05: University research institute"
      "06"	= "06: Other (Educational Institution)"
      "10"	= "10: Private for-profit (non-educational institution)"
      "11"	= "11: Private non-profit (non-educational institution)"
      "12"	= "12: Self-employed, not incorporated (non-educational institution)"
      "13"	= "13: Self-employed, incorporated (non-educational institution)"
      "14"	= "14: Local government (non-educational institution)"
      "15"	= "15: State government (non-educational institution)"
      "16"	= "16: U.S. military (non-educational institution)"
      "17"	= "17: U.S. government (non-educational institution)"
      "18"	= "18: Other (non-educational institution)"
      "L"	= "L: Logical Skip"
      " " 	= "Missing"
   ;

/* RACETHM */
   VALUE $ETHNICITY_CODES_NEW
      "1"	= "1: Asian, non-Hispanic ONLY"
      "2"	= "2: American Indian/Alaska Native, non-Hispanic ONLY"
      "3"	= "3: Black, non-Hispanic ONLY"
      "4"	= "4: Hispanic, any race"
      "5"	= "5: White, non-Hispanic ONLY"
      "6"	= "6: Native Hawaiian/Other Pacific Islander, non-Hispanic ONLY"
      "7"	= "7: Multiple Race, non-Hispanic"
      " " 	= "Missing"
   ;

/* BAAYR5 D25YR D35YR D45YR D55YR HDAY5 MR5YR */
   VALUE FIVE_YEAR_GROUP_CODES_2020_
      1960 	= "1960: 1960 to 1964"
      1965 	= "1965: 1965 to 1969"
      1970 	= "1970: 1970 to 1974"
      1975 	= "1975: 1975 to 1979"
      1980 	= "1980: 1980 to 1984"
      1985 	= "1985: 1985 to 1989"
      1990 	= "1990: 1990 to 1994"
      1995 	= "1995: 1995 to 1999"
      2000 	= "2000: 2000 to 2004"
      2005 	= "2005: 2005 to 2009"
      2010 	= "2010: 2010 to 2014"
      2015 	= "2015: 2015 to 2019"
      2020 	= "2020: 2020 or later"
      9998 	= "9998: Logical Skip"
      9999 	= "9999: Missing"
       . 	= "Missing"
   ;

/* FNUSYR6 */
   VALUE FNUSYR6_
      9997 	= "9997: Erroneously Missing Due to Instrument Error"
      9998 	= "9998: Logical Skip"
      9999 	= "9999: Missing - blanked due to cross-cycle inconsistency"
       . 	= "Missing"
   ;

/* ACFPT */
   VALUE $FULL_PART_TIME_STUDENT_NEW
      "1"	= "1: Full-time student in a degree program"
      "2"	= "2: Part-time student in a degree program"
      "3"	= "3: Not enrolled in a degree program, but taking courses"
      "L"	= "L: Logical Skip"
      " " 	= "Missing"
   ;

/* DIFCOGN DIFHEAR DIFLIFT DIFSEE DIFWALK */
   VALUE $HANDICAP_CODES
      "1"	= "1: No difficulty"
      "2"	= "2: Slight difficulty"
      "3"	= "3: Moderate difficulty"
      "4"	= "4: Severe difficulty"
      "5"	= "5: Unable to do"
      " " 	= "Missing"
   ;

/* HRSWK */
   VALUE HRSWK_CODES
      96 	= "96: 96 hours or more"
      98 	= "98: Logical skip"
       . 	= "Missing"
   ;

/* FACADV FACBEN FACCHAL FACIND FACLOC FACRESP FACSAL FACSEC FACSOC */
   VALUE $IMPORTANT_CODES
      "1"	= "1: Very important"
      "2"	= "2: Somewhat important"
      "3"	= "3: Somewhat unimportant"
      "4"	= "4: Not important at all"
      "L"	= "L: Logical Skip"
      " " 	= "Missing"
   ;

/* INDCODE */
   VALUE $INDUSTRY_CODES_2013_
      "0170"	= "0170: Crop production"
      "0180"	= "0180: Animal production and aquaculture"
      "0190"	= "0190: Forestry except logging"
      "0270"	= "0270: Logging"
      "0280"	= "0280: Fishing, hunting and trapping"
      "0290"	= "0290: Support activities for agriculture and forestry"
      "0370"	= "0370: Oil and gas extraction"
      "0380"	= "0380: Coal mining"
      "0390"	= "0390: Metal ore mining"
      "0470"	= "0470: Nonmetallic mineral mining and quarrying"
      "0480"	= "0480: Not specified type of mining"
      "0490"	= "0490: Support activities for mining"
      "0570"	= "0570: Electric power generation, transmission and distribution"
      "0580"	= "0580: Natural gas distribution"
      "0590"	= "0590: Electric and gas, and other combinations"
      "0670"	= "0670: Water, steam, air-conditioning, and irrigation systems"
      "0680"	= "0680: Sewage treatment facilities"
      "0690"	= "0690: Not specified utilities"
      "0770"	= "0770: Construction (the cleaning of buildings and dwellings is incidental during construction and immediately after construction)"
      "1070"	= "1070: Animal food, grain and oilseed milling"
      "1080"	= "1080: Sugar and confectionery products"
      "1090"	= "1090: Fruit and vegetable preserving and specialty food manufacturing"
      "1170"	= "1170: Dairy product manufacturing"
      "1180"	= "1180: Animal slaughtering and processing"
      "1190"	= "1190: Retail bakeries"
      "1270"	= "1270: Bakeries and tortilla manufacturing, except retail bakeries"
      "1280"	= "1280: Seafood and other miscellaneous foods, n.e.c."
      "1290"	= "1290: Not specified food industries"
      "1370"	= "1370: Beverage manufacturing"
      "1390"	= "1390: Tobacco manufacturing"
      "1470"	= "1470: Fiber, yarn, and thread mills"
      "1480"	= "1480: Fabric mills, except knitting mills"
      "1490"	= "1490: Textile and fabric finishing and fabric coating mills"
      "1570"	= "1570: Carpet and rug mills"
      "1590"	= "1590: Textile product mills, except carpet and rug"
      "1670"	= "1670: Knitting fabric mills, and apparel knitting mills"
      "1691"	= "1691: Cut and sew, and apparel accessories and other apparel manufacturing"
      "1770"	= "1770: Footwear manufacturing"
      "1790"	= "1790: Leather tanning and finishing and other allied products manufacturing"
      "1870"	= "1870: Pulp, paper, and paperboard mills"
      "1880"	= "1880: Paperboard container manufacturing"
      "1890"	= "1890: Miscellaneous paper and pulp products"
      "1990"	= "1990: Printing and related support activities"
      "2070"	= "2070: Petroleum refining"
      "2090"	= "2090: Miscellaneous petroleum and coal products"
      "2170"	= "2170: Resin, synthetic rubber, and fibers and filaments manufacturing"
      "2180"	= "2180: Agricultural chemical manufacturing"
      "2190"	= "2190: Pharmaceutical and medicine manufacturing"
      "2270"	= "2270: Paint, coating, and adhesive manufacturing"
      "2280"	= "2280: Soap, cleaning compound, and cosmetics manufacturing"
      "2290"	= "2290: Industrial and miscellaneous chemicals"
      "2370"	= "2370: Plastics product manufacturing"
      "2380"	= "2380: Tire manufacturing"
      "2390"	= "2390: Rubber products, except tires, manufacturing"
      "2470"	= "2470: Pottery, ceramics, and plumbing fixture manufacturing"
      "2480"	= "2480: Clay building material and refractories manufacturing"
      "2490"	= "2490: Glass and glass product manufacturing"
      "2570"	= "2570: Cement, concrete, lime, and gypsum product manufacturing"
      "2590"	= "2590: Miscellaneous nonmetallic mineral product manufacturing"
      "2670"	= "2670: Iron and steel mills and steel product manufacturing"
      "2680"	= "2680: Aluminum production and processing"
      "2690"	= "2690: Nonferrous metal (except aluminum) production and processing"
      "2770"	= "2770: Foundries"
      "2780"	= "2780: Metal forgings and stampings"
      "2790"	= "2790: Cutlery and hand tool manufacturing"
      "2870"	= "2870: Structural metals, and boiler, tank, and shipping container manufacturing"
      "2880"	= "2880: Machine shops; turned product; screw, nut, and bolt manufacturing"
      "2890"	= "2890: Coating, engraving, heat treating, and allied activities"
      "2970"	= "2970: Ordnance"
      "2980"	= "2980: Miscellaneous fabricated metal products manufacturing"
      "2990"	= "2990: Not specified metal industries"
      "3070"	= "3070: Agricultural implement manufacturing"
      "3080"	= "3080: Construction, and mining and oil and gas field machinery manufacturing"
      "3095"	= "3095: Commercial and service industry machinery manufacturing"
      "3170"	= "3170: Metalworking machinery manufacturing"
      "3180"	= "3180: Engine, turbine, and power transmission equipment manufacturing"
      "3291"	= "3291: Machinery manufacturing, n.e.c. or not specified"
      "3365"	= "3365: Computer and peripheral equipment manufacturing"
      "3370"	= "3370: Communications, audio, and video equipment manufacturing"
      "3380"	= "3380: Navigational, measuring, electromedical, and control instruments manufacturing"
      "3390"	= "3390: Electronic component and product manufacturing, n.e.c."
      "3470"	= "3470: Household appliance manufacturing"
      "3490"	= "3490: Electric lighting and electrical equipment manufacturing, and other electrical component manufacturing, n.e.c."
      "3570"	= "3570: Motor vehicles and motor vehicle equipment manufacturing"
      "3580"	= "3580: Aircraft and parts manufacturing"
      "3590"	= "3590: Aerospace products and parts manufacturing"
      "3670"	= "3670: Railroad rolling stock manufacturing"
      "3680"	= "3680: Ship and boat building"
      "3690"	= "3690: Other transportation equipment manufacturing"
      "3770"	= "3770: Sawmills and wood preservation"
      "3780"	= "3780: Veneer, plywood, and engineered wood products"
      "3790"	= "3790: Prefabricated wood buildings and mobile homes"
      "3875"	= "3875: Miscellaneous wood products"
      "3895"	= "3895: Furniture and related product manufacturing"
      "3960"	= "3960: Medical equipment and supplies manufacturing"
      "3970"	= "3970: Sporting and athletic goods, and doll, toy and game manufacturing"
      "3980"	= "3980: Miscellaneous manufacturing, n.e.c."
      "3990"	= "3990: Not specified manufacturing industries"
      "4070"	= "4070: Motor vehicle and motor vehicle parts and supplies merchant wholesalers"
      "4080"	= "4080: Furniture and home furnishing merchant wholesalers"
      "4090"	= "4090: Lumber and other construction materials merchant wholesalers"
      "4170"	= "4170: Professional and commercial equipment and supplies merchant wholesalers"
      "4180"	= "4180: Metals and minerals, except petroleum, merchant wholesalers"
      "4195"	= "4195: Household appliances and electrical and electronic goods merchant wholesalers"
      "4265"	= "4265: Hardware, plumbing and heating equipment, and supplies merchant wholesalers"
      "4270"	= "4270: Machinery, equipment, and supplies merchant wholesalers"
      "4280"	= "4280: Recyclable material merchant wholesalers"
      "4290"	= "4290: Miscellaneous durable goods merchant wholesalers"
      "4370"	= "4370: Paper and paper products merchant wholesalers"
      "4380"	= "4380: Drugs, sundries, and chemical and allied products merchant wholesalers"
      "4390"	= "4390: Apparel, piece goods, and notions merchant wholesalers"
      "4470"	= "4470: Grocery and related product merchant wholesalers"
      "4480"	= "4480: Farm product raw material merchant wholesalers"
      "4490"	= "4490: Petroleum and petroleum products merchant wholesalers"
      "4560"	= "4560: Alcoholic beverages merchant wholesalers"
      "4570"	= "4570: Farm supplies merchant wholesalers"
      "4580"	= "4580: Miscellaneous nondurable goods merchant wholesalers"
      "4585"	= "4585: Wholesale electronic markets and agents and brokers"
      "4590"	= "4590: Not specified wholesale trade"
      "4670"	= "4670: Automobile dealers"
      "4680"	= "4680: Other motor vehicle dealers"
      "4690"	= "4690: Automotive parts, accessories, and tire stores"
      "4770"	= "4770: Furniture and home furnishings stores"
      "4780"	= "4780: Household appliance stores"
      "4795"	= "4795: Electronics Stores"
      "4870"	= "4870: Building material and supplies dealers"
      "4880"	= "4880: Hardware stores"
      "4890"	= "4890: Lawn and garden equipment and supplies stores"
      "4971"	= "4971: Supermarkets and other grocery (except convenience) stores"
      "4972"	= "4972: Convenience Stores"
      "4980"	= "4980: Specialty food stores"
      "4990"	= "4990: Beer, wine, and liquor stores"
      "5070"	= "5070: Pharmacies and drug stores"
      "5080"	= "5080: Health and personal care, except drug, stores"
      "5090"	= "5090: Gasoline stations"
      "5170"	= "5170: Clothing stores"
      "5180"	= "5180: Shoe stores"
      "5190"	= "5190: Jewelry, luggage, and leather goods stores"
      "5275"	= "5275: Sporting goods, and hobby and toy stores"
      "5280"	= "5280: Sewing, needlework, and piece goods stores"
      "5295"	= "5295: Musical instrument and supplies stores"
      "5370"	= "5370: Book stores and news dealers"
      "5381"	= "5381: Department stores"
      "5391"	= "5391: General merchandise stores, including warehouse clubs and supercenters"
      "5470"	= "5470: Retail florists"
      "5480"	= "5480: Office supplies and stationery stores"
      "5490"	= "5490: Used merchandise stores"
      "5570"	= "5570: Gift, novelty, and souvenir shops"
      "5580"	= "5580: Miscellaneous retail stores"
      "5593"	= "5593: Electronic shopping and mail-order houses"
      "5670"	= "5670: Vending machine operators"
      "5680"	= "5680: Fuel dealers"
      "5690"	= "5690: Other direct selling establishments"
      "5790"	= "5790: Not specified retail trade"
      "6070"	= "6070: Air transportation"
      "6080"	= "6080: Rail transportation"
      "6090"	= "6090: Water transportation"
      "6170"	= "6170: Truck transportation"
      "6180"	= "6180: Bus service and urban transit"
      "6190"	= "6190: Taxi and limousine service"
      "6270"	= "6270: Pipeline transportation"
      "6280"	= "6280: Scenic and sightseeing transportation"
      "6290"	= "6290: Services incidental to transportation"
      "6370"	= "6370: Postal Service"
      "6380"	= "6380: Couriers and messengers"
      "6390"	= "6390: Warehousing and storage"
      "6470"	= "6470: Newspaper publishers"
      "6480"	= "6480: Periodical, book, and directory publishers"
      "6490"	= "6490: Software publishers"
      "6570"	= "6570: Motion pictures and video industries"
      "6590"	= "6590: Sound recording industries"
      "6670"	= "6670: Broadcasting (except internet)"
      "6672"	= "6672: Internet publishing and broadcasting and web search portals"
      "6680"	= "6680: Wired telecommunications carriers"
      "6690"	= "6690: Telecommunications, except wired telecommunications carriers"
      "6695"	= "6695: Data processing, hosting, and related services"
      "6770"	= "6770: Libraries and archives"
      "6780"	= "6780: Other information services, except libraries and archives, and internet publishing and broadcasting and web search portals"
      "6870"	= "6870: Banking and related activities"
      "6880"	= "6880: Savings institutions, including credit unions"
      "6890"	= "6890: Nondepository credit and related activities"
      "6970"	= "6970: Securities, commodities, funds, trusts, and other financial investments"
      "6991"	= "6991: Insurance carriers"
      "6992"	= "6992: Agencies, brokerages, and other insurance related activities"
      "7071"	= "7071: Lessors of real estate, and offices of real estate agents and brokers"
      "7072"	= "7072: Real estate property managers, offices of real estate appraisers, and other activities related to real estate"
      "7080"	= "7080: Automotive equipment rental and leasing"
      "7181"	= "7181: Other consumer goods rental"
      "7190"	= "7190: Commercial, industrial, and other intangible assets rental and leasing"
      "7270"	= "7270: Legal services"
      "7280"	= "7280: Accounting, tax preparation, bookkeeping, and payroll services"
      "7290"	= "7290: Architectural, engineering, and related services"
      "7370"	= "7370: Specialized design services"
      "7380"	= "7380: Computer systems design and related services"
      "7390"	= "7390: Management, scientific, and technical consulting services"
      "7460"	= "7460: Scientific research and development services"
      "7470"	= "7470: Advertising, public relations, and related services"
      "7480"	= "7480: Veterinary services"
      "7490"	= "7490: Other professional, scientific, and technical services"
      "7570"	= "7570: Management of companies and enterprises"
      "7580"	= "7580: Employment services"
      "7590"	= "7590: Business support services"
      "7670"	= "7670: Travel arrangements and reservation services"
      "7680"	= "7680: Investigation and security services"
      "7690"	= "7690: Services to buildings and dwellings (except cleaning during construction and immediately after construction)"
      "7770"	= "7770: Landscaping services"
      "7780"	= "7780: Other administrative and other support services"
      "7790"	= "7790: Waste management and remediation services"
      "7860"	= "7860: Elementary and secondary schools"
      "7870"	= "7870: Colleges, universities, and professional schools, including junior colleges"
      "7880"	= "7880: Business, technical, and trade schools and training"
      "7890"	= "7890: Other schools and instruction, and educational support services"
      "7970"	= "7970: Offices of physicians"
      "7980"	= "7980: Offices of dentists"
      "7990"	= "7990: Offices of chiropractors"
      "8070"	= "8070: Offices of optometrists"
      "8080"	= "8080: Offices of other health practitioners"
      "8090"	= "8090: Outpatient care centers"
      "8170"	= "8170: Home health care services"
      "8180"	= "8180: Other health care services"
      "8191"	= "8191: General medical and surgical hospitals, and specialty (except psychiatric and substance abuse) hospitals"
      "8192"	= "8192: Psychiatric and substance abuse hospitals"
      "8270"	= "8270: Nursing care facilities (skilled nursing facilities)"
      "8290"	= "8290: Residential care facilities, except skilled nursing facilities"
      "8370"	= "8370: Individual and family services"
      "8380"	= "8380: Community food and housing, and emergency services"
      "8390"	= "8390: Vocational rehabilitation services"
      "8470"	= "8470: Child day care services"
      "8561"	= "8561: Performing arts companies"
      "8562"	= "8562: Spectator sports"
      "8563"	= "8563: Promoters of performing arts, sports, and similar events, agents and managers for artists, athletes, entertainers, and other public figures "
      "8564"	= "8564: Independent artists, writers, and performers"
      "8570"	= "8570: Museums, art galleries, historical sites, and similar institutions"
      "8580"	= "8580: Bowling centers"
      "8590"	= "8590: Other amusement, gambling, and recreation industries"
      "8660"	= "8660: Traveler accommodation"
      "8670"	= "8670: Recreational vehicle parks and camps, and rooming and boarding houses"
      "8680"	= "8680: Restaurants and other food services"
      "8690"	= "8690: Drinking places, alcoholic beverages"
      "8770"	= "8770: Automotive repair and maintenance"
      "8780"	= "8780: Car washes"
      "8790"	= "8790: Electronic and precision equipment repair and maintenance"
      "8870"	= "8870: Commercial and industrial machinery and equipment repair and maintenance"
      "8891"	= "8891: Personal and household goods repair and maintenance"
      "8970"	= "8970: Barber shops"
      "8980"	= "8980: Beauty salons"
      "8990"	= "8990: Nail salons and other personal care services"
      "9070"	= "9070: Drycleaning and laundry services"
      "9080"	= "9080: Funeral homes, and cemeteries and crematories"
      "9090"	= "9090: Other personal services"
      "9160"	= "9160: Religious organizations"
      "9170"	= "9170: Civic, social, advocacy organizations, and grantmaking and giving services"
      "9180"	= "9180: Labor unions"
      "9190"	= "9190: Business, professional, political, and similar organizations"
      "9290"	= "9290: Private households"
      "9370"	= "9370: Executive offices and legislative bodies"
      "9380"	= "9380: Public finance activities"
      "9390"	= "9390: Other general government and support"
      "9470"	= "9470: Justice, public order, and safety activities"
      "9480"	= "9480: Administration of human resource programs"
      "9490"	= "9490: Administration of environmental quality and housing programs"
      "9570"	= "9570: Administration of economic programs and space research"
      "9590"	= "9590: National security and international affairs"
      "9890"	= "9890: Military Industry (based on CPS codes)"
      "9990"	= "9990: Blank, Refused, Classified, Uncodeable, Suppressed"
      "9998"	= "9998: Logical Skip"
      " " 	= "Missing"
   ;

/* LFSTAT */
   VALUE $LABOR_FORCE_STATUS_CODES
      "1"	= "1: Employed"
      "2"	= "2: Unemployed"
      "3"	= "3: Not In Labor Force"
      " " 	= "Missing"
   ;

/* RESIDE */
   VALUE $LIVING_IN_US_CODES
      "1"	= "1: United States or Puerto Rico"
      " " 	= "Missing"
   ;

/* NACEDMG NBAMEMG NBASEMG ND2MEMG ND2SEMG ND3MEMG ND3SEMG ND4MEMG ND4SEMG ND5MEMG
   ND5SEMG NDGMEMG NHDSEMG NMRMEMG NMRSEMG */
   VALUE $MAJOR_GROUP_CODES_NEW
      "1"	= "1: Computer and mathematical sciences"
      "2"	= "2: Biological, agricultural and environmental life sciences"
      "3"	= "3: Physical and related sciences"
      "4"	= "4: Social and related sciences"
      "5"	= "5: Engineering"
      "6"	= "6: S&E-Related Fields"
      "7"	= "7: Non-S&E Fields"
      "8"	= "8: Logical Skip"
      " " 	= "Missing"
   ;

/* N2OCMLST N2OCPRMG */
   VALUE $MAJOR_OCC_GROUP_CODES_NEW
      "1"	= "1: Computer and mathematical scientists"
      "2"	= "2: Biological, agricultural and other life scientists"
      "3"	= "3: Physical and related scientists"
      "4"	= "4: Social and related scientists"
      "5"	= "5: Engineers"
      "6"	= "6: S&E related occupations"
      "7"	= "7: Non-S&E Occupations"
      "8"	= "8: Logical Skip"
      " " 	= "Missing"
   ;

/* MARSTA */
   VALUE $MARITAL_STATUS_CODES_R1_
      "1"	= "1: Married"
      "2"	= "2: Living in a marriage-like relationship"
      "3"	= "3: Widowed"
      "4"	= "4: Separated"
      "5"	= "5: Divorced"
      "6"	= "6: Never married"
      " " 	= "Missing"
   ;

/* ASIAN ASIND BLACK CHAMORRO CHINESE FILIPINO FSDED FSDK FSDOD FSDOE
   FSHHS FSNASA FSNIH FSNSF FSOT HAWAIIAN JAPANESE KOREAN NATIVE O_ASIAN
   O_PACIFIC PACIFIC SAMOAN VIETNAMESE WHITE */
   VALUE $MARK_ALL_CODES
      "L"	= "L: Logical skip"
      "N"	= "N: No (Left box blank)"
      "X"	= "X: Survey Exclusion/Confidentiality Suppression"
      "Y"	= "Y: Yes (Marked box)"
      " " 	= "Missing"
   ;

/* NACEDNG NBAMENG NBANENG ND2MENG ND2NENG ND3MENG ND3NENG ND4MENG ND4NENG ND5MENG
   ND5NENG NDGMENG NHDNENG NMRMENG NMRNENG */
   VALUE $MINOR_ED_GROUP_CODES_NEW
      "11"	= "11: Computer and information sciences"
      "12"	= "12: Mathematics and statistics"
      "21"	= "21: Agricultural and food sciences"
      "22"	= "22: Biological sciences"
      "23"	= "23: Environmental life sciences"
      "31"	= "31: Chemistry, except biochemistry"
      "32"	= "32: Earth, atmospheric and ocean sciences"
      "33"	= "33: Physics and astronomy"
      "34"	= "34: Other physical sciences"
      "41"	= "41: Economics"
      "42"	= "42: Political and related sciences"
      "43"	= "43: Psychology"
      "44"	= "44: Sociology and anthropology"
      "45"	= "45: Other social sciences"
      "51"	= "51: Aerospace, aeronautical and astronautical engineering"
      "52"	= "52: Chemical engineering"
      "53"	= "53: Civil and architectural engineering"
      "54"	= "54: Electrical and computer engineering"
      "55"	= "55: Industrial engineering"
      "56"	= "56: Mechanical engineering"
      "57"	= "57: Other engineering"
      "61"	= "61: Health"
      "62"	= "62: Science and mathematics teacher education"
      "63"	= "63: Technology and Technical Fields"
      "64"	= "64: Other S&E related fields"
      "71"	= "71: Management and administration fields"
      "72"	= "72: Education, except science and math teacher education"
      "73"	= "73: Social service and related fields"
      "74"	= "74: Sales and marketing fields"
      "75"	= "75: Art and Humanities Fields"
      "76"	= "76: Other Non-S&E fields"
      "98"	= "98: Logical Skip"
      " " 	= "Missing"
   ;

/* BAMN D2MN D3MN D4MN D5MN HDMN LWMN MRMN STRTMN */
   VALUE MONTH_GROUP
      1 	= "1: January"
      2 	= "2: February"
      3 	= "3: March"
      4 	= "4: April"
      5 	= "5: May"
      6 	= "6: June"
      7 	= "7: July"
      8 	= "8: August"
      9 	= "9: September"
      10 	= "10: October"
      11 	= "11: November"
      12 	= "12: December"
      98 	= "98: Logical Skip"
       . 	= "Missing"
   ;

/* LWNVR */
   VALUE $NEVER_WORK_CODES
      "L"	= "L: Logical skip"
      "N"	= "N: Left box blank"
      "Y"	= "Y: Never worked (Marked box)"
      " " 	= "Missing"
   ;

/* CTZFOR */
   VALUE $NON_US_CITIZEN_CODES
      "1"	= "1: With a permanent resident Visa"
      "2"	= "2: With a temporary resident Visa"
      "L"	= "L: Logical Skip"
      " " 	= "Missing"
   ;

/* HSNOI */
   VALUE $NO_DIPLOMA_CODES
      "N"	= "N: Left box blank"
      "Y"	= "Y: Did not finish high school (Marked box)"
      " " 	= "Missing"
   ;

/* DIFNO */
   VALUE $NO_HANDICAP_CODES
      "N"	= "N: Left box blank"
      "Y"	= "Y: No difficulties identified (Marked box)"
      " " 	= "Missing"
   ;

/* EARN SALARY */
   VALUE NUMERIC_DOLLAR_SEVEN
      9999998 	= "9999998: Logical Skip"
       . 	= "Missing"
   ;

/* BAACYR BAYR CLICYR D2AYR D2YR D3AYR D3YR D4AYR D4YR D5AYR
   D5YR FTPRTYR HSYR LWYR NWRTYR PERMVYR PJRETYR STRTYR */
   VALUE NUMERIC_FOUR
      9998 	= "9998: Logical Skip"
      9999 	= "9999: Missing"
       . 	= "Missing"
   ;

/* CH1218 CH19 CH25 CH6 CH611 CHU2 CLICNMBR DIFAGE PRMBR WKSLYR
   WKSWK */
   VALUE NUMERIC_TWO
      98 	= "98: Logical Skip"
       . 	= "Missing"
   ;

/* N3OCNLST N3OCPRNG */
   VALUE $OC23PNG
      "11"	= "11: Computer and information scientists"
      "12"	= "12: Mathematical scientists"
      "18"	= "18: Postsecondary teachers - computer and math sciences"
      "21"	= "21: Agricultural & food scientists"
      "22"	= "22: Biological and medical scientists"
      "23"	= "23: Environmental life scientists"
      "28"	= "28: Postsecondary teachers - life and related sciences"
      "31"	= "31: Chemists, except biochemists"
      "32"	= "32: Earth, atmospheric, and ocean scientists"
      "33"	= "33: Physicists"
      "34"	= "34: Other physical & related scientists, including astronomers"
      "38"	= "38: Postsecondary teachers - physical and related sciences"
      "41"	= "41: Economists"
      "42"	= "42: Political scientists"
      "43"	= "43: Psychologists"
      "44"	= "44: Sociologists and anthropologists"
      "45"	= "45: Other social and related scientists"
      "48"	= "48: Postsecondary teachers - social and related sciences"
      "51"	= "51: Aerospace, aeronautical or astronautical engineers"
      "52"	= "52: Chemical engineers"
      "53"	= "53: Civil, architectural or sanitary engineers"
      "54"	= "54: Electrical or computer hardware engineers"
      "55"	= "55: Industrial engineers"
      "56"	= "56: Mechanical engineers"
      "57"	= "57: Other engineers"
      "58"	= "58: Postsecondary teachers - engineering"
      "61"	= "61: Health-related occupations"
      "62"	= "62: S&E managers"
      "63"	= "63: S&E Pre-college Teachers"
      "64"	= "64: S&E technicians and technologists"
      "65"	= "65: Other S&E-related occupations"
      "71"	= "71: Non-S&E Managers"
      "72"	= "72: Management-related occupations"
      "73"	= "73: Non-S&E precollege teachers"
      "74"	= "74: Non-S&E postsecondary teachers"
      "75"	= "75: Social services and related occupations"
      "76"	= "76: Sales and marketing occupations"
      "77"	= "77: Art, humanities, and related occupations"
      "78"	= "78: Other non-S&E occupations"
      "98"	= "98: Logical Skip"
      " " 	= "Missing"
   ;

/* N2OCBLST N2OCPRBG */
   VALUE $OCC19BROAD
      "1"	= "1: S&E occupations"
      "2"	= "2: S&E related occupations"
      "3"	= "3: Non-S&E occupations"
      "4"	= "4: Logical skip"
      " " 	= "Missing"
   ;

/* N3OCLST N3OCLSTX N3OCPR N3OCPRX */
   VALUE $OCC23CNT
      "110510"	= "110510: Computer and information research scientists"
      "110520"	= "110520: Computer network architects"
      "110540"	= "110540: Computer support specialists"
      "110550"	= "110550: Computer system analysts"
      "110560"	= "110560: Database administrators"
      "110570"	= "110570: Information security analysts"
      "110580"	= "110580: Network and computer systems administrators"
      "110590"	= "110590: Software developers – applications and systems software"
      "110600"	= "110600: Web developers"
      "110610"	= "110610: Other computer and information science occupations"
      "121720"	= "121720: Mathematicians"
      "121730"	= "121730: Operations research analysts"
      "121740"	= "121740: Statisticians"
      "121760"	= "121760: Other mathematical scientists"
      "121770"	= "121770: Data scientists"
      "182760"	= "182760: Postsecondary teachers - Computer sciences"
      "182860"	= "182860: Postsecondary teachers - Mathematical sciences"
      "210210"	= "210210: Agricultural and food scientists"
      "220220"	= "220220: Biochemists and biophysicists"
      "220230"	= "220230: Biological scientists"
      "220250"	= "220250: Medical scientists (excluding practitioners)"
      "220270"	= "220270: Other life scientists"
      "230240"	= "230240: Conservation scientists and foresters"
      "282710"	= "282710: Postsecondary teachers - Agriculture"
      "282730"	= "282730: Postsecondary teachers - Biological sciences"
      "282970"	= "282970: Postsecondary teachers - Other life and physical sciences"
      "311930"	= "311930: Chemists, except biochemists"
      "321920"	= "321920: Atmospheric and space scientists"
      "321940"	= "321940: Environmental scientists and specialists"
      "321950"	= "321950: Geoscientists, including hydrologists and oceanographers"
      "331960"	= "331960: Physicists, except biophysicists"
      "341980"	= "341980: Other physical scientists, including astronomers"
      "382750"	= "382750: Postsecondary teachers - Chemistry"
      "382770"	= "382770: Postsecondary teachers - Atmospheric, earth, environmental, marine, and space sciences"
      "382890"	= "382890: Postsecondary teachers - Physics"
      "412320"	= "412320: Economists"
      "422350"	= "422350: Political scientists"
      "432360"	= "432360: Psychologists - research and applied (e.g., industrial-organizational, experimental)"
      "442310"	= "442310: Anthropologists and archeologists"
      "442370"	= "442370: Sociologists"
      "452380"	= "452380: Other social scientists"
      "482780"	= "482780: Postsecondary teachers - Economics"
      "482900"	= "482900: Postsecondary teachers - Political science"
      "482910"	= "482910: Postsecondary teachers - Psychology"
      "482930"	= "482930: Postsecondary teachers - Sociology"
      "482980"	= "482980: Postsecondary teachers - Other social sciences"
      "510820"	= "510820: Aeronautical, aerospace, and astronautical engineers"
      "520850"	= "520850: Chemical engineers"
      "530860"	= "530860: Civil engineers, including architectural and sanitary"
      "540870"	= "540870: Computer engineers, hardware"
      "540890"	= "540890: Electrical and electronics engineers"
      "550910"	= "550910: Industrial engineers, including health and safety"
      "560940"	= "560940: Mechanical engineers"
      "570840"	= "570840: Bioengineers or biomedical engineers"
      "570900"	= "570900: Environmental engineers"
      "570920"	= "570920: Marine engineers and naval architects"
      "570930"	= "570930: Materials engineers"
      "570950"	= "570950: Mining and geological engineers, including mining safety engineers"
      "570960"	= "570960: Nuclear engineers"
      "570970"	= "570970: Petroleum engineers"
      "570980"	= "570980: Sales engineers"
      "570990"	= "570990: Other engineers, including agricultural"
      "582800"	= "582800: Postsecondary teachers - Engineering"
      "611110"	= "611110: Diagnosing and treating practitioners"
      "611120"	= "611120: Registered nurses, pharmacists, dieticians, therapists, physician assistants, nurse practitioners"
      "611130"	= "611130: Health technologists and technicians"
      "611140"	= "611140: Other health occupations"
      "611150"	= "611150: Psychologists - Health Services (e.g., clinical, counseling, school psychologists)"
      "612870"	= "612870: Postsecondary teachers - Health"
      "621420"	= "621420: Computer and information systems managers"
      "621430"	= "621430: Engineering managers"
      "621440"	= "621440: Medical and health services managers"
      "621450"	= "621450: Natural sciences managers"
      "632530"	= "632530: Teachers: Secondary - computer, math, or sciences"
      "632540"	= "632540: Teachers: Secondary - social sciences"
      "640260"	= "640260: Technologists and technicians, biological and life sciences"
      "640530"	= "640530: Computer programmers, business, scientific, and process control"
      "641000"	= "641000: Electrical, electronic, industrial, and mechanical technicians"
      "641010"	= "641010: Drafting occupations, including computer drafting"
      "641020"	= "641020: Surveying and mapping technicians"
      "641030"	= "641030: Other engineering technologists and technicians"
      "641040"	= "641040: Surveyors, cartographers, and photogrammetrists"
      "641970"	= "641970: Technologists and technicians in the physical sciences"
      "650810"	= "650810: Architects, except naval"
      "651710"	= "651710: Actuaries"
      "711410"	= "711410: Top-executives (e.g., chief executives, general and operations managers, legislators)"
      "711460"	= "711460: Education and childcare administrators"
      "711470"	= "711470: Other mid-level managers"
      "721510"	= "721510: Financial specialists (e.g., accountants, auditors)"
      "721520"	= "721520: Personnel, training, and labor relations specialists"
      "721530"	= "721530: Other management-related occupations"
      "732510"	= "732510: Teachers: Preschool and kindergarten"
      "732520"	= "732520: Teachers: Elementary and middle school"
      "732550"	= "732550: Teachers: Secondary - other subjects"
      "732560"	= "732560: Teachers: Special education - primary and secondary school"
      "732570"	= "732570: Teachers: Other precollegiate area"
      "742720"	= "742720: Postsecondary teachers - Art, drama, and music"
      "742740"	= "742740: Postsecondary teachers - Business"
      "742790"	= "742790: Postsecondary teachers - Education"
      "742810"	= "742810: Postsecondary teachers - English language and literature"
      "742820"	= "742820: Postsecondary teachers - Foreign language and literature"
      "742830"	= "742830: Postsecondary teachers - History"
      "742880"	= "742880: Postsecondary teachers - Recreation and fitness studies"
      "742990"	= "742990: Postsecondary teachers - Other postsecondary fields"
      "750400"	= "750400: Clergy and other religious workers"
      "750700"	= "750700: Counselors (e.g., educational, vocational, mental health, and substance abuse)"
      "752400"	= "752400: Social workers"
      "752410"	= "752410: Miscellaneous community and social service specialists"
      "762000"	= "762000: Sales representatives: services"
      "762010"	= "762010: Sales representatives: wholesale and manufacturing"
      "762020"	= "762020: Retail sales workers"
      "762030"	= "762030: Miscellaneous sales and related workers"
      "770100"	= "770100: Writers, editors, public relations specialists, artists, entertainers, broadcasters, and historians"
      "780310"	= "780310: Bookkeeping, accounting, and auditing clerks"
      "780320"	= "780320: Secretaries and administrative assistants, and receptionists"
      "780330"	= "780330: Other office and administrative support workers"
      "781100"	= "781100: Farming, fishing, and forestry occupations"
      "781200"	= "781200: Lawyers, judges, and related workers"
      "781250"	= "781250: Legal support workers (e.g., paralegals, legal assistants)"
      "781300"	= "781300: Librarians, archivists, and curators"
      "782210"	= "782210: Food preparation and service occupations (e.g., cooks, waitresses, bartenders)"
      "782220"	= "782220: Protective services occupations (e.g., firefighters, police, guards, wardens, park rangers)"
      "782230"	= "782230: Other service occupations, except health"
      "783000"	= "783000: Other teachers and instructors"
      "784010"	= "784010: Construction and extraction occupations"
      "784020"	= "784020: Installation, maintenance, and repair occupations"
      "784030"	= "784030: Production occupations (e.g., assemblers, bakers, metal workers, tailors, woodworkers)"
      "784050"	= "784050: Transportation and material moving occupations"
      "785000"	= "785000: Other occupations (not elsewhere classified)"
      "999989"	= "999989: Logical Skip"
      "999999"	= "999999: Unknown/Missing"
      " " 	= "Missing"
   ;

/* NRREA NRSEC */
   VALUE $OUTSIDE_FIELD_REASONS_CG
      "0"	= "0: No second most important reason"
      "1"	= "1: Pay, promotion opportunities"
      "2"	= "2: Working conditions (hours,equip.,working envir.)"
      "3"	= "3: Job location"
      "4"	= "4: Change in career or professional interests"
      "5"	= "5: Family-related reasons"
      "6"	= "6: Job in highest degree field not available"
      "7"	= "7: Other reason for not working"
      "L"	= "L: Logical Skip"
      " " 	= "Missing"
   ;

/* BAPBP21C CCPB21C D2PBP21C D3PBP21C D4PBP21C D5PBP21C HDPBP21C MRPBP21C PBPR21C */
   VALUE $PUBLIC_PRIVATE_CODES
      "1"	= "1: Publicly controlled"
      "2"	= "2: Privately controlled"
      "L"	= "L: Logical Skip"
      "M"	= "M: Public/Private status information is not available"
      " " 	= "Missing"
   ;

/* RACECAT */
   VALUE $RACECATF
      "01"	= "01: WHITE only"
      "02"	= "02: BLACK only"
      "03"	= "03: NATIVE only"
      "04"	= "04: ASIND only"
      "05"	= "05: CHINESE only"
      "06"	= "06: FILIPINO only"
      "07"	= "07: JAPANESE only"
      "08"	= "08: KOREAN only"
      "09"	= "09: VIETNAMESE only"
      "10"	= "10: O_ASIAN only"
      "11"	= "11: HAWAIIAN only"
      "12"	= "12: CHAMORRO only"
      "14"	= "14: O_PACIFIC only"
      "15"	= "15: WHITE and BLACK"
      "16"	= "16: WHITE and NATIVE"
      "17"	= "17: WHITE and ASIND"
      "18"	= "18: WHITE and CHINESE"
      "19"	= "19: WHITE and FILIPINO"
      "20"	= "20: WHITE and JAPANESE"
      "21"	= "21: WHITE and KOREAN"
      "22"	= "22: WHITE and VIETNAMESE"
      "23"	= "23: WHITE and O_ASIAN"
      "24"	= "24: WHITE and HAWAIIAN"
      "25"	= "25: WHITE and CHAMORRO"
      "26"	= "26: WHITE and O_PACIFIC"
      "27"	= "27: BLACK and NATIVE"
      "28"	= "28: BLACK and ASIND"
      "29"	= "29: BLACK and CHINESE"
      "30"	= "30: BLACK and KOREAN"
      "31"	= "31: BLACK and O_PACIFIC"
      "32"	= "32: CHINESE and FILIPINO"
      "33"	= "33: CHINESE and JAPANESE"
      "34"	= "34: CHINESE and VIETNAMESE"
      "35"	= "35: O_ASIAN and O_PACIFIC"
      "36"	= "36: WHITE and BLACK and NATIVE"
      "37"	= "37: WHITE and BLACK and ASIND"
      "38"	= "38: WHITE and BLACK and CHINESE"
      "39"	= "39: WHITE and BLACK and JAPANESE"
      "40"	= "40: WHITE and BLACK and O_ASIAN"
      "41"	= "41: WHITE and O_ASIAN and HAWAIIAN"
      "42"	= "42: WHITE and BLACK and NATIVE and O_ASIAN and O_PACIFIC"
      "97"	= "97: OTHER RACE COMBINATION - SUPPRESSED"
      " " 	= "Missing"
   ;

/* RACEM */
   VALUE $RACE_CODES_NEW
      "1"	= "1: Asian ONLY"
      "2"	= "2: American Indian/Alaska Native ONLY"
      "3"	= "3: Black ONLY"
      "4"	= "4: White ONLY"
      "5"	= "5: Native Hawaiian/Other Pacific Islander ONLY"
      "6"	= "6: Multiple Race"
      " " 	= "Missing"
   ;

/* BARGN BTHRGN D2RGN D3RGN D4RGN D5RGN EMRG FNCRGN HDRGN MRRGN
   RESPLOC */
   VALUE $REGION_CODES
      "00"	= "00: US, Unspecified"
      "01"	= "01: New England"
      "02"	= "02: Middle Atlantic"
      "03"	= "03: East North Central"
      "04"	= "04: West North Central"
      "05"	= "05: South Atlantic"
      "06"	= "06: East South Central"
      "07"	= "07: West South Central"
      "08"	= "08: Mountain"
      "09"	= "09: Pacific and US Territories"
      "10"	= "10: Europe"
      "20"	= "20: Asia"
      "30"	= "30: North America"
      "31"	= "31: Central America"
      "33"	= "33: Caribbean"
      "37"	= "37: South America"
      "40"	= "40: Africa"
      "50"	= "50: Oceania"
      "55"	= "55: Abroad, not specified"
      "L"	= "L: Logical Skip"
      " " 	= "Missing"
   ;

/* OCEDRLP */
   VALUE $RELATED_CODES
      "1"	= "1: Closely related"
      "2"	= "2: Somewhat related"
      "3"	= "3: Not related"
      "L"	= "L: Logical Skip"
      " " 	= "Missing"
   ;

/* FNVSATP */
   VALUE $RESIDENT_CODES
      "1"	= "1: Permanent U.S. Resident Visa"
      "2"	= "2: Temporary Resident Visa or temporary work"
      "3"	= "3: Temporary Resident Visa for study or training"
      "4"	= "4: Temporary Resident as dependent"
      "5"	= "5: Other temporary Visa"
      "E"	= "E: Erroneously missing due to instrument error"
      "L"	= "L: Logical Skip"
      "M"	= "M: Missing"
      " " 	= "Missing"
   ;

/* EMSMI */
   VALUE $SAME_DIFFERENT_CODES
      "1"	= "1: Same employer AND same job"
      "2"	= "2: Same employer BUT different job"
      "3"	= "3: Different employer BUT same job"
      "4"	= "4: Different employer AND different job"
      "L"	= "L: Logical Skip"
      " " 	= "Missing"
   ;

/* JOBSATIS SATADV SATBEN SATCHAL SATIND SATLOC SATRESP SATSAL SATSEC SATSOC
   */
   VALUE $SATISFIED_CODES
      "1"	= "1: Very satisfied"
      "2"	= "2: Somewhat satisfied"
      "3"	= "3: Somewhat dissatisfied"
      "4"	= "4: Very dissatisfied"
      "L"	= "L: Logical Skip"
      " " 	= "Missing"
   ;

/* SEX_2023 */
   VALUE $SEX_CODES
      "F"	= "F: Female"
      "M"	= "M: Male"
      " " 	= "Missing"
   ;

/* DIFBIR */
   VALUE $SINCE_BIRTH_CODES
      "L"	= "L: Logical skip"
      "N"	= "N: Left box blank"
      "Y"	= "Y: Experienced difficulties since birth (Marked box)"
      " " 	= "Missing"
   ;

/* SPOWK */
   VALUE $SPOUSE_WORKING_CODES
      "1"	= "1: Yes, full-time"
      "2"	= "2: Yes, part-time"
      "3"	= "3: No"
      "L"	= "L: Logical Skip"
      " " 	= "Missing"
   ;

/* SUPDIR */
   VALUE SUPERVISE_DIRECT
      9998 	= "9998: Logical Skip"
       . 	= "Missing"
   ;

/* SUPIND */
   VALUE SUPERVISE_INDIRECT
      99998 	= "99998: Logical Skip"
       . 	= "Missing"
   ;

/* COHORT */
   VALUE $SURVEY_COHORTS
      "G"	= "G: NSCG - 2015 ACS"
      "H"	= "H: NSCG - 2017 ACS"
      "J"	= "J: NSCG - 2019 ACS"
      "K"	= "K: NSCG - 2021 ACS"
      " " 	= "Missing"
   ;

/* SURID */
   VALUE SURVEY_IDENTIFIER_CODES
      1 	= "1: NSCG"
       . 	= "Missing"
   ;

/* SRVMODE */
   VALUE $SURVEY_MODES
      "1"	= "1: Mail"
      "2"	= "2: CATI"
      "4"	= "4: World Wide Web"
      "5"	= "5: Telephone interview using web instrument"
      " " 	= "Missing"
   ;

/* TELEC */
   VALUE $TELECF
      "1"	= "1: Telecommuting/working remotely did not make sense for my job"
      "2"	= "2: I was not allowed or required to telecommute/work remotely"
      "3"	= "3: I was required to telecommute/work remotely"
      "4"	= "4: I was allowed to telecommute/work remotely, and did"
      "5"	= "5: I was allowed to telecommute/work remotely, and did not"
      "L"	= "L: Logical Skip"
      " " 	= "Missing"
   ;

/* TELEFR */
   VALUE $TELEFF
      "1"	= "1: Occasionally, but not consistently"
      "2"	= "2: Consistently 1 to 2 days per week"
      "3"	= "3: Consistently 3 to 4 days per week"
      "4"	= "4: Consistently 5 or more days per week"
      "L"	= "L: Logical Skip"
      " " 	= "Missing"
   ;

/* BAAYR3 D23YR D33YR D43YR D53YR HDACY3 MR3YR */
   VALUE THREE_YEAR_GROUP_CODES_2023_
      1962 	= "1962: 1962 to 1964"
      1965 	= "1965: 1965 to 1967"
      1968 	= "1968: 1968 to 1970"
      1971 	= "1971: 1971 to 1973"
      1974 	= "1974: 1974 to 1976"
      1977 	= "1977: 1977 to 1979"
      1980 	= "1980: 1980 to 1982"
      1983 	= "1983: 1983 to 1985"
      1986 	= "1986: 1986 to 1988"
      1989 	= "1989: 1989 to 1991"
      1992 	= "1992: 1992 to 1994"
      1995 	= "1995: 1995 to 1997"
      1998 	= "1998: 1998 to 2000"
      2001 	= "2001: 2001 to 2003"
      2004 	= "2004: 2004 to 2006"
      2007 	= "2007: 2007 to 2009"
      2010 	= "2010: 2010 to 2012"
      2013 	= "2013: 2013 to 2015"
      2016 	= "2016: 2016 to 2018"
      2019 	= "2019: 2019 to 2021"
      2022 	= "2022: 2022 or later"
      9998 	= "9998: Logical Skip"
      9999 	= "9999: Missing"
       . 	= "Missing"
   ;

/* BAST_TOGA BTHST_TOGA CCST_TOGA D2ST_TOGA D3ST_TOGA D4ST_TOGA D5ST_TOGA EMST_TOGA FNCCD_TOGA HDST_TOGA
   HSST_TOGA MRST_TOGA RESPLO3_TOGA */
   VALUE $TOGALOCAT_CG
      "085"	= "085: New England region, state not specified"
      "087"	= "087: East North Central region, state not specified"
      "088"	= "088: West North Central region, state not specified"
      "090"	= "090: East South Central region, state not specified"
      "091"	= "091: West South Central region, state not specified"
      "092"	= "092: Mountain region, state not specified"
      "093"	= "093: Pacific region, state not specified"
      "096"	= "096: U.S. territories and outlying areas, not specified"
      "097"	= "097: Mid-Atlantic region, state not specified"
      "098"	= "098: South Atlantic region, state not specified"
      "099"	= "099: U.S. state or territory, not specified"
      "100"	= "100: Albania"
      "102"	= "102: Austria"
      "103"	= "103: Belgium"
      "104"	= "104: Bulgaria"
      "105"	= "105: Czechoslovakia"
      "106"	= "106: Denmark"
      "108"	= "108: Finland"
      "109"	= "109: France"
      "110"	= "110: Germany"
      "111"	= "111: Germany, West"
      "116"	= "116: Greece"
      "117"	= "117: Hungary"
      "118"	= "118: Iceland"
      "119"	= "119: Ireland"
      "120"	= "120: Italy"
      "126"	= "126: Netherlands"
      "128"	= "128: Poland"
      "129"	= "129: Portugal"
      "132"	= "132: Romania"
      "134"	= "134: Spain"
      "136"	= "136: Sweden"
      "137"	= "137: Switzerland"
      "138"	= "138: United Kingdom"
      "139"	= "139: England"
      "140"	= "140: Scotland"
      "141"	= "141: Wales"
      "147"	= "147: Yugoslavia"
      "150"	= "150: Bosnia and Herzegovina"
      "151"	= "151: Croatia"
      "152"	= "152: North Macedonia"
      "154"	= "154: Serbia"
      "155"	= "155: Estonia"
      "156"	= "156: Latvia"
      "157"	= "157: Lithuania"
      "158"	= "158: Armenia"
      "159"	= "159: Azerbaijan"
      "160"	= "160: Belarus"
      "161"	= "161: Georgia"
      "163"	= "163: Russia"
      "164"	= "164: Ukraine"
      "165"	= "165: USSR"
      "166"	= "166: Europe, not specified"
      "182"	= "182: Central Europe, not specified"
      "183"	= "183: Eastern Europe, not specified"
      "185"	= "185: Northern Europe, not specified"
      "186"	= "186: Southern Europe, not specified"
      "187"	= "187: Western Europe, not specified"
      "200"	= "200: Afghanistan"
      "202"	= "202: Bangladesh"
      "205"	= "205: Burma"
      "206"	= "206: Cambodia"
      "207"	= "207: China"
      "208"	= "208: Cyprus"
      "209"	= "209: Hong Kong"
      "210"	= "210: India"
      "211"	= "211: Indonesia"
      "212"	= "212: Iran"
      "213"	= "213: Iraq"
      "214"	= "214: Israel"
      "215"	= "215: Japan"
      "216"	= "216: Jordan"
      "218"	= "218: Kazakhstan"
      "219"	= "219: Kyrgyzstan"
      "220"	= "220: Korea, South"
      "222"	= "222: Kuwait"
      "223"	= "223: Laos"
      "224"	= "224: Lebanon"
      "226"	= "226: Malaysia"
      "229"	= "229: Nepal"
      "231"	= "231: Pakistan"
      "233"	= "233: Philippines"
      "235"	= "235: Saudi Arabia"
      "236"	= "236: Singapore"
      "238"	= "238: Sri Lanka"
      "239"	= "239: Syria"
      "240"	= "240: Taiwan"
      "242"	= "242: Thailand"
      "243"	= "243: Turkey"
      "245"	= "245: United Arab Emirates"
      "246"	= "246: Uzbekistan"
      "247"	= "247: Vietnam"
      "249"	= "249: Asia, not specified"
      "252"	= "252: Middle East, not specified"
      "255"	= "255: Southeast Asia, not specified"
      "257"	= "257: Southwest Asia, not specified"
      "260"	= "260: East Asia, not specified"
      "301"	= "301: Canada"
      "303"	= "303: Mexico"
      "305"	= "305: North America, not specified"
      "310"	= "310: Belize"
      "311"	= "311: Costa Rica"
      "312"	= "312: El Salvador"
      "313"	= "313: Guatemala"
      "314"	= "314: Honduras"
      "315"	= "315: Nicaragua"
      "316"	= "316: Panama"
      "317"	= "317: Central America, not specified"
      "323"	= "323: Bahamas, The"
      "324"	= "324: Barbados"
      "327"	= "327: Cuba"
      "328"	= "328: Dominica"
      "329"	= "329: Dominican Republic"
      "330"	= "330: Grenada"
      "332"	= "332: Haiti"
      "333"	= "333: Jamaica"
      "338"	= "338: Saint Kitts and Nevis"
      "341"	= "341: Trinidad and Tobago"
      "353"	= "353: Caribbean, not specified"
      "360"	= "360: Argentina"
      "361"	= "361: Bolivia"
      "362"	= "362: Brazil"
      "363"	= "363: Chile"
      "364"	= "364: Colombia"
      "365"	= "365: Ecuador"
      "368"	= "368: Guyana"
      "369"	= "369: Paraguay"
      "370"	= "370: Peru"
      "372"	= "372: Uruguay"
      "373"	= "373: Venezuela"
      "374"	= "374: South America, not specified"
      "399"	= "399: Americas, not specified"
      "400"	= "400: Algeria"
      "407"	= "407: Cameroon"
      "412"	= "412: Congo, Republic of the"
      "414"	= "414: Egypt"
      "416"	= "416: Ethiopia"
      "417"	= "417: Eritrea"
      "421"	= "421: Ghana"
      "423"	= "423: Guinea"
      "425"	= "425: Cote d'Ivoire"
      "427"	= "427: Kenya"
      "429"	= "429: Liberia"
      "430"	= "430: Libya"
      "436"	= "436: Morocco"
      "440"	= "440: Nigeria"
      "442"	= "442: Rwanda"
      "447"	= "447: Sierra Leone"
      "448"	= "448: Somalia"
      "449"	= "449: South Africa"
      "451"	= "451: Sudan"
      "453"	= "453: Tanzania"
      "454"	= "454: Togo"
      "456"	= "456: Tunisia"
      "457"	= "457: Uganda"
      "459"	= "459: Congo, Democratic Republic of the"
      "461"	= "461: Zimbabwe"
      "462"	= "462: Africa, not specified"
      "464"	= "464: Eastern Africa, not specified"
      "468"	= "468: North Africa, not specified"
      "469"	= "469: Western Africa, not specified"
      "472"	= "472: Central Africa, not specified"
      "501"	= "501: Australia"
      "508"	= "508: Fiji"
      "515"	= "515: New Zealand"
      "528"	= "528: Oceania, not specified"
      "555"	= "555: Abroad, not specified"
      "603"	= "603: Palestinian Territories"
      "998"	= "998: Logical Skip"
      " " 	= "Missing"
   ;

/* WTREASN */
   VALUE $TRAINING_REASON_CODES_NEW
      "1"	= "1: To improve skills or knowledge in your current occupational field"
      "2"	= "2: To increase opportunities for promo/advance in current occupational field"
      "3"	= "3: For licensure/certification in your current occupational field"
      "4"	= "4: To facilitate a change to a different occupational field"
      "5"	= "5: Required or expected by employer"
      "6"	= "6: For leisure or personal interest"
      "7"	= "7: Other reason for training"
      "L"	= "L: Logical Skip"
      " " 	= "Missing"
   ;

/* CTZUS */
   VALUE $US_CITIZEN_CODES
      "1"	= "1: Born in US or US territories"
      "2"	= "2: Born abroad of American parents"
      "3"	= "3: By naturalization"
      "L"	= "L: Logical Skip"
      " " 	= "Missing"
   ;

/* BADGRUS BTHUS D2DGRUS D3DGRUS D4DGRUS D5DGRUS EMUS HDDGRUS MRDGRUS RESPLCUS
   */
   VALUE $US_NONUS_CODES
      "L"	= "L: Logical Skip"
      "N"	= "N: Non-U.S."
      "Y"	= "Y: U.S."
      " " 	= "Missing"
   ;

/* VETSTAT */
   VALUE $VETSTAT
      "0"	= "0: Never served in the military"
      "1"	= "1: Only on active duty for training in the Reserves or National Guard"
      "2"	= "2: Now on active duty"
      "3"	= "3: On active duty in the past, but not now"
      " " 	= "Missing"
   ;

/* VSATP */
   VALUE $VISA_TYPE_CODES
      "1"	= "1: For temporary work"
      "2"	= "2: For study or training"
      "3"	= "3: As dependent"
      "4"	= "4: Other reason"
      "L"	= "L: Logical Skip"
      " " 	= "Missing"
   ;

/* WKSYR */
   VALUE $WEEKS_CODES_NEW
      "1"	= "1: Work 52 weeks per year"
      "2"	= "2: Less than 52 weeks per year"
      "L"	= "L: Logical Skip"
      " " 	= "Missing"
   ;

/* WAPRI WASEC */
   VALUE $WORK_ACTIVITY_CODES_R1_
      "00"	= "00: No Secondary Activity"
      "01"	= "01: Accounting, finance, contracts"
      "02"	= "02: Basic res.-study to gain sci. knwldg prima. for its own sake"
      "03"	= "03: Apld. res.-study to gain sci. knwldg to meet recognized need"
      "04"	= "04: Dev.-knowledge from res. for the prod. of materials, devices"
      "05"	= "05: Design of equipment, processes, structures, models"
      "06"	= "06: Computer applications, programming, systems development"
      "07"	= "07: Human Resources - inc. recruiting, personnel dev, training"
      "08"	= "08: Managing or supervising people or projects"
      "09"	= "09: Production, operations, maintenance (e.g., chip production)"
      "10"	= "10: Prof. services (healthcare, fin. serv., legal serv., etc.)"
      "11"	= "11: Sales, purchasing, marketing"
      "12"	= "12: Quality or productivity management"
      "13"	= "13: Teaching"
      "14"	= "14: Other work activity"
      "L"	= "L: Logical Skip"
      " " 	= "Missing"
   ;

/* WAPRSM WAPRSM2 WASCSM WASCSM2 */
   VALUE $WORK_SUMMARY_CODES
      "1"	= "1: Research and Development"
      "2"	= "2: Teaching"
      "3"	= "3: Management and Administration"
      "4"	= "4: Computer Applications"
      "5"	= "5: Other"
      "6"	= "6: No Secondary Activity"
      "L"	= "L: Logical Skip"
      " " 	= "Missing"
   ;

/* WAPRSM3 WASCSM3 */
   VALUE $WORK_SUMMARY_CODES3_
      "1"	= "1: Research and Development"
      "2"	= "2: Teaching"
      "3"	= "3: Management and Administration"
      "4"	= "4: Computer Applications"
      "5"	= "5: Design"
      "6"	= "6: Other"
      "7"	= "7: No Secondary Activity"
      "L"	= "L: Logical Skip"
      " " 	= "Missing"
   ;

/* ACADV ACCAR ACCCEP ACCHG ACEM ACGRD ACINT ACLIC ACOT ACSIN
   ACSKL ACTCAP ACTDED ACTMGT ACTRD ACTRD2 ACTRDT ACTRES ACTTCH ASDGRI
   BSDGRI CCASDG CCBSDG CCCHGFL CCCOLPR CCCRHS CCFIN CCINT CCOT CCPRAD
   CCSKL CH1218IN CH19IN CH25IN CH611IN CH6IN CHCHG CHCON CHFAM CHLAY
   CHLOC CHLVIN CHOT CHPAY CHRET CHSCH CHU2IN CHUN12 CLIC CLICBIZ
   CLICCEU CLICCHOC CLICCOST CLICEM CLICLAW CLICNOW CLICOPPS CLICOT CLICSKL CLICWKR
   CMEDU CMFAM CMFLD CMOPP CMOT COMCOLI CSAFBS CSAFY CSAHS CSHS
   CSWFY CTZDUAL D2ADV D2CAR D2CHG D2EM D2GRD D2INT D2LIC D2OT
   D2SKL D3ADV D3CAR D3CHG D3EM D3GRD D3INT D3LIC D3OT D3SKL
   D4ADV D4CAR D4CHG D4EM D4GRD D4INT D4LIC D4OT D4SKL D5ADV
   D5CAR D5CHG D5EM D5GRD D5INT D5LIC D5OT D5SKL EMED FNINUS
   FTPRET GOVSUP GRFAST GRFEM GRFERN GRFGFT GRFGRN GRFLN GRFNODG GRFOT
   GRFPLN GRFSAV GRFVET HCAPIN HDADV HDCAR HDCHG HDEM HDGRD HDINT
   HDLIC HDOT HDSKL HISPANIC HISPCAT0 HISPCAT1 HISPCAT2 HISPCAT3 HISPCAT4 JOBINS
   JOBPENS JOBPROFT JOBVAC LOOKWK MARIND MGRNAT MGROTH MGRSOC MRADV MRCAR
   MRCHG MREM MRGRD MRINT MRLIC MROT MRSKL NEWBUS NRCHG NRCON
   NRFAM NRLOC NROCNA NROT NRPAY NWFAM NWILL NWLAY NWNOND NWOCNA
   NWOT NWRET NWSTU PJFAM PJHAJ PJHRS PJNOND PJOCNA PJOT PJRET
   PJSTU PJWTFT PROMTGI SPNAT SPOT SPSOC SUPWK SURV_SE TCDGCMP UGFAST
   UGFEM UGFERN UGFGFT UGFGRN UGFLN UGFNODG UGFOT UGFPLN UGFSAV UGFVET
   VETDATE1 VETDATE2 VETDATE3 VETDATE4 VETDATE5 WAACC WAAPRSH WABRSH WACOM WADEV
   WADSN WAEMRL WAMGMT WAOT WAPROD WAPRRD WAQM WASALE WASVC WATEA
   WKTRNI WRKG WRKGP WTRCHOC WTREM WTRLIC WTROPPS WTROT WTRPERS WTRSKL
   */
   VALUE $YES_NO_CODES
      "E"	= "E: Erroneously Missing Due to Instrument Error"
      "L"	= "L: Logical Skip"
      "M"	= "M: Missing"
      "N"	= "N: No"
      "Y"	= "Y: Yes"
      " " 	= "Missing"
   ;
   run;
