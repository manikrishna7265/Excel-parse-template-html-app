%dw 2.0
output application/java
---
{
	//Calibration report//
    "OWNER" : "M/s HPCL RAJASTHAN REFINERY LIMITED",
    "CONSULTANT":"ENGINEERS INDIA LIMITED",
    "CONTRACTOR" : "TATA PROJECTS LTD",
    "PROJECT" : "HRRL EPCC 04 PACKAGE DCU",
    "IOA No" : "HRRL/LOA/2019/S4 Dated 27-12-2019",
    "FORMAT No" : "B224-DCU-TPL-114-IN-QD-F-06      Rev.01",
    "Ref.JP No" : "B224-DCU-TPL-114-IN-QD-0003",
    "Ref.ITP No": "B224-DCU-TPL-114-IN-QD-0024",
    "REPORT No" : payload[0]."REPORT NO",
    "REFERENCE DRAWING & DOC No" : payload[0]."Drawing NO",
    
    /*Instrument & Master details*/
"Type1" : payload[0]."TYPE ",
"Tag No1" : payload[0]."TAG NO:",
"Make2" : payload[0]."Make:",
"Model No1" : payload[0]."MODEL NO",
"Serial NO1" :payload[0]."SERIAL NO",
"Cal Range1" : payload[0]."CAL RANGE",
"Cal Date1" : payload[0].Date,
"Type2": payload[0].*"TYPE "[1],
"Make1": payload[0]."MAKE:",
"Model No2": payload[0].*"MODEL NO"[1],
"Serial NO2": payload[0].*"SERIAL NO"[1],
"Cal Range2" : payload[0].*"CAL RANGE"[1],
"TESTING AGENCY": payload[0]."TESTING AGENCY",
"Ref. T/C No" : payload[0]."Ref. T/C No.",
    
    
    /*SIno*/
     "SINo": payload[0]."S.no",
    
   
    
    /*--------(i)input---------*/
    "i1.0" :payload[0].*"1.0"[0],
    "i2.0" :payload[0].*"2.0"[0],
    "i3.0" :payload[0].*"3.0"[0],
    "i4.0" :payload[0].*"4.0"[0],
    "i5.0" :payload[0].*"5.0"[0],
    
    /* -----------(d)Input-------------*/
    "d1.0" :payload[0].*"1.0"[1],
    "d2.0" :payload[0].*"2.0"[1],
    "d3.0" :payload[0].*"3.0"[1],
    "d4.0" :payload[0].*"4.0"[1],
    "d5.0" :payload[0].*"5.0"[1],
    
    /*-----------oa(o/p ascending)------------ */
    "oa1.0" :payload[0].*"1.0"[2],
    "oa2.0" :payload[0].*"2.0"[2],
    "oa3.0" :payload[0].*"3.0"[2],
    "oa4.0" :payload[0].*"4.0"[2],
    "oa5.0" :payload[0].*"5.0"[2],
    
    /*------------ae(ascending error)---------- */
    "ae1.0" :payload[0].*"1.0"[3] as String {format: "0.000", roundMode:"DOWN"},
    "ae2.0" :payload[0].*"2.0"[3]as String {format: "0.000", roundMode:"DOWN"},
    "ae3.0" :payload[0].*"3.0"[3]as String {format: "0.000", roundMode:"DOWN"},
    "ae4.0" :payload[0].*"4.0"[3]as String {format: "0.000", roundMode:"DOWN"},
    "ae5.0" :payload[0].*"5.0"[3]as String {format: "0.000", roundMode:"DOWN"},
/*------------(od) o/p descending-----------*/
    "od1.0" :payload[0].*"1.0"[4],
    "od2.0" :payload[0].*"2.0"[4],
    "od3.0" :payload[0].*"3.0"[4],
    "od4.0" :payload[0].*"4.0"[4],
    "od5.0" :payload[0].*"5.0"[4],
/*------------(de) descending error--------------*/

    "de1.0" :payload[0].*"1.0"[5] as String {format: "0.000", roundMode:"DOWN"},
    "de2.0" :payload[0].*"2.0"[5]as String {format: "0.000", roundMode:"DOWN"},
    "de3.0" :payload[0].*"3.0"[5]as String {format: "0.000", roundMode:"DOWN"},
    "de4.0" :payload[0].*"4.0"[5]as String {format: "0.000", roundMode:"DOWN"},
    "de5.0" :payload[0].*"5.0"[5]as String {format: "0.000", roundMode:"DOWN"},
}