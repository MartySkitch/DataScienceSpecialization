df1 <-
  structure(list(hospital = structure(c(NA, 9L, 1L, 18L, 30L, 31L, 
                                        24L, NA, NA, 32L), .Label = c("ARKANSAS METHODIST MEDICAL CENTER", 
                                                                      "CAPITAL HEALTH MEDICAL CENTER - HOPEWELL", "CARILION GILES COMMUNITY HOSPITAL", 
                                                                      "CINCINNATI VA MEDICAL CENTER", "CIVISTA MEDICAL CENTER", "COFFEYVILLE REGIONAL MEDICAL CENTER", 
                                                                      "COMMUNITY HOSPITAL", "COVENANT MEDICAL CENTER", "D W MCMILLAN MEMORIAL HOSPITAL", 
                                                                      "FRANKLIN REGIONAL HOSPITAL", "GENESYS REGIONAL MEDICAL CENTER - HEALTH PARK", 
                                                                      "HEALTHEAST WOODWINDS HOSPITAL", "HEYWOOD HOSPITAL", "HOSPITAL METROPOLITANO DR TITO MATTEI", 
                                                                      "INDIAN PATH MEDICAL CENTER", "JACKSON COUNTY MEMORIAL HOSPITAL", 
                                                                      "JESSE BROWN VA MEDICAL CENTER - VA CHICAGO HEALTHCARE SYSTEM", 
                                                                      "JOHN C LINCOLN DEER VALLEY HOSPITAL", "KING'S DAUGHTERS' MEDICAL CENTER", 
                                                                      "LIBERTY HOSPITAL", "MARION GENERAL HOSPITAL", "MEDWEST HAYWOOD", 
                                                                      "METROPOLITAN HOSPITAL CENTER", "MIDSTATE MEDICAL CENTER", "NIX HEALTH CARE SYSTEM", 
                                                                      "NORTH OAKS MEDICAL CENTER, LLC", "PALMETTO HEALTH BAPTIST", 
                                                                      "PLATEAU MEDICAL CENTER", "RUMFORD  HOSPITAL", "SHERMAN OAKS HOSPITAL", 
                                                                      "SKY RIDGE MEDICAL CENTER", "SOUTH FLORIDA BAPTIST HOSPITAL", 
                                                                      "ST ALPHONSUS MEDICAL CENTER - BAKER CITY, INC", "ST CROIX REG MED CTR", 
                                                                      "SWEDISH MEDICAL CENTER", "UPMC PASSAVANT", "UPSON REGIONAL MEDICAL CENTER"
                                        ), class = "factor"), state = structure(1:10, .Label = c("AK", 
                                                                                                 "AL", "AR", "AZ", "CA", "CO", "CT", "DC", "DE", "FL", "GA", "GU", 
                                                                                                 "HI", "IA", "ID", "IL", "IN", "KS", "KY", "LA", "MA", "MD", "ME", 
                                                                                                 "MI", "MN", "MO", "MS", "MT", "NC", "ND", "NE", "NH", "NJ", "NM", 
                                                                                                 "NV", "NY", "OH", "OK", "OR", "PA", "PR", "RI", "SC", "SD", "TN", 
                                                                                                 "TX", "UT", "VA", "VI", "VT", "WA", "WI", "WV", "WY"), class = "factor")), .Names = c("hospital", 
                                                                                                                                                                                       "state"), row.names = c("AK", "AL", "AR", "AZ", "CA", "CO", "CT", 
                                                                                                                                                                                                               "DC", "DE", "FL"), class = "data.frame")
df2 <-
  structure(list(hospital = structure(c(29L, 39L, 35L), .Label = c("ALASKA NATIVE MEDICAL CENTER", 
                                                                   "ASPIRUS GRAND VIEW HOSPITAL", "ATHENS REGIONAL MEDICAL CENTER", 
                                                                   "ATHOL MEMORIAL HOSPITAL", "BAY AREA HOSPITAL", "BEAR LAKE MEMORIAL HOSPITAL", 
                                                                   "BERGEN REGIONAL MEDICAL CENTER", "BOLIVAR MEDICAL CENTER", "BURGESS HEALTH CENTER", 
                                                                   "CALDWELL MEDICAL CENTER", "CASTLEVIEW HOSPITAL", "CHRISTIANA CARE HEALTH SERVICES, INC.", 
                                                                   "CIVISTA MEDICAL CENTER", "COSHOCTON COUNTY MEMORIAL HOSPITAL", 
                                                                   "DELANO REGIONAL MEDICAL CENTER", "GEORGETOWN UNIVERSITY HOSPITAL", 
                                                                   "GLACIAL RIDGE HOSPITAL", "GLENDIVE MEDICAL CENTER", "GUAM MEMORIAL HOSPITAL AUTHORITY", 
                                                                   "HAVASU REGIONAL MEDICAL CENTER", "HOSPITAL SAN CARLOS BORROMEO", 
                                                                   "HURON REGIONAL MEDICAL CENTER", "INDIANA UNIVERSITY HEALTH LA PORTE HOSPITAL", 
                                                                   "JACKSONVILLE MEDICAL CENTER", "LAKES REGION GENERAL HOSPITAL", 
                                                                   "LAURENS COUNTY HEALTHCARE SYSTEM", "LIMESTONE MEDICAL CENTER", 
                                                                   "MAUI MEMORIAL MEDICAL CENTER", "MAYO CLINIC HEALTH SYSTEM - NORTHLAND, INC", 
                                                                   "MCDUFFIE REGIONAL MEDICAL CENTER", "MEMORIAL COMMUNITY HOSPITAL", 
                                                                   "MERCY MEMORIAL HEALTH CENTER", "MID COAST HOSPITAL", "MILFORD HOSPITAL, INC", 
                                                                   "NORTH BIG HORN HOSPITAL DISTRICT", "OAKES COMMUNITY HOSPITAL", 
                                                                   "OLYMPIC MEDICAL CENTER", "ONEIDA HEALTHCARE CENTER", "PLATEAU MEDICAL CENTER", 
                                                                   "PORTER HOSPITAL, INC", "POTTSTOWN MEMORIAL MEDICAL CENTER", 
                                                                   "RENOWN REGIONAL MEDICAL CENTER", "RIVER VALLEY MEDICAL CENTER", 
                                                                   "ROY LESTER SCHNEIDER HOSPITAL,THE", "SENTARA LEIGH HOSPITAL", 
                                                                   "SEVEN RIVERS REGIONAL MEDICAL CENTER", "SOUTH COUNTY HOSPITAL INC", 
                                                                   "ST JOHNS HOSPITAL", "ST MARYS HOSPITAL AND MEDICAL CENTER", 
                                                                   "TERREBONNE GENERAL MEDICAL CENTER", "UNIVERSITY OF MISSOURI HEALTH CARE", 
                                                                   "UNM HOSPITAL", "VIDANT EDGECOMBE HOSPITAL", "WESTERN PLAINS MEDICAL COMPLEX"
  ), class = "factor"), state = structure(52:54, .Label = c("AK", 
                                                            "AL", "AR", "AZ", "CA", "CO", "CT", "DC", "DE", "FL", "GA", "GU", 
                                                            "HI", "IA", "ID", "IL", "IN", "KS", "KY", "LA", "MA", "MD", "ME", 
                                                            "MI", "MN", "MO", "MS", "MT", "NC", "ND", "NE", "NH", "NJ", "NM", 
                                                            "NV", "NY", "OH", "OK", "OR", "PA", "PR", "RI", "SC", "SD", "TN", 
                                                            "TX", "UT", "VA", "VI", "VT", "WA", "WI", "WV", "WY"), class = "factor")), .Names = c("hospital", 
                                                                                                                                                  "state"), row.names = c("WI", "WV", "WY"), class = "data.frame")
df3 <-
  structure(list(hospital = structure(c(50L, 16L, 48L, 40L, 18L, 
                                        43L, 20L, 1L, 12L, 6L), .Label = c("AURORA ST LUKES MEDICAL CENTER", 
                                                                           "AVERA HEART HOSPITAL OF SOUTH DAKOTA LLC", "BANNER GOOD SAMARITAN MEDICAL CENTER", 
                                                                           "BAYHEALTH - KENT GENERAL HOSPITAL", "CENTINELA HOSPITAL MEDICAL CENTER", 
                                                                           "CHEYENNE VA MEDICAL CENTER", "COMMUNITY MEDICAL CENTER INC", 
                                                                           "DOCTORS HOSPITAL", "DUNCAN REGIONAL HOSPITAL, INC", "EAST ORANGE GENERAL HOSPITAL", 
                                                                           "ESSENTIA HEALTH ST JOSEPH'S MEDICAL CENTER", "FAIRMONT GENERAL HOSPITAL", 
                                                                           "FAIRVIEW HOSPITAL", "FIRSTHEALTH MOORE REGIONAL HOSPITAL", "FLORIDA HOSPITAL HEARTLAND MEDICAL CENTER", 
                                                                           "FORT DUNCAN MEDICAL CENTER", "GEORGE H. LANIER MEMORIAL HOSPITAL", 
                                                                           "GOV JUAN F LUIS HOSPITAL & MEDICAL CTR", "GUAM MEMORIAL HOSPITAL AUTHORITY", 
                                                                           "HARBORVIEW MEDICAL CENTER", "HARPER UNIVERSITY HOSPITAL", "HAYS MEDICAL CENTER", 
                                                                           "KINGSBROOK JEWISH MEDICAL CENTER", "KUAKINI MEDICAL CENTER", 
                                                                           "LOVELACE REGIONAL HOSPITAL - ROSWELL", "MEDSTAR GOOD SAMARITAN HOSPITAL", 
                                                                           "MERCY MEDICAL CENTER - CEDAR RAPIDS", "MILES MEMORIAL HOSPITAL (LINCOLN COUNTY HEALTHCARE", 
                                                                           "MOUNTAINVIEW HOSPITAL", "NEBRASKA HEART HOSPITAL", "NORTH KANSAS CITY HOSPITAL", 
                                                                           "PALMETTO HEALTH BAPTIST", "PARKER ADVENTIST HOSPITAL", "PHILADELPHIA VA MEDICAL CENTER", 
                                                                           "PORTLAND VA MEDICAL CENTER", "PROVIDENCE HOSPITAL", "RUSH UNIVERSITY MEDICAL CENTER", 
                                                                           "SAINT ALPHONSUS MEDICAL CENTER - NAMPA", "SAN LUKE'S MEMORIAL HOSPITAL INC", 
                                                                           "SENTARA POTOMAC HOSPITAL", "SOUTH CENTRAL REG MED CTR", "SOUTH PENINSULA HOSPITAL", 
                                                                           "SPRINGFIELD HOSPITAL", "ST ALOISIUS MEDICAL CENTER", "ST CATHERINE HOSPITAL INC", 
                                                                           "ST ELIZABETH'S MEDICAL CENTER", "VA CENTRAL AR. VETERANS HEALTHCARE SYSTEM LR", 
                                                                           "VA SALT LAKE CITY HEALTHCARE - GEORGE E. WAHLEN VA MEDICAL CENTER", 
                                                                           "VALLEY REGIONAL HOSPITAL", "WELLMONT HAWKINS COUNTY MEMORIAL HOSPITAL", 
                                                                           "WESTERLY HOSPITAL", "WESTLAKE REGIONAL HOSPITAL", "WILLIS KNIGHTON MEDICAL CENTER", 
                                                                           "YALE-NEW HAVEN HOSPITAL"), class = "factor"), state = structure(45:54, .Label = c("AK", 
                                                                                                                                                              "AL", "AR", "AZ", "CA", "CO", "CT", "DC", "DE", "FL", "GA", "GU", 
                                                                                                                                                              "HI", "IA", "ID", "IL", "IN", "KS", "KY", "LA", "MA", "MD", "ME", 
                                                                                                                                                              "MI", "MN", "MO", "MS", "MT", "NC", "ND", "NE", "NH", "NJ", "NM", 
                                                                                                                                                              "NV", "NY", "OH", "OK", "OR", "PA", "PR", "RI", "SC", "SD", "TN", 
                                                                                                                                                              "TX", "UT", "VA", "VI", "VT", "WA", "WI", "WV", "WY"), class = "factor")), .Names = c("hospital", 
                                                                                                                                                                                                                                                    "state"), row.names = c("TN", "TX", "UT", "VA", "VI", "VT", "WA", 
                                                                                                                                                                                                                                                                            "WI", "WV", "WY"), class = "data.frame")