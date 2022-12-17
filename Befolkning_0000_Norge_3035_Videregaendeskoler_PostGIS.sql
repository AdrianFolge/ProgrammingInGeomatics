--
-- PostgreSQL database dump
--

-- Dumped from database version 12.13
-- Dumped by pg_dump version 12.5

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = on;

--
-- Name: videregaendeskoler_16616d3cb76d4e398859925fe145b418; Type: SCHEMA; Schema: -; Owner: -
--

CREATE SCHEMA videregaendeskoler_16616d3cb76d4e398859925fe145b418;


SET default_table_access_method = heap;

--
-- Name: eierforhold; Type: TABLE; Schema: videregaendeskoler_16616d3cb76d4e398859925fe145b418; Owner: -
--

CREATE TABLE videregaendeskoler_16616d3cb76d4e398859925fe145b418.eierforhold (
    identifier text NOT NULL,
    description text
);


--
-- Name: fylkesnummer; Type: TABLE; Schema: videregaendeskoler_16616d3cb76d4e398859925fe145b418; Owner: -
--

CREATE TABLE videregaendeskoler_16616d3cb76d4e398859925fe145b418.fylkesnummer (
    identifier text NOT NULL,
    description text
);


--
-- Name: janei; Type: TABLE; Schema: videregaendeskoler_16616d3cb76d4e398859925fe145b418; Owner: -
--

CREATE TABLE videregaendeskoler_16616d3cb76d4e398859925fe145b418.janei (
    identifier text NOT NULL,
    description text
);


--
-- Name: kommunenummer; Type: TABLE; Schema: videregaendeskoler_16616d3cb76d4e398859925fe145b418; Owner: -
--

CREATE TABLE videregaendeskoler_16616d3cb76d4e398859925fe145b418.kommunenummer (
    identifier text NOT NULL,
    description text
);


--
-- Name: malemetode; Type: TABLE; Schema: videregaendeskoler_16616d3cb76d4e398859925fe145b418; Owner: -
--

CREATE TABLE videregaendeskoler_16616d3cb76d4e398859925fe145b418.malemetode (
    identifier text NOT NULL,
    description text
);


--
-- Name: videregaendeskole; Type: TABLE; Schema: videregaendeskoler_16616d3cb76d4e398859925fe145b418; Owner: -
--

CREATE TABLE videregaendeskoler_16616d3cb76d4e398859925fe145b418.videregaendeskole (
    objid integer NOT NULL,
    objtype text,
    posisjon public.geometry(Geometry,3035),
    skolenavn text,
    nsrid text,
    organisasjonsnummer text,
    lavestetrinn integer,
    hoyestetrinn integer,
    eier_skoleeier_epostadresse text,
    organisasjonsnavn text,
    eier_skoleeier_organisasjonsnummer integer,
    eier_skoleeier_telefonnummer integer,
    antallelever integer,
    antallansatte integer,
    besoksadresse_besoksadresse_adressenavn text,
    besoksadresse_besoksadresse_postnummer text,
    besoksadresse_besoksadresse_poststed text,
    postadresse_postadresse_adressenavn text,
    postadresse_postadresse_postnummer text,
    postadresse_postadresse_poststed text,
    kontaktinformasjon_kontaktinformasjon_epostadresse text,
    kontaktinformasjon_kontaktinformasjon_telefonnummer integer,
    webside text,
    lokalid text,
    navnerom text,
    versjonid text,
    datauttaksdato timestamp with time zone,
    oppdateringsdato timestamp with time zone,
    noyaktighet integer,
    eierforhold text,
    fylkesnummer text,
    idrift text,
    kommunenummer text,
    malemetode text
);


--
-- Data for Name: eierforhold; Type: TABLE DATA; Schema: videregaendeskoler_16616d3cb76d4e398859925fe145b418; Owner: -
--

COPY videregaendeskoler_16616d3cb76d4e398859925fe145b418.eierforhold (identifier, description) FROM stdin;
Offentlig	Offentlig
Privat	Privat
Annet	Annet
\.


--
-- Data for Name: fylkesnummer; Type: TABLE DATA; Schema: videregaendeskoler_16616d3cb76d4e398859925fe145b418; Owner: -
--

COPY videregaendeskoler_16616d3cb76d4e398859925fe145b418.fylkesnummer (identifier, description) FROM stdin;
01	01
02	02
03	03
04	04
05	05
06	06
07	07
08	08
09	09
10	10
11	11
12	12
13	13
14	14
15	15
16	16
17	17
18	18
19	19
20	20
21	21
22	22
23	23
50	50
\.


--
-- Data for Name: janei; Type: TABLE DATA; Schema: videregaendeskoler_16616d3cb76d4e398859925fe145b418; Owner: -
--

COPY videregaendeskoler_16616d3cb76d4e398859925fe145b418.janei (identifier, description) FROM stdin;
Ja	Ja
Nei	Nei
\.


--
-- Data for Name: kommunenummer; Type: TABLE DATA; Schema: videregaendeskoler_16616d3cb76d4e398859925fe145b418; Owner: -
--

COPY videregaendeskoler_16616d3cb76d4e398859925fe145b418.kommunenummer (identifier, description) FROM stdin;
0101	0101
0102	0102
0103	0103
0104	0104
0105	0105
0106	0106
0111	0111
0113	0113
0114	0114
0115	0115
0118	0118
0119	0119
0121	0121
0122	0122
0123	0123
0124	0124
0125	0125
0127	0127
0128	0128
0130	0130
0131	0131
0133	0133
0134	0134
0135	0135
0136	0136
0137	0137
0138	0138
0211	0211
0213	0213
0214	0214
0215	0215
0216	0216
0217	0217
0219	0219
0220	0220
0221	0221
0226	0226
0227	0227
0228	0228
0229	0229
0230	0230
0231	0231
0233	0233
0234	0234
0235	0235
0236	0236
0237	0237
0238	0238
0239	0239
0301	0301
0401	0401
0402	0402
0403	0403
0412	0412
0414	0414
0415	0415
0417	0417
0418	0418
0419	0419
0420	0420
0423	0423
0425	0425
0426	0426
0427	0427
0428	0428
0429	0429
0430	0430
0432	0432
0434	0434
0436	0436
0437	0437
0438	0438
0439	0439
0441	0441
0501	0501
0502	0502
0511	0511
0512	0512
0513	0513
0514	0514
0515	0515
0516	0516
0517	0517
0519	0519
0520	0520
0521	0521
0522	0522
0528	0528
0529	0529
0532	0532
0533	0533
0534	0534
0536	0536
0538	0538
0540	0540
0541	0541
0542	0542
0543	0543
0544	0544
0545	0545
0602	0602
0604	0604
0605	0605
0612	0612
0615	0615
0616	0616
0617	0617
0618	0618
0619	0619
0620	0620
0621	0621
0622	0622
0623	0623
0624	0624
0625	0625
0626	0626
0627	0627
0628	0628
0631	0631
0632	0632
0633	0633
0701	0701
0702	0702
0703	0703
0704	0704
0705	0705
0706	0706
0707	0707
0708	0708
0709	0709
0710	0710
0711	0711
0713	0713
0714	0714
0716	0716
0717	0717
0718	0718
0719	0719
0720	0720
0721	0721
0722	0722
0723	0723
0725	0725
0726	0726
0727	0727
0728	0728
0805	0805
0806	0806
0807	0807
0811	0811
0814	0814
0815	0815
0817	0817
0819	0819
0821	0821
0822	0822
0826	0826
0827	0827
0828	0828
0829	0829
0830	0830
0831	0831
0833	0833
0834	0834
0901	0901
0903	0903
0904	0904
0906	0906
0911	0911
0912	0912
0914	0914
0918	0918
0919	0919
0920	0920
0921	0921
0922	0922
0926	0926
0928	0928
0929	0929
0935	0935
0937	0937
0938	0938
0940	0940
0941	0941
1001	1001
1002	1002
1003	1003
1004	1004
1014	1014
1017	1017
1018	1018
1021	1021
1026	1026
1027	1027
1029	1029
1032	1032
1034	1034
1037	1037
1046	1046
1101	1101
1102	1102
1103	1103
1106	1106
1111	1111
1112	1112
1114	1114
1119	1119
1120	1120
1121	1121
1122	1122
1124	1124
1127	1127
1129	1129
1130	1130
1133	1133
1134	1134
1135	1135
1141	1141
1142	1142
1144	1144
1145	1145
1146	1146
1149	1149
1151	1151
1154	1154
1159	1159
1160	1160
1201	1201
1211	1211
1214	1214
1216	1216
1219	1219
1221	1221
1222	1222
1223	1223
1224	1224
1227	1227
1228	1228
1231	1231
1232	1232
1233	1233
1234	1234
1235	1235
1238	1238
1241	1241
1242	1242
1243	1243
1244	1244
1245	1245
1246	1246
1247	1247
1251	1251
1252	1252
1253	1253
1256	1256
1259	1259
1260	1260
1263	1263
1264	1264
1265	1265
1266	1266
1401	1401
1411	1411
1412	1412
1413	1413
1416	1416
1417	1417
1418	1418
1419	1419
1420	1420
1421	1421
1422	1422
1424	1424
1426	1426
1428	1428
1429	1429
1430	1430
1431	1431
1432	1432
1433	1433
1438	1438
1439	1439
1441	1441
1443	1443
1444	1444
1445	1445
1449	1449
1502	1502
1504	1504
1505	1505
1511	1511
1514	1514
1515	1515
1516	1516
1517	1517
1519	1519
1520	1520
1523	1523
1524	1524
1525	1525
1526	1526
1528	1528
1529	1529
1531	1531
1532	1532
1534	1534
1535	1535
1539	1539
1543	1543
1545	1545
1546	1546
1547	1547
1548	1548
1551	1551
1554	1554
1557	1557
1560	1560
1563	1563
1566	1566
1567	1567
1569	1569
1571	1571
1572	1572
1573	1573
1576	1576
1601	1601
1612	1612
1613	1613
1617	1617
1620	1620
1621	1621
1622	1622
1624	1624
1627	1627
1630	1630
1632	1632
1633	1633
1634	1634
1635	1635
1636	1636
1638	1638
1640	1640
1644	1644
1648	1648
1653	1653
1657	1657
1662	1662
1663	1663
1664	1664
1665	1665
1702	1702
1703	1703
1711	1711
1714	1714
1717	1717
1718	1718
1719	1719
1721	1721
1723	1723
1724	1724
1725	1725
1729	1729
1736	1736
1738	1738
1739	1739
1740	1740
1742	1742
1743	1743
1744	1744
1748	1748
1749	1749
1750	1750
1751	1751
1755	1755
1756	1756
1804	1804
1805	1805
1811	1811
1812	1812
1813	1813
1815	1815
1816	1816
1818	1818
1820	1820
1822	1822
1824	1824
1825	1825
1826	1826
1827	1827
1828	1828
1832	1832
1833	1833
1834	1834
1835	1835
1836	1836
1837	1837
1838	1838
1839	1839
1840	1840
1841	1841
1842	1842
1845	1845
1848	1848
1849	1849
1850	1850
1851	1851
1852	1852
1853	1853
1854	1854
1856	1856
1857	1857
1859	1859
1860	1860
1865	1865
1866	1866
1867	1867
1868	1868
1870	1870
1871	1871
1874	1874
1901	1901
1902	1902
1903	1903
1911	1911
1913	1913
1915	1915
1917	1917
1919	1919
1920	1920
1922	1922
1923	1923
1924	1924
1925	1925
1926	1926
1927	1927
1928	1928
1929	1929
1931	1931
1933	1933
1936	1936
1938	1938
1939	1939
1940	1940
1941	1941
1942	1942
1943	1943
2001	2001
2002	2002
2003	2003
2004	2004
2011	2011
2012	2012
2014	2014
2015	2015
2016	2016
2017	2017
2018	2018
2019	2019
2020	2020
2021	2021
2022	2022
2023	2023
2024	2024
2025	2025
2027	2027
2028	2028
2030	2030
2111	2111
2121	2121
2131	2131
2211	2211
2311	2311
2321	2321
5001	5001
5004	5004
5005	5005
5011	5011
5012	5012
5013	5013
5014	5014
5015	5015
5016	5016
5017	5017
5018	5018
5019	5019
5020	5020
5021	5021
5022	5022
5023	5023
5024	5024
5025	5025
5026	5026
5027	5027
5028	5028
5029	5029
5030	5030
5031	5031
5032	5032
5033	5033
5034	5034
5035	5035
5036	5036
5037	5037
5038	5038
5039	5039
5040	5040
5041	5041
5042	5042
5043	5043
5044	5044
5045	5045
5046	5046
5047	5047
5048	5048
5049	5049
5050	5050
5051	5051
5052	5052
5053	5053
5054	5054
0712	0712
0715	0715
0729	0729
5061	5061
2100	2100
\.


--
-- Data for Name: malemetode; Type: TABLE DATA; Schema: videregaendeskoler_16616d3cb76d4e398859925fe145b418; Owner: -
--

COPY videregaendeskoler_16616d3cb76d4e398859925fe145b418.malemetode (identifier, description) FROM stdin;
10	Terrengmålt: Uspesifisert måleinstrument
11	Terrengmålt: Totalstasjon
12	Terrengmålt: Teodolitt og el avstandsmåler
13	Terrengmålt: Teodolitt og målebånd
14	Terrengmålt: Ortogonalmetoden
15	Utmål
18	Tatt fra plan
19	Annet  (denne har ingen mening, bør fjernes?)
20	Stereoinstrument
21	Aerotriangulert
22	Stereoinstrument: Analytisk plotter
23	Stereoinstrument: Autograf
24	Stereoinstrument: Digitalt
30	Scannet fra kart
31	Skannet fra kart: Blyantoriginal
32	Skannet fra kart: Rissefolie
33	Skannet fra kart: Transparent folie, god kvalitet
34	Skannet fra kart: Transparent folie, mindre god kvalitet
35	Skannet fra kart: Papirkopi
36	Flybåren laserscanner
37	Bilbåren laser
38	Lineær referanse
40	Digitaliseringbord: Ortofoto eller flybilde
41	Digitaliseringbord: Ortofoto, film
42	Digitaliseringbord: Ortofoto, fotokopi
43	Digitaliseringbord: Flybilde, film
44	Digitaliseringbord: Flybilde, fotokopi
45	Digitalisert på skjerm fra ortofoto
46	Digitalisert på skjerm fra satellittbilde
47	Digitalisert på skjerm fra andre digitale rasterdata
48	Digitalisert på skjerm fra tolkning av seismikk
49	Vektorisering av laserdata
50	Digitaliseringsbord: Kart
51	Digitaliseringsbord: Kart, blyantoriginal
52	Digitaliseringsbord: Kart, rissefoile
53	Digitaliseringsbord: Kart, transparent foile, god kvalitet
54	Digitaliseringsbord: Kart, transparent foile, mindre god kvalitet
55	Digitaliseringsbord: Kart, papirkopi
56	Digitalisert på skjerm fra skannet kart
60	Genererte data (interpolasjon)
61	Genererte data (interpolasjon): Terrengmodell
62	Genererte data (interpolasjon): Vektet middel
63	Genererte data: Fra annen geometri
64	Genererte data: Generalisering
65	Genererte data: Sentralpunkt
66	Genererte data: Sammenknytningspunkt, randpunkt
67	Koordinater hentet fra GAB
68	Koordinater hentet fra JREG
69	Beregnet
70	Spesielle metoder
71	Spesielle metoder: Målt med stikkstang
72	Spesielle metoder: Målt med waterstang
73	Spesielle metoder: Målt med målehjul
74	Spesielle metoder: Målt med stigningsmåler
77	Fastsatt punkt
78	Fastsatt ved dom eller kongelig resolusjon
79	Annet (spesifiseres i filhode) ( bør vel fjernes, blir borte ved overføring mellom systemer)
80	Frihåndstegning
81	Frihåndstegning på kart
82	Frihåndstegning på skjerm
90	Treghetsstedfesting
91	GNSS: Kodemåling, relative målinger
92	GNSS: Kodemåling, enkle målinger
93	GNSS: Fasemåling, statisk måling
94	GNSS: Fasemåling, andre metoder
95	Kombinasjon av GNSS/Treghet
96	GNSS: Fasemåling RTK
97	GNSS: Fasemåling , float-løsning
99	Ukjent målemetode
\.


--
-- Data for Name: videregaendeskole; Type: TABLE DATA; Schema: videregaendeskoler_16616d3cb76d4e398859925fe145b418; Owner: -
--

COPY videregaendeskoler_16616d3cb76d4e398859925fe145b418.videregaendeskole (objid, objtype, posisjon, skolenavn, nsrid, organisasjonsnummer, lavestetrinn, hoyestetrinn, eier_skoleeier_epostadresse, organisasjonsnavn, eier_skoleeier_organisasjonsnummer, eier_skoleeier_telefonnummer, antallelever, antallansatte, besoksadresse_besoksadresse_adressenavn, besoksadresse_besoksadresse_postnummer, besoksadresse_besoksadresse_poststed, postadresse_postadresse_adressenavn, postadresse_postadresse_postnummer, postadresse_postadresse_poststed, kontaktinformasjon_kontaktinformasjon_epostadresse, kontaktinformasjon_kontaktinformasjon_telefonnummer, webside, lokalid, navnerom, versjonid, datauttaksdato, oppdateringsdato, noyaktighet, eierforhold, fylkesnummer, idrift, kommunenummer, malemetode) FROM stdin;
1	VideregåendeSkole	0101000020DB0B00009989C2CC5E8250412C149B52FA124F41	Åssiden videregående skole	1005722	974605937	11	13	post@viken.no	Viken fylkeskommune	921693230	32300000	\N	345	Betzy Kjelsbergs vei 267	3028	DRAMMEN	Postboks 3540 Bedriftssenteret	3028	Drammen	assidenvgs@viken.no	32246100	viken.no/assiden-vgs	9e1173ac-a702-4d65-8de1-2b74dfa0a601	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2022-11-13 09:56:08+01	\N	Offentlig	30	Ja	3005	63
2	VideregåendeSkole	0101000020DB0B00007C4855AAD7E95041CA34F0292FC84F41	Åsnes opplæringssenter	1009127	984750153	11	13	post@asnes.kommune.no	Åsnes kommune	964948232	62956600	\N	14	Kvesetmoen 2	2266	ARNEBERG	c/o Åsnes kommune Rådhusgata 1	2266	Flisa	ivar.berg@asnes.kommune.no	62950102	\N	c5386ecc-fc5d-4ff1-adaf-2ebe7fc7e943	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2022-08-16 11:05:28+02	\N	Offentlig	34	Ja	3418	63
3	VideregåendeSkole	0101000020DB0B0000C77F936DC4FF4E41CE41FC69D5BD4F41	Åsane vidaregåande skule	1004954	974557479	11	13	post@vlfk.no	Vestland fylkeskommune	821311632	5557	800	246	Åsane Senter 52	5116	ULSET	\N	5116	\N	post.aav@vlfk.no	55956900	skole.vlfk.no/asanevgs	6b419860-8c11-44ea-a570-493b9345980c	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2022-11-13 09:38:11+01	\N	Offentlig	46	Ja	4601	63
4	VideregåendeSkole	0101000020DB0B00002B852CF6A1A75041F0DD780717FF4E41	Ås videregående skole	1005375	974587564	11	13	post@viken.no	Viken fylkeskommune	921693230	32300000	1400	263	Gamle Hogstvetvei 9	1435	ÅS	POSTBOKS 10	1435	Ås	asvgs@viken.no	64975700	viken.no/aas-vgs	6d17f776-3928-4ab3-86ea-81eacbcfb533	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2022-11-13 09:55:17+01	\N	Offentlig	30	Ja	3021	63
5	VideregåendeSkole	0101000020DB0B000036B0AAF263004F4152CC08D69BA94F41	Årstad videregående skole	1004955	974557487	11	13	post@vlfk.no	Vestland fylkeskommune	821311632	5557	\N	195	Fjøsangerveien 38A	5053	BERGEN	Postboks 2344 Solheimsviken	5053	Bergen	post.aar@vlfk.no	55595100	skole.hfk.no/arstadvgs	5e2e2a41-4bda-41b9-8cc7-1cda4ed68414	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2022-11-13 09:38:12+01	\N	Offentlig	46	Ja	4601	63
6	VideregåendeSkole	0101000020DB0B00005BA15DA826EF4F415AB37720921D5041	Årdal Videregåande skule avd Lærdal	1005159	974571064	11	13	\N	\N	\N	\N	\N	4	Brattegjerde 25	6887	LÆRDAL	\N	6887	\N	\N	\N	\N	52e562f1-3526-4842-866f-aa577160398b	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2020-10-12 16:15:46+02	\N	Offentlig	14	Nei	1422	63
7	VideregåendeSkole	0101000020DB0B0000A7AE08CD3C085041002DA14996335041	Årdal vidaregåande skule	1003484	874571032	11	13	post@vlfk.no	Vestland fylkeskommune	821311632	5557	205	37	Farnesvegen 32	6884	ØVRE ÅRDAL	Postboks 213	6884	Øvre Årdal	postmottak.ardalvgs@vlfk.no	57638400	www.ardal.vgs.no/	cd8c3b3a-ac10-4226-9266-6b941d49c877	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2022-09-13 10:35:26+02	\N	Offentlig	46	Ja	4643	63
8	VideregåendeSkole	0101000020DB0B00007F959EE4027A4F41CAB0D9FC4BB55041	Ålesund videregående skole	1005261	974576538	11	13	post@mrfylke.no	Møre og Romsdal fylkeskommune	944183779	71258000	\N	105	Gangstøvikvegen 27	6009	ÅLESUND	\N	6009	\N	alesund.vgs@mrfylke.no	71281500	www.alesund.vgs.no/	a345a9ca-ccb2-43db-b50e-969206a77c9a	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2022-11-13 09:39:49+01	\N	Offentlig	15	Ja	1507	63
9	VideregåendeSkole	0101000020DB0B0000CC11039FE12D5041A5A3B1ACCDD14F41	Ål vidaregåande skole	1005720	974605910	11	13	post@viken.no	Viken fylkeskommune	921693230	32300000	\N	66	Klokkarbakken 7	3570	ÅL	\N	3570	\N	alvgs@viken.no	32084500	viken.no/al-vgs	620d1b2d-932c-464d-9f25-493c9807abce	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2022-11-13 10:19:48+01	\N	Offentlig	30	Ja	3043	63
10	VideregåendeSkole	0101000020DB0B0000C2FB84EABEDF4E419BDA92846CB84E41	Åkrehamn vidaregåande skole	1005951	974624494	11	13	firmapost@rogfk.no	Rogaland fylkeskommune	971045698	51516600	480	124	Skulevegen 11	4270	ÅKREHAMN	Postboks 43	4270	Åkrehamn	akrehamn-vgs@skole.rogfk.no	51923300	www.akrehamn.vgs.no	c9c9dc91-c894-41c9-bec4-9e952a074363	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2022-11-13 09:40:41+01	\N	Offentlig	11	Ja	1149	63
11	VideregåendeSkole	0101000020DB0B0000A9669078648650411DFED11CB7515141	Åfjord videregående skole	1004985	974558033	11	13	postmottak@trondelagfylke.no	Trøndelag fylkeskommune	817920632	\N	160	38	Åvegen 8	7170	ÅFJORD	\N	7170	\N	postmottak.afjordvgs@trondelagfylke.no	74176800	www.afjord.vgs.no/	459b1b60-c91e-440c-857b-8ecbfbe42084	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2022-10-12 10:36:09+02	\N	Offentlig	50	Ja	5058	63
12	VideregåendeSkole	0101000020DB0B00000E5ABDA91D4B50418DFA723F261F5041	Øystre Slidre Lærlingeverksemda	1028528	924372516	11	13	post@oystre-slidre.kommune.no	Øystre Slidre kommune	961382068	61352500	\N	5	Bygdinvegen 1989	2940	HEGGENES	\N	2940	\N	\N	\N	\N	f4519f7c-4109-409b-a692-891e2c2fb7ca	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2022-08-16 10:44:08+02	\N	Offentlig	34	Ja	3453	63
13	VideregåendeSkole	0101000020DB0B000096C1C6684F8950413C4A281ECF025141	Øya videregående skole	1004735	974149966	8	13	oya@oya.vgs.no	Øya videregående skole	989137913	\N	61	176	Kvålsvegen 133	7228	KVÅL	\N	7228	\N	oya@oya.vgs.no	\N	www.oya.vgs.no	2bc701ea-2187-4b0b-8cd7-2ef64ddfb433	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2022-11-13 09:52:16+01	\N	Privat	50	Ja	5028	63
14	VideregåendeSkole	0101000020DB0B0000E75D6266CDE85041CDEDF3C318754F41	Øvrebyen videregående skole	1005179	974571978	11	13	\N	Innlandet fylkeskommune	920717152	\N	400	63	Jonas Lies gate 1	2213	KONGSVINGER	Postboks 4404	2213	Hamar	post.ovrebyen.vgs@innlandetfylke.no	62825800	www.ovrebyen.vgs.no	cc8d98d7-85d5-49be-a9f6-84f8da2cd254	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2022-11-13 09:17:13+01	\N	Offentlig	34	Ja	3401	63
15	VideregåendeSkole	0101000020DB0B0000B7BF2C10896C4F41F4734ACE70975041	Ørsta vidaregåande skule	1005267	974576597	11	13	post@mrfylke.no	Møre og Romsdal fylkeskommune	944183779	71258000	\N	93	Holmegata 14	6153	ØRSTA	\N	6153	\N	orsta.vgs@mrfylke.no	71282400	www.orsta.vgs.no/	19f153ca-f153-40d8-a5d4-9a8905a5fcbd	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2022-11-13 09:39:50+01	\N	Offentlig	15	Ja	1520	63
16	VideregåendeSkole	0101000020DB0B00001A63BF134B294F41F27DD193F0FF4E41	Ølen vidaregåande skule	1004940	974557134	11	13	firmapost@rogfk.no	Rogaland fylkeskommune	971045698	51516600	320	73	Litlehagen 2	5580	ØLEN	\N	5580	\N	Olen-vgs@skole.rogfk.no	53766400	www.olen.vgs.no/	b0320481-1678-41d7-a27e-2322b5e0615c	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2022-11-13 09:40:42+01	\N	Offentlig	11	Ja	1160	63
17	VideregåendeSkole	0101000020DB0B0000647E029833B55041CA80FD4305B45141	Ytre Namdal videregående skole	1005029	974560739	11	13	postmottak@trondelagfylke.no	Trøndelag fylkeskommune	817920632	\N	\N	77	Hansvikvegen 3A	7900	RØRVIK	\N	7900	\N	Postmottak.ytrenamdalvgs@trondelagfylke.no	74176700	www.ytre-namdal.vgs.no/	b6a1f17b-b1e4-44a5-b94c-01b1d6c7240c	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2022-10-12 10:36:10+02	\N	Offentlig	50	Ja	5060	63
18	VideregåendeSkole	0101000020DB0B0000379BEA2265A350416C92201797354F41	Wang videregående Skole/ Wang Toppidrett	1004026	971816317	11	13	wang@wang.no	Wang AS	933126013	22129700	\N	136	Hansteens gate 8	0253	OSLO	\N	0253	\N	info@wang.no	22129700	www.wang.no	e1357d48-24ae-4faa-a823-4f81f6aa9560	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2022-11-13 09:48:58+01	\N	Privat	03	Ja	0301	63
19	VideregåendeSkole	0101000020DB0B0000205D530257C05041FD74F8F139714F41	Wang Ung Jessheim AS	1026990	918558136	11	13	\N	Wang Ung Jessheim AS	918473149	\N	\N	\N	C/o Hans Jørgen Borgen Fjellbergvegen 14	2055	NORDKISA	\N	2055	\N	\N	\N	\N	3682cb78-c821-45be-820b-fbcaf96c9f7f	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2020-03-14 01:26:56+01	\N	Privat	02	Nei	0235	99
20	VideregåendeSkole	0101000020DB0B000079DD6039E9925041A0E89083CBAE4E41	Wang Tønsberg AS	1010414	995354071	8	13	tonsberg@wang.no	Wang Tønsberg AS	995350076	97715444	186	88	Grenaderveien 11	3122	TØNSBERG	Postboks 84	3122	Tønsberg	tonsberg@wang.no	97715444	www.wang.no	271e603e-d2ee-4493-b740-709a6e2db254	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2022-11-13 10:17:34+01	\N	Privat	38	Ja	3803	63
21	VideregåendeSkole	0101000020DB0B00008C6D3FEB82134F41074867055E734E41	Wang Toppidrett Stavanger AS	1009771	988586102	11	13	steffen.uldal@wang.no	Wang Toppidrett Stavanger AS	988578533	51840700	180	61	Gunnar Warebergs gate 5	4021	STAVANGER	\N	4021	\N	stavanger@wang.no	51840700	www.wang.no	53536ffc-5c48-4931-ad77-b9adf2a5f318	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2022-11-13 10:15:07+01	\N	Privat	11	Ja	1103	63
22	VideregåendeSkole	0101000020DB0B00004DA7F625D1AF50412DC9B7C9D43C4F41	Wang Romerike AS	1028812	825308512	8	13	romerike@wang.no	Wang Romerike AS	916551045	67206668	129	94	Snøkrystallen 11	1470	LØRENSKOG	Postboks 6	1470	Lørenskog	romerike@wang.no	67206668	\N	dd6edcd4-b2ae-4d45-b886-16b29c84aae8	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2022-11-13 09:38:24+01	\N	Privat	30	Ja	3029	63
23	VideregåendeSkole	0101000020DB0B00001288D76717B350413678ABA276F64F41	Wang Hamar AS	1012203	913391470	8	13	ee@wang.no	Wang Hamar AS	913308263	94840009	92	77	Kornsilovegen 54	2316	HAMAR	\N	2316	\N	ee@wang.no	94840009	www.wang.no	ad494c82-1a9a-49d7-befa-da57a9dc2acb	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2022-11-13 09:45:11+01	\N	Privat	34	Ja	3403	63
24	VideregåendeSkole	0101000020DB0B000012B2EF5EA7AF5041E479A33B6F9D4E41	Wang Fredrikstad AS	1009346	986779795	8	13	petter.wilhelmsen@wang.no	Wang Fredrikstad AS	988114146	69241261	150	80	Stadion 3	1671	KRÅKERØY	Postboks 202	1671	Fredrikstad	fredrikstad@wang.no	69241261	www.wang.no	b5bb2b74-d63b-43e5-bdd4-70381e01065a	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2022-10-12 10:34:25+02	\N	Privat	30	Ja	3004	63
25	VideregåendeSkole	0101000020DB0B0000918BD28BCA174F413A032E97E2724E41	Våland videregående skole	1009348	986810714	11	13	firmapost@rogfk.no	Rogaland fylkeskommune	971045698	51516600	\N	\N	Rogalandsgaten 44	4011	STAVANGER	\N	4011	\N	vaaland-vgs@rfk.rogaland-f.kommune.no	51537800	\N	6d449055-c775-45bf-b32b-dd22ab98da2d	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2021-01-12 09:24:04+01	\N	Offentlig	11	Nei	1103	63
26	VideregåendeSkole	0101000020DB0B0000B980BE52F10550413336F4011AB44D41	Vågsbygd videregående skole	1005597	974595001	11	13	postmottak@agderfk.no	Agder fylkeskommune	921707134	38050000	\N	132	Kirsten Flagstads vei 26	4621	KRISTIANSAND S	Postboks 788 Stoa	4621	Arendal	kontakt@vagsbygd.vgs.no	38000800	www.vagsbygd.vgs.no	f88d5c73-6034-45ac-9cc2-096f8edb5f17	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2022-11-13 09:55:36+01	\N	Offentlig	42	Ja	4204	63
27	VideregåendeSkole	0101000020DB0B00008C889219B1164F41E6C84AC1915C4E41	Vågen videregående skole	1010339	994507508	11	13	firmapost@rogfk.no	Rogaland fylkeskommune	971045698	51516600	850	183	Holbergs gate 23	4306	SANDNES	\N	4306	\N	vaagen-vgs@skole.rogfk.no	51921500	www.vågen.vgs.no	622dafaf-ae17-400b-b3e6-bb386ded33eb	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2022-11-13 09:40:43+01	\N	Offentlig	11	Ja	1108	63
28	VideregåendeSkole	0101000020DB0B00004D04A8B1D7794F41604F359267DE4F41	Voss vidaregåande skule	1026181	916031858	11	13	post@vlfk.no	Vestland fylkeskommune	821311632	5557	400	146	Strandavegen 251	5710	SKULESTADMO	\N	5710	\N	post.vvs@vlfk.no	57307600	www.hordaland.no/vossvgs/	b5dd7a2b-a9b9-4349-b66d-3f100c1a4469	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2022-11-13 09:38:14+01	\N	Offentlig	46	Ja	4621	63
29	VideregåendeSkole	0101000020DB0B000034B4696862784F415D1062696AD94F41	Voss gymnas	1026180	816031982	11	13	post@vlfk.no	Vestland fylkeskommune	821311632	5557	580	128	Gymnasvegen 5	5700	VOSS	Postboks 70	5700	Voss	post.vgy@vlfk.no	56532360	www.hordaland.no/vossgymnas	5c63b47b-e308-4da6-a35a-f0a405291935	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2022-11-13 09:38:14+01	\N	Offentlig	46	Ja	4621	63
30	VideregåendeSkole	0101000020DB0B00008419DCFF18664F41A6D877DFA0925041	Volda vidaregåande skule	1003496	874576492	11	13	post@mrfylke.no	Møre og Romsdal fylkeskommune	944183779	71258000	\N	121	Vevendelvegen 35	6102	VOLDA	\N	6102	\N	volda.vgs@mrfylke.no	71282300	www.volda.vgs.no/	87be89d4-9b2e-42ea-a5c1-81a3e49c12e3	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2022-11-13 09:39:49+01	\N	Offentlig	15	Ja	1577	63
31	VideregåendeSkole	0101000020DB0B000078B61B5A1B0E4F41FA3515FF51524E41	Vinterlandbruksskulen på Jæren	1004144	973255509	11	13	post@vlj.no	Vinterlandbruksskulen på Jæren	971557435	51227450	\N	7	Jærvegen 996	4351	KLEPPE	\N	4351	\N	\N	51227450	\N	aa49b1ab-d2ef-4421-ae6e-1c3b4ab3b6b9	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2022-06-16 10:34:41+02	\N	Privat	11	Ja	1120	63
32	VideregåendeSkole	0101000020DB0B0000CF830AB6F8284F4115718825F2FF4E41	Vinterlandbruksskulen i Ryfylke	1011237	997940431	11	13	kontor@vlr.no	Vinterlandbruksskulen i Ryfylke	991673032	\N	\N	4	Dreganesvegen 36	5580	ØLEN	\N	5580	\N	kontor@vlr.no	\N	www.vlr.no	57080743-6a6f-47ca-8d58-258654b67ecc	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2022-06-16 10:34:45+02	\N	Privat	11	Ja	1160	63
33	VideregåendeSkole	0101000020DB0B0000055D7F12E66D50418482179F3A515041	Vinstra vidaregåande skule	1005632	974597233	11	13	\N	Innlandet fylkeskommune	920717152	\N	\N	117	Gamle Skåbuvegen 10	2640	VINSTRA	Postboks 4404	2640	Hamar	vinstra.vgs@innlandetfylke.no	61292300	www.vinstra.vgs.no/	b13597a9-f2cf-45b0-84ea-cf9f56d32a1c	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2022-11-13 09:17:13+01	\N	Offentlig	34	Ja	3436	63
34	VideregåendeSkole	0101000020DB0B0000416526A863A35041C6CE2FB038354F41	Vika videregående skole	1028884	925607797	11	13	postmottak@oslo.kommune.no	Oslo kommune	958935420	2180	\N	46	Cort Adelers gate 30	0254	OSLO	v/ Oslo kommune Utdanningsetaten Postboks 6127 Etterstad	0254	Oslo	\N	\N	\N	222442fe-8d12-40c0-b6d9-0b4c7f4ab1b9	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2022-11-13 09:16:34+01	\N	Offentlig	03	Ja	0301	63
35	VideregåendeSkole	0101000020DB0B00009361B110EAA95041E217F5BF11324F41	Vetland videregående skole	1028962	925971782	11	13	postmottak@oslo.kommune.no	Oslo kommune	958935420	2180	\N	27	Vetlandsveien 79	0685	OSLO	Postboks 6127 Etterstad	0685	Oslo	\N	\N	\N	2b19be48-87b7-4f27-974a-0b0ba27bd947	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2022-11-13 09:16:34+01	\N	Offentlig	03	Ja	0301	63
36	VideregåendeSkole	0101000020DB0B0000EECC4892371051417AC9BDB63B195341	Vestvågøy videregående skole avd Leknes	1005897	974621150	11	13	\N	\N	\N	\N	\N	79	Idrettsgata 64	8370	LEKNES	Postboks 23	8370	Leknes	adm@vestvagoy.vgs.no	76064300	www.lofoten.vgs.no/vvs/	42feb6bc-a84b-46b2-8c48-ad649cdf1751	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2021-01-12 09:16:47+01	\N	Offentlig	18	Nei	1860	63
37	VideregåendeSkole	0101000020DB0B00004E10FCF6342F5041D795E7F7DAD84E41	Vest-Telemark vidaregåande skule	1005131	974568128	11	13	post@vtfk.no	Vestfold og Telemark fylkeskommune	821227062	35917000	\N	2	Brøløsvegen 2	3840	SELJORD	Postboks 2844	3840	Skien	\N	\N	www.bo.vgs.no/	5bc1f2d7-1c0b-408c-94b6-0f23c16f8598	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2022-08-16 10:51:02+02	\N	Offentlig	38	Ja	3820	63
38	VideregåendeSkole	0101000020DB0B00007B8822E4020C50413CF56880BBD24E41	Vest-Telemark vidaregåande skule	1005126	974568055	11	13	post@vtfk.no	Vestfold og Telemark fylkeskommune	821227062	35917000	183	54	Storvegen 195	3880	DALEN	\N	3880	\N	vesttelemark.vgs@vtfk.no	35919700	vtfk.no/skoler/vest-telemark-vgs/	4634a6b6-1104-4c60-ba05-9ea9424db7b9	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2022-10-12 10:52:08+02	\N	Offentlig	38	Ja	3824	63
39	VideregåendeSkole	0101000020DB0B0000EECC4892371051417AC9BDB63B195341	Vest-Lofoten videregående skole	1005898	974621169	11	13	post@nfk.no	Nordland fylkeskommune	964982953	75650000	\N	142	Idrettsgata 64	8370	LEKNES	Postboks 1485	8370	Bodø	post.vest-lofoten@nfk.no	75654500	www.vest-lofoten.vgs.no/	a93662b5-aba6-4f6d-903c-b095dbf75fc0	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2022-11-13 09:17:32+01	\N	Offentlig	18	Ja	1860	63
40	VideregåendeSkole	0101000020DB0B000092826733F1925041548FFC535FA84E41	Vestfold og Telemark fylkeskommune	1028628	996000028	11	13	post@vtfk.no	Vestfold og Telemark fylkeskommune	821227062	35917000	\N	24	Svend Foyns Gate 9	3126	TØNSBERG	\N	3126	\N	\N	\N	\N	b58c49dc-779a-4d21-8565-536c2063f7f9	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2020-03-14 00:45:37+01	\N	Offentlig	38	Ja	3803	63
41	VideregåendeSkole	0101000020DB0B0000DCA5495F116650411D60A1F09D9D4E41	Vestfold og Telemark fylkeskommune	1028333	998151228	11	13	post@vtfk.no	Vestfold og Telemark fylkeskommune	821227062	35917000	\N	13	Fylkesbakken 10	3715	SKIEN	Postboks 2844	3715	Skien	eksamenskontoret@vtfk.no	35917000	\N	14fbe6cc-9523-4ff9-b7c8-47d497eb48de	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2022-11-13 10:18:09+01	\N	Offentlig	38	Ja	3807	63
42	VideregåendeSkole	0101000020DB0B0000C4AA1993ABA5504142937F24C8F24E41	Vestby videregående skole	1005397	974587815	5	13	post@viken.no	Viken fylkeskommune	921693230	32300000	750	162	Noreveien 2	1540	VESTBY	Postboks 183	1540	Vestby	vestbyvgs@viken.no	64983700	viken.no/vestby-vgs	6ea3e904-95e3-49bd-b3df-2c7e01915ef8	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2022-11-13 09:24:50+01	\N	Offentlig	30	Ja	3019	63
43	VideregåendeSkole	0101000020DB0B0000BC1107FD38BE4F4189A375EDA3A15041	Vestborg Vgs	1004673	974117711	11	13	info@vestborg.no	Vestborg Vgs AS	988978132	70263900	\N	72	Hevsdalsvegen 11	6200	STRANDA	\N	6200	\N	info@vestborg.no	70263900	www.vestborg.no	0b065079-1bc9-465f-9c26-cd35f86c99cd	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2022-11-13 09:51:48+01	\N	Privat	15	Ja	1525	63
44	VideregåendeSkole	0101000020DB0B00005E4C304968C45041D6F135E12C405141	Verdal videregående skole	1005030	974560747	11	13	postmottak@trondelagfylke.no	Trøndelag fylkeskommune	817920632	\N	\N	159	Stiklestad alle 8	7654	VERDAL	\N	7654	\N	postmottak@trondelagfylke.no	74176600	www.verdal.vgs.no/	fa9b4138-6790-4252-a85c-c4214785dd21	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2022-11-13 09:37:43+01	\N	Offentlig	50	Ja	5038	63
45	VideregåendeSkole	0101000020DB0B0000296FA4385407504125997DF4EED44D41	Vennesla videregående skole	1005599	974595044	11	13	postmottak@agderfk.no	Agder fylkeskommune	921707134	38050000	\N	104	Kommeren 1	4700	VENNESLA	Postboks 788 Stoa	4700	Arendal	kontakt@vennesla.vgs.no	38152400	www.vennesla.vgs.no	1fe11318-fe59-4804-90e3-dbd89b7da598	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2022-11-13 09:55:38+01	\N	Offentlig	42	Ja	4223	63
46	VideregåendeSkole	0101000020DB0B000061F42C472E7C5341DA863948A87C5441	Vardø videregående skole	1005929	974622777	11	13	postmottak@tffk.no	Troms og Finnmark fylkeskommune	922420866	\N	\N	49	Kaigata 6	9950	VARDØ	Postboks 290	9950	Vardø	vardø.vgs@tffk.no	78989200	www.vardo.vgs.no/	73f1d73d-3681-45ff-a155-1e6d3ddbd061	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2022-10-12 10:26:35+02	\N	Offentlig	54	Ja	5404	63
47	VideregåendeSkole	0101000020DB0B00000C5A1D715BEC4E414E015CEA50D94E41	Vardafjell videregående skole	1005946	974624435	11	13	firmapost@rogfk.no	Rogaland fylkeskommune	971045698	51516600	\N	83	Spannavegen 25	5531	HAUGESUND	\N	5531	\N	vardafjell-vgs@skole.rogfk.no	52709910	vardafjell-vgs@skole.rogfk.no	74fcfb00-48ee-4616-8b32-e79fcc3512ec	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2022-11-13 09:40:42+01	\N	Offentlig	11	Ja	1106	63
48	VideregåendeSkole	0101000020DB0B0000DA14668299985041ACBF1BE67A324F41	Valler videregående skole	1003512	874587702	11	13	post@viken.no	Viken fylkeskommune	921693230	32300000	\N	83	Brynsveien 46	1338	SANDVIKA	\N	1338	\N	vallervgs@viken.no	67805750	viken.no/valler-vgs	7e7bb895-5053-4fcc-b486-ca556efc5069	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2022-10-12 10:21:04+02	\N	Offentlig	30	Ja	3024	63
49	VideregåendeSkole	0101000020DB0B0000A3343EACE0A750412DA0411A8D364F41	Valle Hovin videregående skole	1026703	917527067	11	13	postmottak@oslo.kommune.no	Oslo kommune	958935420	2180	500	75	Innspurten 16C	0663	OSLO	Postboks 6127 Etterstad	0663	Oslo	postmottak@ude.oslo.kommune.no	22741000	vallehovin.vgs.no/	61d02ec6-eefd-4dd7-9614-ca6ea1e7d54f	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2022-11-13 09:16:58+01	\N	Offentlig	03	Ja	0301	63
50	VideregåendeSkole	0101000020DB0B00009E374CF6FB565041DE5A4B671B0D5041	Valdres vidaregåande skule	1005644	974597381	11	13	\N	Innlandet fylkeskommune	920717152	\N	\N	129	Yrkesskulevegen 20	2920	LEIRA I VALDRES	Innlandet fylkeskommune Postboks 4404 Bedriftssenteret	2920	Hamar	valdres.vgs@innlandetfylke.no	61356600	www.valdres.vgs.no/	05d67190-33a0-48ee-8eaa-d3ad9abc8bc8	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2022-10-12 10:20:46+02	\N	Offentlig	34	Ja	3451	63
51	VideregåendeSkole	0101000020DB0B0000D78CBCC33FBE5041CBF1DF7E20AB5141	Val Skoler AS	1004729	974139790	1	13	post@val.vgs.no	Val Skoler AS	989041819	74389000	24	154	Hestvikvegen 73	7970	KOLVEREID	\N	7970	\N	post@val.vgs.no	74389000	www.val.vgs.no/	ab5cac11-2128-497b-923f-2dca43274b3e	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2022-10-12 10:50:35+02	\N	Privat	50	Ja	5060	63
52	VideregåendeSkole	0101000020DB0B0000542E702A445653414CBE3F48914F5441	Vadsø videregående skole	1005923	974622718	11	13	postmottak@tffk.no	Troms og Finnmark fylkeskommune	922420866	\N	\N	85	Karl Rasmussens plass 1	9800	VADSØ	Postboks 610	9800	Vadsø	vadsovgs@tffk.no	78963600	www.vadso.vgs.no/	f9349852-491e-4832-a024-c8539eb695bb	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2022-11-13 09:26:05+01	\N	Offentlig	54	Ja	5405	63
53	VideregåendeSkole	0101000020DB0B00004EE3BC6065A550417C24C78857354F41	Urtehagen videregående privatskole	1003396	873489502	11	13	rektor@urtehagen.com	Urtehagen videregående privatskole	999172520	22057840	\N	16	Grønland 12	0188	OSLO	Grønland 12	0188	Oslo	rektor@urtehagen.com	22057840	www.urtehagen-privatskole.no/	ebd48f48-4548-44e3-b2ea-4c9019708905	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2022-10-12 10:20:24+02	\N	Privat	03	Ja	0301	63
54	VideregåendeSkole	0101000020DB0B0000DFFA014C72834F41A41FDE5D13B45041	Upa skole	1009021	983953026	11	13	post@mrfylke.no	Møre og Romsdal fylkeskommune	944183779	71258000	\N	7	Geilebergvegen 16	6017	ÅLESUND	Ålesund sjukehus Helse Møre og Romsdal HF	6017	Ålesund	upaskolen@mrfylke.no	70106750	\N	901875a5-95bd-4186-91b5-c7e5467a525a	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2022-06-01 12:00:50+02	\N	Offentlig	15	Ja	1507	63
55	VideregåendeSkole	0101000020DB0B000068771DDE108A504125D3B522930B4F41	Ung Invest Aib	1005734	974606186	11	13	post@viken.no	Viken fylkeskommune	921693230	32300000	\N	27	Svelvikveien 63	3039	DRAMMEN	Postboks 656	3039	Drammen	\N	32261200	www.ai-drammen.bu.no	b5650963-27e0-4aad-a622-d37996a07234	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2022-10-12 10:53:43+02	\N	Offentlig	30	Ja	3005	63
56	VideregåendeSkole	0101000020DB0B0000FC727B482E675041E667FDE3ED014F41	Ung Invest Aib	1003546	874606332	11	13	post@viken.no	Viken fylkeskommune	921693230	32300000	\N	9	Stollveien 23	3617	KONGSBERG	Postboks 148	3617	Kongsberg	\N	32763360	\N	5eccb300-0a6a-4dec-a04b-5c7c8eb93695	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2022-10-12 10:21:07+02	\N	Offentlig	30	Ja	3006	63
57	VideregåendeSkole	0101000020DB0B00008EB5B960F28950418DDE2E5F3B734F41	Ung Invest Aib	1005739	974606348	11	13	post@viken.no	Viken fylkeskommune	921693230	32300000	\N	14	Ådalsveien 55	3516	HØNEFOSS	\N	3516	\N	\N	32126533	www.ai-ringerike.bu.no/	604d1397-472f-4c61-abd2-6ef0482ac5cf	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2022-11-13 09:25:40+01	\N	Offentlig	30	Ja	3007	63
58	VideregåendeSkole	0101000020DB0B0000CF2E5E41667A5041F3B5CDCFBA3B4F41	Ung Invest Aib	1008157	976246381	11	13	post@viken.no	Viken fylkeskommune	921693230	32300000	\N	9	Nedre Nedmarken	3370	VIKERSUND	\N	3370	\N	\N	32789570	www.ai-modum.bu.no/	2c021067-f688-4e3f-9953-ae42c59df199	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2022-08-16 10:32:08+02	\N	Offentlig	30	Ja	3047	63
59	VideregåendeSkole	0101000020DB0B0000FB3B4BC78B425041CC85869130E14F41	Ung Invest Aib	1027790	921577397	11	13	post@viken.no	Viken fylkeskommune	921693230	32300000	\N	7	Skulevegen 11	3550	GOL	\N	3550	\N	\N	\N	\N	a06e08f3-5799-43a3-a5a0-8e1ef280c237	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2022-11-01 11:01:37+01	\N	Offentlig	30	Ja	3041	63
60	VideregåendeSkole	0101000020DB0B0000ACE1FB4AE4EF504113FACF9CFA315241	Undervisningssykehjem Helgeland	1010298	993727830	11	13	post@alstahaug.kommune.no	Alstahaug kommune	938712441	75075000	\N	\N	Strandgata 52	8800	SANDNESSJØEN	\N	8800	\N	\N	\N	\N	09dc62d1-a281-4c00-8605-f4216692915b	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2022-02-13 10:20:25+01	\N	Offentlig	18	Nei	1820	63
61	VideregåendeSkole	0101000020DB0B000059FF7F144F554F4117895076C3A75041	Ulstein vidaregåande skule	1005255	974576430	11	13	post@mrfylke.no	Møre og Romsdal fylkeskommune	944183779	71258000	\N	129	Holsekerdalen 180	6065	ULSTEINVIK	\N	6065	\N	ulstein.vgs@mrfylke.no	71281000	www.ulstein.vgs.no/	e273d439-7896-4c2c-b568-f1f8e1834117	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2022-10-12 10:29:36+02	\N	Offentlig	15	Ja	1516	63
62	VideregåendeSkole	0101000020DB0B0000194828815BAA50417ED42014762F4F41	Ulsrud videregående skole	1005538	974590972	11	13	postmottak@oslo.kommune.no	Oslo kommune	958935420	2180	31	129	Tor Jonssons veg 5	0688	OSLO	Postboks 6127 Etterstad	0688	Oslo	postmottak@ude.oslo.kommune.no	22757620	ulsrud.vgs.no	5524e8bf-c4ef-4a15-926e-0973e8ce3127	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2022-11-13 09:16:50+01	\N	Offentlig	03	Ja	0301	63
63	VideregåendeSkole	0101000020DB0B000090AB61E60BA0504196E6097815394F41	Ullern videregående skole	1005537	974590964	11	13	postmottak@oslo.kommune.no	Oslo kommune	958935420	2180	\N	145	Ullernchausséen 66	0379	OSLO	Postboks 6127 Etterstad	0379	Oslo	postmottak@ude.oslo.kommune.no	22517900	ullern.vgs.no	ef2cbb65-de80-4b68-a029-4ccd858b1c11	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2022-11-13 09:16:50+01	\N	Offentlig	03	Ja	0301	63
64	VideregåendeSkole	0101000020DB0B0000C77F936DC4FF4E41CE41FC69D5BD4F41	U Pihls skole	1004936	974557088	11	13	\N	\N	\N	\N	\N	44	Åsane Senter 52	5116	ULSET	\N	5116	\N	\N	55254200	\N	61dabe22-8efc-481a-9c1f-12a41ee11bf1	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2022-04-20 10:18:05+02	\N	Offentlig	12	Nei	1201	63
65	VideregåendeSkole	0101000020DB0B00007E3E6BCF56925041C29C0472A2A84E41	Tønsberg bibelskole AS	1027764	921320205	11	13	post@tonsbergbibelskole.no	Tønsberg bibelskole AS	914942276	33314514	\N	7	Nedre Langgate 32	3126	TØNSBERG	\N	3126	\N	post@tonsbergbibelskole.no	33314514	www.tonsbergbibelskole.no	97e8a256-9ba2-460e-b637-581fe328673d	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2022-10-12 10:44:28+02	\N	Privat	38	Ja	3803	63
66	VideregåendeSkole	0101000020DB0B0000E22E5430F8845041BDA727E61C574F41	Tyrifjord videregående skole	1004146	973255754	11	13	post@tyrifjord.vgs.no	Tyrifjord videregående skole	969550105	32162600	\N	75	Tyrifjordveien 25	3530	RØYSE	\N	3530	\N	post@tyrifjord.vgs.no	32162600	www.tyrifjord.vgs.no	0f045469-6fed-4ab3-a7be-ba36ae0c32ff	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2022-11-13 09:49:39+01	\N	Privat	30	Ja	3038	63
67	VideregåendeSkole	0101000020DB0B0000FF803D25A4234F4168524F43A4C74E41	Tveit vidaregåande skule	1004767	974313804	11	13	kontor@tveit.vgs.no	Tveit vidaregåande skule	874250732	52774850	\N	28	Hinderåvåg	5560	NEDSTRAND	Postboks 54	5560	Nedstrand	kontor@tveit.vgs.no	52774850	\N	97d8908d-df4f-4635-86f9-4a4090cf9530	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2022-10-12 10:50:53+02	\N	Privat	11	Ja	1146	63
68	VideregåendeSkole	0101000020DB0B0000FF803D25A4234F4168524F43A4C74E41	Tveit vidaregåande skole	1004463	973862227	11	13	\N	\N	\N	\N	\N	4	Hinderåvåg	5560	NEDSTRAND	Postboks 299	5560	Stavanger	\N	51516600	www.rogaland-f.kommune.no/~tveit/	dcea7ea6-bf57-4a5a-99c4-c8e3a0033682	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2021-01-12 09:24:02+01	\N	Offentlig	11	Nei	1146	63
69	VideregåendeSkole	0101000020DB0B0000D3957CFE7B3E5041A9B548B2DC1B4E41	Tvedestrand videregående skole	1005217	974573865	11	13	postmottak@agderfk.no	Agder fylkeskommune	921707134	38050000	550	115	Vestervei 97	4900	TVEDESTRAND	Postboks 788 Stoa	4900	Arendal	kontakt@tvedestrand.vgs.no	37196650	tvedestrand.vgs.no	28ff820e-5151-421f-8af3-7d4e4a94e3dd	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2022-11-13 09:24:13+01	\N	Offentlig	42	Ja	4213	63
70	VideregåendeSkole	0101000020DB0B0000D3957CFE7B3E5041A9B548B2DC1B4E41	Tvedestrand videregående skole	1005222	974573970	11	13	postmottak@agderfk.no	Agder fylkeskommune	921707134	38050000	\N	8	Vestervei 97	4900	TVEDESTRAND	\N	4900	\N	kontakt@tvedestrand.vgs.no	37185050	tvedestrand.vgs.no	2f56c32d-62cf-4470-a560-e47fba19e6d6	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2022-11-13 09:24:19+01	\N	Offentlig	42	Ja	4213	63
71	VideregåendeSkole	0101000020DB0B0000C4997EFEE6C250412541E56EBB575141	Trøndelag voksenopplæring	1027546	920572278	11	13	postmottak@trondelagfylke.no	Trøndelag fylkeskommune	817920632	\N	\N	\N	Seilmakergata 2	7725	STEINKJER	\N	7725	\N	\N	\N	\N	9091e1cd-a899-436d-8238-1bb93813407e	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2021-01-12 09:16:29+01	\N	Offentlig	50	Ja	5006	63
72	VideregåendeSkole	0101000020DB0B0000A3C4E541938D50416578D39600145141	Trøndelag nettskole	1029228	927015919	11	13	postmottak@trondelagfylke.no	Trøndelag fylkeskommune	817920632	\N	\N	29	Selsbakkvegen 34	7027	TRONDHEIM	Postboks 2560	7027	Steinkjer	\N	\N	\N	deb61240-0a33-40d0-bcaa-0847d6b1d751	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2022-09-13 10:37:41+02	\N	Offentlig	50	Ja	5001	63
73	VideregåendeSkole	0101000020DB0B000025AE99322BF250417CDCBB5BEF335041	Trysil videregående skole	1005181	974572028	11	13	\N	Innlandet fylkeskommune	920717152	\N	190	65	Vestbyvegen 5	2420	TRYSIL	Postboks 4404	2420	Hamar	post.trysil.vgs@innlandetfylke.no	62448800	www.trysil.vgs.no/	4897a401-862c-44a9-8119-92b460b5462e	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2022-10-12 10:20:53+02	\N	Offentlig	34	Ja	3421	63
74	VideregåendeSkole	0101000020DB0B0000ECD15F496A084F41877328A6DE364E41	Tryggheim vidaregåande skule	1004136	973157221	11	13	post@tryggheim.no	Tryggheim Skular AS	989041827	51798000	\N	194	Tryggheimvegen 13	4365	NÆRBØ	\N	4365	\N	post@tryggheim.no	51798000	www.tryggheim.no	19dd0a45-a02c-4e94-86ef-756bf7d6b5d5	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2022-11-13 09:49:32+01	\N	Privat	11	Ja	1119	63
75	VideregåendeSkole	0101000020DB0B000058A26E3038174F41E155249B8B634E41	Tryggheim Forus videregående skole	1029374	927794187	11	13	post@tryggheimforus.no	Tryggheim Forus AS	993272590	51678010	43	\N	Prinsens vei 8	4315	SANDNES	\N	4315	\N	post@tryggheimforus.no	\N	tryggheimforus.no/	2e899d72-ed91-4964-9db6-88f8468d8f8e	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2022-08-03 19:29:48+02	\N	Privat	11	Ja	1108	63
76	VideregåendeSkole	0101000020DB0B0000BA70FE9F1E8F504196B774E69C175141	Trondheim katedralskole	1004973	974557908	11	13	postmottak@trondelagfylke.no	Trøndelag fylkeskommune	817920632	\N	640	150	Munkegata 8	7013	TRONDHEIM	\N	7013	\N	postmottak.katedralskolenvgs@trondelagfylke.no	92082872	www.trondheim-katedral.vgs.no/	5f4c98dc-64ca-4877-995e-0c1094bc1584	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2022-11-13 09:37:42+01	\N	Offentlig	50	Ja	5001	63
77	VideregåendeSkole	0101000020DB0B0000EAAB6B112ED25141825AFEE243CE5341	Tromsø Maritime skole Sikkerhetsopplæring for Fiskere	1004838	974546914	11	13	\N	\N	\N	\N	\N	14	Sommerfeldts Gate 74	9009	TROMSØ	\N	9009	Tromsø	\N	\N	\N	1bcc5ea6-79c2-438f-a4c9-923de7e908cc	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2022-10-21 10:17:31+02	\N	Offentlig	19	Nei	1902	63
78	VideregåendeSkole	0101000020DB0B0000EAAB6B112ED25141825AFEE243CE5341	Tromsø Maritime skole	1004834	974546876	11	13	postmottak@tffk.no	Troms og Finnmark fylkeskommune	922420866	\N	\N	4	Sommerfeldts gate 74	9009	TROMSØ	Postboks 6341	9009	Tromsø	post.maritime@tromsfylke.no	77666200	www.tos-mar.vgs.no	248c951d-7a63-4262-bfd6-66c8370abb79	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2022-04-21 10:15:21+02	\N	Offentlig	54	Ja	5401	63
79	VideregåendeSkole	0101000020DB0B000014D3B35484D45141F8AC1F6139CE5341	Tromsdalen videregående skole	1004833	974546868	11	13	postmottak@tffk.no	Troms og Finnmark fylkeskommune	922420866	\N	\N	143	Marsvegen 13	9024	TOMASJORD	\N	9024	\N	tromsdalen.vgs@tffk.no	77752500	www.tromsdalen.vgs.no	e2ee8f46-97ca-41f3-b347-88b5cd755a3f	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2022-11-13 09:26:06+01	\N	Offentlig	54	Ja	5401	63
80	VideregåendeSkole	0101000020DB0B000036D7533B37A450418062772E96374F41	Troens Bevis Bibel og Misjons Institutt	1004033	971833793	11	13	post@tbbmi.no	Troens Bevis Bibel og Misjons Institutt	889193352	\N	\N	11	Schwensens gate 9C	0170	OSLO	Postboks 1058 Sentrum	0170	Oslo	post@tbbmi.no	\N	www.tbbmi.no	4892ae2d-e70c-4751-8949-046e6f9fc133	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2022-11-13 09:20:27+01	\N	Privat	03	Ja	0301	63
81	VideregåendeSkole	0101000020DB0B0000B2960A93FDA85041AA019DD3D6B44E41	Tomb videregående skole	1004669	974117290	11	13	post@tomb.no	Tomb videregående skole	969738376	69283000	\N	88	Tomballéen 7	1643	RÅDE	\N	1643	\N	post@tomb.no	69283000	\N	d27e4e9f-6371-4ee2-ad24-197db8d2957d	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2022-10-12 10:49:53+02	\N	Privat	30	Ja	3017	63
82	VideregåendeSkole	0101000020DB0B000026BB28CE54A5504176536E57D2344F41	Tollskolen	1006063	974720752	11	13	\N	\N	\N	\N	\N	\N	Schweigaards Gate 15	0191	OSLO	Postboks 8122 DEP	0191	Oslo	\N	\N	\N	7a95c764-2c1c-46e7-ae30-9dc57666e928	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2022-02-15 09:25:21+01	\N	Offentlig	03	Nei	0301	63
83	VideregåendeSkole	0101000020DB0B00009F62773B4A68504172D46FF60A004F41	Tinius Olsens skole	1005723	974605945	11	13	\N	\N	\N	\N	\N	200	Tinius Olsens Gate 1	3611	KONGSBERG	Postboks 474	3611	Kongsberg	\N	32867600	www.tinius.vgs.no	eb5e792f-f783-4d16-92c6-b6aefc1c176e	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2020-03-14 01:03:34+01	\N	Offentlig	06	Nei	0604	63
84	VideregåendeSkole	0101000020DB0B0000216CF7CCB4215041992F7EC514E15041	Tingvoll vidaregåande skole	1006152	974745607	11	13	post@mrfylke.no	Møre og Romsdal fylkeskommune	944183779	71258000	\N	43	Skolevegen 35	6630	TINGVOLL	\N	6630	\N	tingvoll.vgs@mrfylke.no	71284200	www.tingvoll.vgs.no/	9ad9f472-199f-4cc0-b3dc-034bf460e446	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2022-10-12 10:29:38+02	\N	Offentlig	15	Ja	1560	63
85	VideregåendeSkole	0101000020DB0B000080C21DBCFA8C5041011E839FDB105141	Tiller videregående skole	1004995	974558386	11	13	postmottak@trondelagfylke.no	Trøndelag fylkeskommune	817920632	\N	\N	162	Blisterhaugvegen 9	7078	SAUPSTAD	Postboks 63 Tiller	7078	Trondheim	postmottak.tillervgs@trondelagfylke.no	74176300	www.tiller.vgs.no	58f49075-e759-4a0f-a28d-720115466a18	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2022-11-13 09:37:43+01	\N	Offentlig	50	Ja	5001	63
86	VideregåendeSkole	0101000020DB0B0000312AECC0C18E5041456D23F185175141	Thora Storm videregående skole	1010426	995415372	11	13	postmottak@trondelagfylke.no	Trøndelag fylkeskommune	817920632	\N	1200	145	Suhms gate 6	7012	TRONDHEIM	\N	7012	\N	postmottak.thorastormvgs@trondelagfylke.no	74176400	thorastorm.vgs.no	806e1913-3618-47b6-89d8-052e7d254ca0	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2022-11-13 09:37:43+01	\N	Offentlig	50	Ja	5001	63
87	VideregåendeSkole	0101000020DB0B000096C790494B7E50412B83AC3E3A794E41	Thor Heyerdahl Vidergående skole Skoleavdeling Reipbanegaten	1005245	974575167	11	13	\N	\N	\N	\N	\N	44	Reipbanegaten 20	3262	LARVIK	\N	3262	\N	farris.vgs@vfk.no	33186525	www.farris.vgs.no	8aec4b3b-5581-4ab8-8602-de42a06d918a	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2020-03-14 01:25:33+01	\N	Offentlig	07	Nei	0709	63
88	VideregåendeSkole	0101000020DB0B0000A68C4D8AD57E50411AEF72AA52794E41	Thor Heyerdahl videregående skole	1005236	974575027	11	13	post@vtfk.no	Vestfold og Telemark fylkeskommune	821227062	35917000	1510	287	Hoffs gate 6	3262	LARVIK	Postboks 2844	3262	Skien	thorheyerdahl.vgs@vtfk.no	33123100	thvs.no	c0765006-eeb3-414f-b4c6-c101f73b8edf	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2022-11-13 09:54:29+01	\N	Offentlig	38	Ja	3805	63
89	VideregåendeSkole	0101000020DB0B0000DBD15E3F9CFE4E419333DCEA27BB4F41	Tertnes vidaregåande skule	1004935	974557061	11	13	post@vlfk.no	Vestland fylkeskommune	821311632	5557	\N	76	Tertnesveien 29	5113	TERTNES	\N	5113	\N	post.tev@vlfk.no	55254020	skole.hfk.no/tertnesvgs	badcd2f7-ac0b-47e9-8610-81ed46c43595	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2022-11-13 09:38:13+01	\N	Offentlig	46	Ja	4601	63
90	VideregåendeSkole	0101000020DB0B00005C57A859050950412ABF8EE3BAB84D41	Tangen videregående skole	1003533	874595152	11	13	postmottak@agderfk.no	Agder fylkeskommune	921707134	38050000	\N	242	Tangen 21	4608	KRISTIANSAND S	Postboks 788 Stoa	4608	Arendal	kontakt@tangen.vgs.no	38177600	www.tangen.vgs.no/	c700b358-c856-4698-afb4-8bbd76d2c764	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2022-11-13 09:40:09+01	\N	Offentlig	42	Ja	4204	63
91	VideregåendeSkole	0101000020DB0B00001049828C401553412001F03F71655441	Tana videregående skole	1004646	974064332	11	13	postmottak@tffk.no	Troms og Finnmark fylkeskommune	922420866	\N	\N	65	Birkelund 44	9841	TANA	\N	9841	\N	tana.vgs@tffk.no	78963900	www.tana.vgs.no/	b4a4667c-f5e6-4d37-967c-87c2ff856904	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2022-10-12 10:26:34+02	\N	Offentlig	54	Ja	5441	63
92	VideregåendeSkole	0101000020DB0B0000EB168CDD6FBF50412FFAB89E44464F41	Sørumsand videregående skole	1003513	874587842	11	13	post@viken.no	Viken fylkeskommune	921693230	32300000	\N	123	Skriverveien 23	1920	SØRUMSAND	Postboks 73	1920	Sørumsand	sorumsandvgs@viken.no	63867600	viken.no/sorumsand-vgs	b0b1c7b0-82fe-457e-9b24-58e8efbc4183	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2022-11-13 09:17:19+01	\N	Offentlig	30	Ja	3030	63
93	VideregåendeSkole	0101000020DB0B0000C39471C262FE4F41BCEE0AC2F7AC4D41	Søgne videregående skole	1005609	974595184	11	13	postmottak@agderfk.no	Agder fylkeskommune	921707134	38050000	\N	66	Søgnetunet 3	4640	SØGNE	Postboks 788 Stoa	4640	Arendal	kontakt@sogne.vgs.no	38054700	www.sogne.vgs.no	fefe0671-5651-4dbb-ad86-1c2426c34dac	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2022-11-13 09:55:45+01	\N	Offentlig	42	Ja	4204	63
94	VideregåendeSkole	0101000020DB0B000086B58146959D4F4135C0F743A2AB5041	Sykkylven vidaregåande skule	1005272	974576694	11	13	post@mrfylke.no	Møre og Romsdal fylkeskommune	944183779	71258000	\N	60	Kyrkjevegen 6	6230	SYKKYLVEN	\N	6230	\N	sykkylven.vgs@mrfylke.no	71282200	www.sykkylven.vgs.no	b1d4972c-0f20-45f4-a366-029693208485	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2022-11-13 09:39:50+01	\N	Offentlig	15	Ja	1528	63
95	VideregåendeSkole	0101000020DB0B00000C560BE1FC894F41E1E3ACC0592B5041	Sygna Vgs	1004737	974151537	11	13	khe@sygna.vgs.no	Sygna Vgs AS	988978116	57694500	\N	67	Sygnavegen 15	6899	BALESTRAND	\N	6899	\N	sygna@sygna.vgs.no	57694500	www.sygna.vgs.no	4b308277-1ccb-4bc7-a4b7-b659210c00a1	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2022-10-12 10:50:39+02	\N	Privat	46	Ja	4640	63
96	VideregåendeSkole	0101000020DB0B00005B3297CEF93B5041D4AA9F6CD1E75041	Surnadal vidaregåande skule	1005270	974576651	11	13	post@mrfylke.no	Møre og Romsdal fylkeskommune	944183779	71258000	\N	51	Øyatrøvegen 30	6650	SURNADAL	\N	6650	\N	surnadal.vgs@mrfylke.no	71284400	www.surnadal.vgs.no	1180c818-3285-4191-be62-265396c08d18	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2022-09-13 10:27:14+02	\N	Offentlig	15	Ja	1566	63
97	VideregåendeSkole	0101000020DB0B00000AC355CB3CB3504106314DBD9A3E4F41	Strømmen videregående skole	1005400	974587858	11	13	post@viken.no	Viken fylkeskommune	921693230	32300000	\N	186	Gamle Strømsvei 115	2010	STRØMMEN	Postboks 64	2010	Strømmen	strommenvgs@viken.no	64845020	viken.no/strommen-vgs	32057158-cddd-42d4-9847-94acfddad9b6	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2022-11-13 09:55:19+01	\N	Offentlig	30	Ja	3030	63
98	VideregåendeSkole	0101000020DB0B00006F841BACEFA44F417507E3C23E765041	Stryn vidaregåande skule	1005167	974571153	11	13	post@vlfk.no	Vestland fylkeskommune	821311632	5557	\N	57	Hegrevegen 1	6783	STRYN	Postboks 158	6783	Stryn	postmottak.strynvgs@vlfk.no	57638600	www.stryn.vgs.no/	cb173ced-a33f-4db9-a006-88e61b2e2d51	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2022-11-13 09:38:13+01	\N	Offentlig	46	Ja	4651	63
99	VideregåendeSkole	0101000020DB0B000060A22E3EF3A4504176874150D7364F41	Strykejernet kunstskole AS	1004210	973449990	11	13	post@strykejernet.no	Strykejernet kunstskole AS	968692798	23353190	\N	16	Brenneriveien 9	0182	OSLO	\N	0182	\N	post@strykejernet.no	23353190	www.strykejernet.no	db15ed40-c30f-4e27-8d45-1effae5d1cb7	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2022-11-13 09:50:04+01	\N	Privat	03	Ja	0301	63
100	VideregåendeSkole	0101000020DB0B0000F1C81356AC905041D911CBD6BD165141	Strinda videregående skole	1010631	996772810	1	13	postmottak@trondelagfylke.no	Trøndelag fylkeskommune	817920632	\N	1170	217	Harald Bothners veg 21	7052	TRONDHEIM	\N	7052	\N	postmottak.strindavgs@trondelagfylke.no	74176200	www.strinda.vgs.no	3af1e873-f1a8-4800-a5ec-257da8100b9a	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2022-11-13 09:37:44+01	\N	Offentlig	50	Ja	5001	63
101	VideregåendeSkole	0101000020DB0B0000B66C954E94BD4F412245276B60A15041	Stranda vidaregåande skule	1005271	974576686	11	13	post@mrfylke.no	Møre og Romsdal fylkeskommune	944183779	71258000	\N	34	Hevsdalsvegen 52	6200	STRANDA	\N	6200	\N	stranda.vgs@mrfylke.no	71281900	www.stranda.vgs.no/	0ae7e79f-c0d5-4d5f-b29f-3f2806db2182	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2022-10-12 10:29:38+02	\N	Offentlig	15	Ja	1525	63
102	VideregåendeSkole	0101000020DB0B00000ABDF9BDC22D4F41F5F6AEF07F894E41	Strand videregående skole	1005944	974624419	11	13	firmapost@rogfk.no	Rogaland fylkeskommune	971045698	51516600	600	149	Ryfylkevegen 1914	4120	TAU	\N	4120	\N	strand-vgs@skole.rogfk.no	51740100	www.strand.vgs.no	2c7f29d5-063e-47ca-a8aa-f9832066eb46	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2022-11-13 09:40:42+01	\N	Offentlig	11	Ja	1130	63
103	VideregåendeSkole	0101000020DB0B0000346D6BC06AAE504178FE9E05C83F4F41	Stovner videregående skole	1005546	974591065	11	13	postmottak@oslo.kommune.no	Oslo kommune	958935420	2180	\N	158	Karl Fossums vei 25	0985	OSLO	Postboks 6127 Etterstad	0985	Oslo	postmottak@ude.oslo.kommune.no	22107010	stovner.vgs.no	808a3670-4671-411d-9c3a-cd858ff0fdf9	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2022-11-13 09:16:51+01	\N	Offentlig	03	Ja	0301	63
104	VideregåendeSkole	0101000020DB0B0000598E106BB99B50419433D51EE9885041	Storsteigen videregående skole	1005183	974572052	11	13	\N	Innlandet fylkeskommune	920717152	\N	110	59	Steigjelen 47	2560	ALVDAL	Postboks 4404	2560	Hamar	post.storsteigen.vgs@innlandetfylke.no	62489440	www.storsteigen.vgs.no	dd794edf-dc0d-4367-b8d3-f53003f88419	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2022-10-12 10:20:42+02	\N	Offentlig	34	Ja	3428	63
105	VideregåendeSkole	0101000020DB0B00006BFCCA83F1AF504148B9C186444E5041	Storsteigen videregående skole	1003488	874572322	11	13	\N	Innlandet fylkeskommune	920717152	\N	\N	34	Nordstumoen 18	2480	KOPPANG	Postboks 4404	2480	Hamar	post.storsteigen.vgs@hedmark.org	62463340	www.hedmark.org/skolene/storsteigen-videregaende-skole	ecf27e2e-40c0-46de-9a70-2aa62801f600	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2022-11-13 09:17:12+01	\N	Offentlig	34	Ja	3423	63
106	VideregåendeSkole	0101000020DB0B00001424497E30B35041440EF82A9DF54F41	Storhamar videregående skole	1005177	974571935	11	13	\N	Innlandet fylkeskommune	920717152	\N	470	146	Mabel Sandbergs veg 25	2315	HAMAR	Postboks 4404	2315	Hamar	post.storhamar.vgs@innlandetfylke.no	62544910	www.storhamar.vgs.no	04a31262-3926-4c3c-a7c9-703f799a5827	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2022-11-13 09:17:12+01	\N	Offentlig	34	Ja	3403	63
107	VideregåendeSkole	0101000020DB0B00000395AAC354074F41C323DF6A1C274F41	Stord Yrkesskule og Tekniske Fagskule	1004956	974557495	11	13	\N	\N	\N	\N	\N	84	Vikastemmo 35	5411	STORD	\N	5411	\N	\N	53402240	www.hordaland-f.kommune.no/sty/h-side.htm	a18cbf99-7f56-49f7-afa9-5c2290765b71	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2022-04-20 10:18:06+02	\N	Offentlig	12	Nei	1221	63
108	VideregåendeSkole	0101000020DB0B0000A7C8DF3510084F41CA97F76FEE264F41	Stord vidaregåande skule	1004931	974557029	11	13	post@vlfk.no	Vestland fylkeskommune	821311632	5557	\N	149	Saghaugen 3	5411	STORD	Postboks 1243	5411	Stord	post.stv@vlfk.no	53452000	\N	d9a947b5-cb24-4f3b-9aeb-3796d6a1484c	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2022-12-01 11:04:29+01	\N	Offentlig	46	Ja	4614	63
109	VideregåendeSkole	0101000020DB0B000018FC91E293EB4E41C072D5A144D84E41	Storasund videregående skole	1005960	974624605	11	13	\N	\N	\N	\N	\N	69	Karmsundgata 86	5529	HAUGESUND	\N	5529	\N	Storasund-vgs@rfk.rogaland.kommune.no	52702160	www.rogaland-f.kommune.no/~storasun/	5fd28f49-37ba-4d89-b027-ea2d80b47eff	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2021-01-12 09:24:03+01	\N	Offentlig	11	Nei	1106	63
110	VideregåendeSkole	0101000020DB0B00007A9ECE4D0BCE50412118AF73A1A14E41	Stiftelsen Østerbo videregående skole	1006250	974826704	11	13	post@o-vgs.no	Stiftelsen Østerbo videregående skole	989568116	69172720	\N	24	Østerbo	1764	HALDEN	\N	1764	\N	post@o-vgs.no	69172720	www.osterbo-vgs.no	3c8c61fd-a215-4cdc-bb4f-68f675f85147	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2022-11-13 09:26:14+01	\N	Privat	30	Ja	3001	63
111	VideregåendeSkole	0101000020DB0B00009C162838DE645041FC53C610AE9C4E41	Stiftelsen Telemark Toppidrett gymnas	1003950	888361332	11	13	post@toppidrettsgymnaset.no	Stiftelsen Telemark Toppidrett gymnas	988113107	41747000	\N	74	Odds plass 3	3722	SKIEN	Postboks 50	3722	Skien	post@toppidrettsgymnaset.no	\N	www.toppidrettsgymnaset.no	7b62ecc3-643f-4d26-aadf-03df2c108583	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2022-11-13 10:19:17+01	\N	Privat	38	Ja	3807	63
112	VideregåendeSkole	0101000020DB0B0000882C8BF9630A5041546C4985F7B84D41	Stiftelsen Maritim videregående skole Sørlandet	1004671	974117371	11	13	post@maritim-vgs.no	Stiftelsen Maritim videregående skole Sørlandet	842872022	38121980	45	9	Marviksveien 140	4632	KRISTIANSAND S	\N	4632	\N	post@maritim-vgs.no	38121980	www.maritim-vgs.no	15e8a004-8beb-428e-a9d1-7abf2ea347c8	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2022-09-13 10:50:38+02	\N	Privat	42	Ja	4204	63
113	VideregåendeSkole	0101000020DB0B00009B924415C5FD4E41DB8C450277934F41	Stend vidaregåande skule	1004971	974557703	11	13	post@vlfk.no	Vestland fylkeskommune	821311632	5557	530	210	Fanavegen 249	5244	FANA	\N	5244	\N	post.stj@vlfk.no	55918800	Stend.no	4e55b970-6023-4c07-a9ad-e19d52248c6b	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2022-11-13 09:38:11+01	\N	Offentlig	46	Ja	4601	63
114	VideregåendeSkole	0101000020DB0B00004D7ACCF081C45041926C8EE05F585141	Steinkjer videregående skole	1005025	974560690	11	13	postmottak@trondelagfylke.no	Trøndelag fylkeskommune	817920632	\N	\N	214	Elvenget 10	7716	STEINKJER	Postboks 2112	7716	Steinkjer	postmottak.steinkjervgs@trondelagfylke.no	74176100	www.steinkjer.vgs.no/	14e253f8-fe9b-443e-9860-bd114cb9faa8	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2022-11-13 09:37:42+01	\N	Offentlig	50	Ja	5006	63
115	VideregåendeSkole	0101000020DB0B00007B9F57982EFE4E41F3948459AA9B4F41	Steinerskolen på Skjold	1004217	973465112	1	13	skjold@steinerskolen.no	Stiftelsen steinerskolen på Skjold	977154677	55112380	25	9	Harald Skjolds veg 32	5236	RÅDAL	\N	5236	\N	skjold@steinerskolen.no	55112380	\N	2bcd7ba7-41c3-4a05-9902-cd50f2b39b3c	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2022-06-16 10:34:37+02	\N	Privat	46	Ja	4601	63
116	VideregåendeSkole	0101000020DB0B0000A97FFF1C8593504147B530EFBF185141	Steinerskolen på Rotvoll	1008846	982196574	1	13	rotvoll@steinerskolen.no	Steinerskolen på Rotvoll	982185831	73202880	141	57	Arkitekt Ebbells veg 28	7053	RANHEIM	\N	7053	\N	rotvoll@steinerskolen.no	73202880	steinerskolenpårotvoll.no	5a0ca38f-5aab-4fa1-ba27-98e76fea9a0f	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2022-09-13 11:07:51+02	\N	Privat	50	Ja	5001	63
117	VideregåendeSkole	0101000020DB0B0000023B9BD6FE8D5041A55E7DFFD1175141	Steinerskolen i Trondheim	1006276	975014894	11	13	trondheim@steinerskolen.no	Steinerskolen i Trondheim	984179782	73879080	\N	8	Mellomila 1-5	7018	TRONDHEIM	\N	7018	\N	post@steinerskolentrondheim.no	73879080	www.steinerskolenitrondheim.no	904af574-0f82-48bd-9163-0625592ec7d3	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2022-06-21 17:06:34+02	\N	Privat	50	Ja	5001	63
118	VideregåendeSkole	0101000020DB0B00008F05939322174F414685426AB86F4E41	Steinerskolen i Stavanger	1006280	975037436	11	13	post@stavanger-steinerskolen.no	Steinerskolen i Stavanger	971554940	51828400	\N	7	Skolevollen 19	4017	STAVANGER	\N	4017	\N	\N	\N	\N	456bbdf5-d615-49b9-a9f1-8c2b1baf5104	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2022-09-13 10:29:29+02	\N	Privat	11	Ja	1103	63
119	VideregåendeSkole	0101000020DB0B0000E8A917D66AA25041288D0AEDA1D34E41	Steinerskolen i Moss	1004103	973075381	11	13	moss@steinerskolen.no	Stiftelsen Rudolf steinerskolen i Moss	958087322	69278580	\N	7	Veverbakken 40	1536	MOSS	Postboks 3045 Kambo	1536	Moss	moss@steinerskolen.no	69278580	www.steinerskolenmoss.no/	78f9e27d-6722-41a4-93ce-47c255e39665	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2022-06-16 10:34:36+02	\N	Privat	30	Ja	3002	63
120	VideregåendeSkole	0101000020DB0B000084DDE38152ED4E41C4E2400BA0DA4E41	Steinerskolen i Haugesund	1004135	973156837	11	13	\N	\N	\N	\N	\N	24	Skjoldavegen 156	5532	HAUGESUND	Postboks 467	5532	Haugesund	\N	52728593	\N	18ab3beb-4c40-4941-8afc-3fe542c9210d	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2022-06-16 10:34:36+02	\N	Privat	11	Nei	1106	63
121	VideregåendeSkole	0101000020DB0B0000D5DB5635E29C5041DF10EB16C8384F41	Steinerskolen i Bærum	1006277	975015785	11	13	grav@steinerskolen.no	Stiftelsen steinerskolen i Bærum	971521902	67162270	\N	9	Grav Gårdsvei 5	1358	JAR	\N	1358	\N	grav@steinerskolen.no	67162270	www.stib.no/	f2a8748a-dfda-489f-a10c-1ad522380f54	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2022-06-16 10:34:36+02	\N	Privat	30	Ja	3024	63
122	VideregåendeSkole	0101000020DB0B0000BA7490C683154F41006887375B794E41	Stavanger Offshore Tekniske skole	1027336	919938331	11	12	firmapost@rogfk.no	Rogaland fylkeskommune	971045698	51516600	100	81	Tjuvholmveien 40	4007	STAVANGER	\N	4007	\N	sots@skole.rogfk.no	51500300	www.sots.no	f988f671-180d-42f7-ac71-c3231a7f4c94	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2022-11-13 09:40:41+01	\N	Offentlig	11	Ja	1103	63
123	VideregåendeSkole	0101000020DB0B0000306ABA656D174F41BA835C984B764E41	Stavanger katedralskole	1005943	974624400	11	13	firmapost@rogfk.no	Rogaland fylkeskommune	971045698	51516600	555	130	Haakon VIIs gate 4	4005	STAVANGER	Postboks 39 Sentrum	4005	Stavanger	StavKat-vgs@skole.rogfk.no	51922300	www.stavanger-katedralskole.vgs.no	757df07d-7091-43ab-84a5-87b86e211a2e	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2022-11-13 09:40:42+01	\N	Offentlig	11	Ja	1103	63
124	VideregåendeSkole	0101000020DB0B00009361B110EAA95041E217F5BF11324F41	Statped Oslo Diamanten skole	1006186	974797100	1	13	postmottak@kd.dep.no	Kunnskapsdepartementet	872417842	22249090	6	34	Vetlandsveien 79	0685	OSLO	Statped postmottak Postboks 113	0685	Holmestrand	post@statped.no	2196	www.skaadalen.skole.no	06b8f5ce-0b91-4de8-8492-c3f497203271	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2022-11-13 09:18:23+01	\N	Offentlig	03	Ja	0301	63
125	VideregåendeSkole	0101000020DB0B000040EC6457DC71514137CBD02E2F645341	Stangnes Rå videregående skole	1004628	974056925	11	13	postmottak@tffk.no	Troms og Finnmark fylkeskommune	922420866	\N	200	77	Laskenveien 3	9475	BORKENES	\N	9475	\N	post.ra@tromsfylke.no	77022600	www.ra.vgs.no	22de2b89-e807-40a0-ad71-4e039b00b9bf	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2022-11-13 09:26:07+01	\N	Offentlig	54	Ja	5411	63
126	VideregåendeSkole	0101000020DB0B0000C3C61BD9DC81514101BB2948D8665341	Stangnes Rå videregående skole	1004828	974546760	11	13	postmottak@tffk.no	Troms og Finnmark fylkeskommune	922420866	\N	\N	124	Stangnesveien 39	9409	HARSTAD	Postboks 3120	9409	Harstad	stangnes.vgs@tffk.no	77787200	www.stangnesra.vgs.no	d4d57aab-2ae6-458a-ba7a-4d81c47bdf11	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2022-11-13 09:26:04+01	\N	Offentlig	54	Ja	5402	63
127	VideregåendeSkole	0101000020DB0B00008926A51BF7BB504191C99D3718E44F41	Stange videregående skole	1005185	974572079	11	13	\N	Innlandet fylkeskommune	920717152	\N	\N	116	Ljøstadvegen 11	2335	STANGE	Postboks 4404	2335	Hamar	post.stange.vgs@innlandetfylke.no	62581100	www.stange.vgs.no	94e77c2a-399c-4edf-b57a-689bfd2130b6	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2022-11-13 09:17:14+01	\N	Offentlig	34	Ja	3413	63
128	VideregåendeSkole	0101000020DB0B0000B9314A72749D5041EC04508163344F41	Stabekk videregående skole	1005388	974587718	11	13	post@viken.no	Viken fylkeskommune	921693230	32300000	\N	79	Gamle Drammensvei 15	1369	STABEKK	\N	1369	\N	stabekkvgs@viken.no	67835400	viken.no/stabekk-vgs	70415ff8-afda-4927-ae56-abfaedfd14f7	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2022-11-13 09:24:39+01	\N	Offentlig	30	Ja	3024	63
129	VideregåendeSkole	0101000020DB0B00008A4694B7C9FF4E418B6EE7BF5EAB4F41	St. Paul gymnas	1026506	916794304	11	13	gymnas@stpaulgymnas.no	St. Paul gymnas	916593473	55628040	\N	58	Nygårdsgaten 124	5008	BERGEN	\N	5008	\N	gymnas@stpaulgymnas.no	55628040	www.stpaulgymnas.no	9dd2e752-6cf9-4048-95e9-d51ad6df560b	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2022-11-13 09:46:16+01	\N	Privat	46	Ja	4601	63
130	VideregåendeSkole	0101000020DB0B000001BB8D9B59B95041BCC6DC738AAC4E41	St. Olav videregående skole	1003445	874544582	11	13	post@viken.no	Viken fylkeskommune	921693230	32300000	\N	109	Dronningens gate 51	1723	SARPSBORG	Postboks 357	1723	Sarpsborg	stolavvgs@viken.no	69162400	viken.no/stolav-vgs	77425aad-1cae-4e4e-a30b-8f8dce59bdba	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2022-10-12 11:07:53+02	\N	Offentlig	30	Ja	3003	63
131	VideregåendeSkole	0101000020DB0B000022F0A3647D164F416549CE06E9754E41	St. Olav videregående skole	1005947	974624443	11	13	firmapost@rogfk.no	Rogaland fylkeskommune	971045698	51516600	840	108	Jens Zetlitz' gate 33	4008	STAVANGER	\N	4008	\N	Stolav-vgs@skole.rogfk.no	51922900	www.st-olav.vgs.no	d3525ba1-a610-4a37-94b1-4b13b012dfd4	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2022-11-13 09:40:42+01	\N	Offentlig	11	Ja	1103	63
132	VideregåendeSkole	0101000020DB0B00004E1737D40E134F4130838128A1734E41	St Svithun videregående skole	1005945	974624427	11	13	firmapost@rogfk.no	Rogaland fylkeskommune	971045698	51516600	900	116	Ytre Eiganesveien 30	4022	STAVANGER	\N	4022	\N	StSvithun-vgs@skole.rogfk.no	51597300	www.svithun.vgs.no/	853eb2c9-ee55-4090-b1c5-e3b569dd3710	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2022-11-13 09:40:42+01	\N	Offentlig	11	Ja	1103	63
133	VideregåendeSkole	0101000020DB0B000017307DB8D2885041222D2EBAC9134F41	St Hallvard videregående skole	1005725	974605961	11	13	post@viken.no	Viken fylkeskommune	921693230	32300000	\N	171	Jensvollveien 40	3413	LIER	\N	3413	\N	sthallvardvgs@viken.no	32240100	viken.no/st-hallvard-vgs	b5c4b03d-13c7-4319-aeb8-1f6ac98011ac	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2022-11-13 09:56:10+01	\N	Offentlig	30	Ja	3049	63
134	VideregåendeSkole	0101000020DB0B00009858DD11A8884F41C81E258C75B35041	Spjelkavik videregående skole	1005279	974577267	11	13	post@mrfylke.no	Møre og Romsdal fylkeskommune	944183779	71258000	\N	76	Nedre Langhaugen 32	6011	ÅLESUND	\N	6011	\N	spjelkavik.vgs@mrfylke.no	71282000	www.spjelkavik.vgs.no	9aced561-6d8b-4165-af20-b2e6b7e63301	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2022-09-13 10:27:15+02	\N	Offentlig	15	Ja	1507	63
135	VideregåendeSkole	0101000020DB0B000076B42D9416E74E41161295CC4FA64F41	Sotra vidaregåande skule	1004960	974557568	11	13	post@vlfk.no	Vestland fylkeskommune	821311632	5557	995	155	Branndalsmyra 61	5353	STRAUME	\N	5353	\N	post.sov@vlfk.no	56310200	skole.hfk.no/sotravgs	48d3a877-c77c-4f02-9c6b-0677f927c094	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2022-11-13 09:38:11+01	\N	Offentlig	46	Ja	4626	63
136	VideregåendeSkole	0101000020DB0B0000E6A3A0BCA0D2514154115624AFD15341	Sosiale Medisinske Institusjoner - skolen	1009205	985838992	11	13	postmottak@tffk.no	Troms og Finnmark fylkeskommune	922420866	\N	\N	37	Hansine Hansens veg 92	9019	TROMSØ	\N	9019	\N	smi.skolen@tffk.no	77754420	smi.tffk.no	0c6a3971-973e-43dd-aae2-9ede856cbd9e	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2022-11-13 09:26:07+01	\N	Offentlig	54	Ja	5401	63
137	VideregåendeSkole	0101000020DB0B0000DDEE422E474551413EC9BA7EF66F5341	Sortland videregående skole	1012042	812885162	11	13	post@nfk.no	Nordland fylkeskommune	964982953	75650000	\N	13	Støveien 18	8430	MYRE	Postboks 1485	8430	Bodø	\N	\N	\N	506a5557-d83e-4f2e-bb0e-3e1dbd5a9dc6	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2022-11-13 09:17:33+01	\N	Offentlig	18	Ja	1868	63
138	VideregåendeSkole	0101000020DB0B0000F3EA7E6013545141BCD5C6682F595341	Sortland videregående skole	1005891	974621053	11	13	post@nfk.no	Nordland fylkeskommune	964982953	75650000	\N	122	Parkveien 7A	8400	SORTLAND	Postboks 1485	8400	Bodø	post.sortland@vgs.nfk.no	75655500	sortland.vgs.no	2ce96e3b-0691-4566-9bd2-91a6d325b392	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2022-10-12 10:21:29+02	\N	Offentlig	18	Ja	1870	63
139	VideregåendeSkole	0101000020DB0B00006880D7CD394F514106CF3FD569535341	Sortland videregående skole	1005890	974621045	11	13	post@nfk.no	Nordland fylkeskommune	964982953	75650000	\N	38	Kleiva	8404	SORTLAND	Postboks 1485	8404	Bodø	post.sortland@vgs.nfk.no	75655720	sortland.vgs.no	a6c4f768-a4b0-4e90-85c5-8b1b1537d71d	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2022-10-12 10:21:28+02	\N	Offentlig	18	Ja	1870	63
140	VideregåendeSkole	0101000020DB0B00004C4B6FD91CDC5041883114BE66E44F41	Solør videregående skole	1003487	874571962	11	13	\N	Innlandet fylkeskommune	920717152	\N	250	91	Nordhagamoen 220	2435	BRASKEREIDFOSS	Postboks 4404	2435	Hamar	post.solor.vgs@innlandetfylke.no	62421600	soloer.vgs.no	05291bea-0f2a-403c-b6e1-8a3bb8390442	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2022-11-13 09:17:13+01	\N	Offentlig	34	Ja	3419	63
141	VideregåendeSkole	0101000020DB0B0000B8841B1935E85041446C6772EDC14F41	Solør videregående skole	1010048	990805539	11	13	\N	Innlandet fylkeskommune	920717152	\N	\N	1	Hofsletta 10	2266	ARNEBERG	Postboks 4404	2266	Hamar	stale.sjaatil@klokkergarden.no	62955100	www.klokkergarden.no	84fc38d6-4edf-4490-85fd-b2155107ba88	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2022-03-17 09:15:12+01	\N	Offentlig	34	Ja	3418	63
142	VideregåendeSkole	0101000020DB0B0000CAB800495AEA5041182D3BDFF0DA4F41	Solør videregående skole	1006067	974724901	11	13	\N	Innlandet fylkeskommune	920717152	\N	\N	24	Sønsterud 11	2280	GJESÅSEN	Postboks 4404	2280	Hamar	post.solor.vgs@innlandetfylke.no	62955650	\N	fb2988be-33a1-4b0a-a7db-b4c78b041256	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2022-10-12 10:20:52+02	\N	Offentlig	34	Ja	3418	63
143	VideregåendeSkole	0101000020DB0B000062A5CC75E8E7504118719ADAB6CF4F41	Solør videregående skole	1005180	974571986	11	13	\N	Innlandet fylkeskommune	920717152	\N	\N	41	Sundmoen 25	2270	FLISA	Postboks 4404	2270	Hamar	post.solor.vgs@innlandetfylke.no	62955310	www.soloer.vgs.no	e687996e-9735-4269-b25d-59d94c3d36d5	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2022-10-12 10:20:38+02	\N	Offentlig	34	Ja	3418	63
144	VideregåendeSkole	0101000020DB0B00005231C251CF0E4F410E54309063664E41	Sola videregående skole	1005965	974624672	11	13	firmapost@rogfk.no	Rogaland fylkeskommune	971045698	51516600	735	123	Åsenvegen 78	4055	SOLA	Postboks 190	4055	Sola	sola-vgs@skole.rogfk.no	51923900	www.sola.vgs.no	f8a28c02-1dc5-43bc-9f67-bc831e844aef	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2022-11-13 09:40:43+01	\N	Offentlig	11	Ja	1124	63
145	VideregåendeSkole	0101000020DB0B00005AD094B59AC44F414432CC3BB02C5041	Sogndal vidaregåande skule	1005158	974571056	11	13	post@vlfk.no	Vestland fylkeskommune	821311632	5557	800	161	Lunnamyri 2	6856	SOGNDAL	\N	6856	\N	postsogv@vlfk.no	57676400	www.sogndal.vgs.no	7d5dd7a1-75eb-48d9-ad8c-1432a9cdbbc7	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2022-11-13 09:38:12+01	\N	Offentlig	46	Ja	4640	63
146	VideregåendeSkole	0101000020DB0B0000650AA6E4D5CD4F413D87E07DB5085041	Sogn Jord- og hagebruksskule	1003486	874571202	11	13	post@vlfk.no	Vestland fylkeskommune	821311632	5557	\N	58	Skulevegen 24	5745	AURLAND	\N	5745	\N	sjh@sfj.no	57632650	www.sogn-j-h.vgs.no	19018410-ec32-4a0b-91f2-5dbb887b51bc	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2022-11-13 09:38:11+01	\N	Offentlig	46	Ja	4641	63
147	VideregåendeSkole	0101000020DB0B00003433C23D7E075041BEDD67C25CBC4D41	Smi-Skolen i Kristiansand	1003948	888249982	1	13	postmottak@agderfk.no	Agder fylkeskommune	921707134	38050000	\N	35	Egsveien 100	4615	KRISTIANSAND S	Postboks 788 Stoa	4615	Arendal	kontakt@smikristiansand.no	38074338	\N	881f198b-e478-4ba1-865a-9615b3a6db2b	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2022-09-13 10:41:40+02	\N	Offentlig	42	Ja	4204	63
148	VideregåendeSkole	0101000020DB0B0000DFA766CBCC3450417D197FCEFAFB4D41	Smi-Skolen i Arendal	1004427	973810316	1	13	postmottak@agderfk.no	Agder fylkeskommune	921707134	38050000	\N	34	Sykehusveien 4	4838	ARENDAL	Postboks 788 Stoa	4838	Arendal	kontakt@smiarendal.no	37099050	\N	9e00976c-9d63-431c-ba02-695177b2690b	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2022-11-13 10:18:30+01	\N	Offentlig	42	Ja	4203	63
149	VideregåendeSkole	0101000020DB0B000028103A7343014F41C099BABA539B4F41	Slåtthaug videregående skole	1004949	974557320	11	13	post@vlfk.no	Vestland fylkeskommune	821311632	5557	\N	88	Slåtthaugvegen 134	5222	NESTTUN	\N	5222	\N	post.slv@vlfk.no	55918600	skole.hfk.no/slatthaugvgs	f105dc56-d91b-423b-8d83-fe9889acac07	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2022-11-13 09:38:12+01	\N	Offentlig	46	Ja	4601	63
150	VideregåendeSkole	0101000020DB0B0000B3F22A315E925041B23A925A77A94E41	Slottsfjellet videregående	1004132	973141805	11	13	thomas.johnsen@steinerskolen.no	Stiftelsen Slottsfjellet videregående steinerskole	821085942	\N	\N	14	Baglergaten 16	3111	TØNSBERG	Furumoveien 2	3111	Vestskogen	thomas.johnsen@steinerskolen.no	33352200	\N	dd0b46ec-965d-4b42-8614-b09fd71eeaf1	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2022-09-13 10:24:09+02	\N	Privat	38	Ja	3803	63
151	VideregåendeSkole	0101000020DB0B00005E46438681665041E9B63CFB5E944E41	Skogmo videregående skole	1005132	974568152	11	13	post@vtfk.no	Vestfold og Telemark fylkeskommune	821227062	35917000	\N	209	Kjørbekkdalen 11	3735	SKIEN	Postboks 2844	3735	Skien	skogmo.vgs@vtfk.no	35919200	www.skogmo.vgs.no/	8168f4bb-babe-4a56-a3e7-f20a81c3e1f7	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2022-11-13 09:53:52+01	\N	Offentlig	38	Ja	3807	63
152	VideregåendeSkole	0101000020DB0B00006BC62A742B6650416565BF9D049A4E41	Skien videregående skole	1005124	974568039	11	13	post@vtfk.no	Vestfold og Telemark fylkeskommune	821227062	35917000	\N	180	Hollenderigata 5	3732	SKIEN	Postboks 2844	3732	Skien	skien.vgs@vtfk.no	35918000	www.skien.vgs.no	5da2eb8f-91ed-4ce5-8a80-8a53ad07bfb9	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2022-11-13 09:53:50+01	\N	Offentlig	38	Ja	3807	63
153	VideregåendeSkole	0101000020DB0B00005B1E224B7EAA504171301DE4FD0A4F41	Ski videregående skole	1005387	974587696	11	13	post@viken.no	Viken fylkeskommune	921693230	32300000	\N	144	Gymnasveien 6	1400	SKI	Postboks 124	1400	Ski	skivgs@viken.no	64913600	viken.no/ski-vgs	cddd0b12-c66f-417f-9be7-87e061b2a84c	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2022-11-13 09:24:37+01	\N	Offentlig	30	Ja	3020	63
154	VideregåendeSkole	0101000020DB0B0000F11465086AEA4E4192B4B35BE9DB4E41	Skeisvang videregående skole	1005939	974624362	11	13	firmapost@rogfk.no	Rogaland fylkeskommune	971045698	51516600	680	96	Rogalandgata 197	5518	HAUGESUND	\N	5518	\N	skeisvang-vgs@skole.rogfk.no	52703710	www.skeisvang.vgs.no	4b362c20-317f-4f05-badc-5e739448437b	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2022-11-13 09:40:42+01	\N	Offentlig	11	Ja	1106	63
155	VideregåendeSkole	0101000020DB0B00007402B99C9EB45041DB39560805414F41	Skedsmo videregående skole	1005381	974587629	1	13	post@viken.no	Viken fylkeskommune	921693230	32300000	24	271	Vestbygata 61	2003	LILLESTRØM	Postboks 351	2003	Lillestrøm	skedsmovgs@viken.no	63891700	viken.no/skedsmo-vgs	ce61a822-1299-4488-9810-a8206ee5db46	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2022-11-13 09:24:31+01	\N	Offentlig	30	Ja	3030	63
156	VideregåendeSkole	0101000020DB0B0000E6B3A78C09D65041644F3489E5814F41	Skarnes videregående skole	1005186	974572117	11	13	\N	Innlandet fylkeskommune	920717152	\N	\N	72	Skolevegen 22	2100	SKARNES	Postboks 4404	2100	Hamar	post.skarnes.vgs@innlandetfylke.no	62966700	www.skarnes.vgs.no	7a3856d6-9dbf-4605-a939-41f4873d40f6	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2022-10-12 10:20:39+02	\N	Offentlig	34	Ja	3415	63
157	VideregåendeSkole	0101000020DB0B0000B97805D6B18850419C1E3FD4B5884E41	Skagerak International School	1004257	973488783	1	13	office@skagerak.org	Skagerak International School	871496722	33456500	227	74	Framnesveien 7	3222	SANDEFJORD	\N	3222	\N	office@skagerak.org	33456500	www.skagerak.org	63972e87-75d1-4191-9492-9752f8bd4044	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2022-11-13 09:50:14+01	\N	Privat	38	Ja	3804	63
158	VideregåendeSkole	0101000020DB0B0000390E3E38B9B25141E953053F79755341	Sjøvegan videregående skole	1004829	974546809	11	13	postmottak@tffk.no	Troms og Finnmark fylkeskommune	922420866	\N	\N	82	Helsesenterveien 1	9350	SJØVEGAN	\N	9350	\N	sjovegan.vgs@tffk.no	77789500	www.sjovegan.vgs.no	dd6d2352-59c1-45cb-b376-8592a2a831bc	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2022-11-13 09:26:06+01	\N	Offentlig	54	Ja	5417	63
159	VideregåendeSkole	0101000020DB0B0000C19B2502E0F24E4106250C52E9A24F41	Sjøforsvarets fagskole	1028365	923386882	11	13	postmottak@fd.dep.no	Forsvarsdepartementet	972417823	23098000	\N	\N	Haakonsvern 1	5173	LODDEFJORD	\N	5173	\N	\N	\N	\N	1c1e99e6-cd53-48b2-885b-04fba9ce7d3b	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2022-01-26 22:06:51+01	\N	Offentlig	46	Ja	4601	63
160	VideregåendeSkole	0101000020DB0B0000EC5829BA53834F41ECE33D149E2F4E41	Sirdal videregående skole	1005600	974595060	11	13	postmottak@agderfk.no	Agder fylkeskommune	921707134	38050000	70	19	Sirdalsveien 3944	4440	TONSTAD	Postboks 788 Stoa	4440	Arendal	kontakt@sirdal.vgs.no	38377810	www.sirdal.vgs.no	4d682174-8ab8-4a90-8b58-2946cf97a916	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2022-11-13 09:55:38+01	\N	Offentlig	42	Ja	4228	63
161	VideregåendeSkole	0101000020DB0B000015B5D0C13C845041A27815F0AEB34E41	Signo Grunn- og videregående skole AS	1011353	998666783	1	13	postssk@signo.no	Signo Grunn- og videregående skole AS	998560594	33438600	20	127	Molandveien 29	3158	ANDEBU	Molandveien 44	3158	Andebu	SSK@signo.no	33438600	www.signo.no	bc220eb8-7528-4f76-ae26-97532f1fb11d	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2022-11-13 10:18:17+01	\N	Privat	38	Ja	3804	63
162	VideregåendeSkole	0101000020DB0B000074053ED998F94F41A46A4996AA144E41	Setesdal vidaregåande skule	1003490	874573892	11	13	postmottak@agderfk.no	Agder fylkeskommune	921707134	38050000	\N	60	Gymnasvegen 7	4737	HORNNES	Postboks 788 Stoa	4737	Arendal	setesdal@setesdal.vgs.no	94506900	www.setesdal.vgs.no	ad4ceaf9-6410-4892-b8f1-2c6239f8815c	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2022-09-13 10:17:55+02	\N	Offentlig	42	Ja	4219	63
163	VideregåendeSkole	0101000020DB0B000074053ED998F94F41A46A4996AA144E41	Setesdal vidaregåande skule	1005224	974573997	11	13	postmottak@agderfk.no	Agder fylkeskommune	921707134	38050000	\N	6	Gymnasvegen 7	4737	HORNNES	Postboks 788 Stoa	4737	Arendal	kontakt@setesdal.vgs.no	94506900	www.setesdal.vgs.no	18bacccf-b186-4a19-a486-97709628103d	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2022-11-13 09:24:21+01	\N	Offentlig	42	Ja	4219	63
164	VideregåendeSkole	0101000020DB0B00001E52DA2C66E95041CB54C17393704F41	Sentrum videregående skole avd Rasta	1005188	974572141	11	13	\N	\N	\N	\N	\N	\N	Otervegen 26	2211	KONGSVINGER	\N	2211	\N	\N	62526080	\N	e850505c-03f7-4f3e-9167-2f0b5383e19d	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:01+01	2022-02-15 09:33:28+01	\N	Offentlig	04	Nei	0402	63
165	VideregåendeSkole	0101000020DB0B00006F172D8A74E85041C195C6EF1D744F41	Sentrum videregående skole	1005178	974571943	11	13	\N	Innlandet fylkeskommune	920717152	\N	535	132	Rådhusplassen 7	2212	KONGSVINGER	Postboks 4404	2212	Hamar	post.sentrum.vgs@innlandetfylke.no	62882000	www.sentrum.vgs.no/	43d01212-01da-4cf3-9037-c589bbf10286	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:17:12+01	\N	Offentlig	34	Ja	3401	63
166	VideregåendeSkole	0101000020DB0B0000C4997EFEE6C250412541E56EBB575141	Sentralskolen Trøndelag	1027640	920981771	11	13	postmottak@trondelagfylke.no	Trøndelag fylkeskommune	817920632	\N	\N	\N	Seilmakergata 2	7725	STEINKJER	\N	7725	\N	\N	\N	\N	826552da-800f-456c-9b8a-0235da6e22f7	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2021-01-12 09:16:29+01	\N	Offentlig	50	Ja	5006	63
167	VideregåendeSkole	0101000020DB0B0000267EC092F3B451412E5F1786CCA95341	Senja videregående skole	1003449	874546712	11	13	postmottak@tffk.no	Troms og Finnmark fylkeskommune	922420866	\N	\N	61	Gisundveien 9	9372	GIBOSTAD	\N	9372	\N	post.senja@troms.vgs.no	77852852	www.senja.vgs.no	5667cb92-5b8f-4503-9d36-d21046f67072	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-10-12 10:26:34+02	\N	Offentlig	54	Ja	5421	63
168	VideregåendeSkole	0101000020DB0B00001D5BF9FF85B75141E188D485059D5341	Senja videregående skole	1004825	974546698	11	13	postmottak@tffk.no	Troms og Finnmark fylkeskommune	922420866	\N	\N	130	Løksebakken 55	9308	FINNSNES	\N	9308	\N	senja.vgs@tffk.no	77850800	www.senja.vgs.no	2ae9abbb-06f1-40ac-9c20-44a09c854af2	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:26:06+01	\N	Offentlig	54	Ja	5421	63
169	VideregåendeSkole	0101000020DB0B00002889E2BCD1AE5041D5A7F5995B025141	Selbu videregående skole	1004987	974558068	11	13	postmottak@trondelagfylke.no	Trøndelag fylkeskommune	817920632	\N	\N	37	Bellvegen 50	7580	SELBU	\N	7580	\N	postmottak.selbuvgs@trondelagfylke.no	74175900	www.selbu.vgs.no	625a608b-2021-47cf-90a1-2834f5781467	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:37:43+01	\N	Offentlig	50	Ja	5032	63
170	VideregåendeSkole	0101000020DB0B00002C5DF98188B45041A6D23F80C0AA4E41	Seiersborg videregående skole Fredrikstad AS	1004741	974158876	11	13	epost@seiersborg.vgs.no	Seiersborg videregående skole Fredrikstad AS	989632302	69354700	\N	55	Soliveien 56	1666	ROLVSØY	Postboks 33	1666	Rolvsøy	epost@seiersborg.vgs.no	69354700	www.seiersborg.vgs.no/	990809cf-9459-45bb-8a24-983943bec3e3	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-20 09:15:10+01	\N	Privat	30	Ja	3004	63
171	VideregåendeSkole	0101000020DB0B00002445362283A7504125235744C3FE4E41	Seiersborg videregående skole Follo AS	1028548	924422459	11	13	epost@seiersborgfollo.vgs.no	Seiersborg videregående skole Follo AS	924405422	\N	\N	11	Moerveien 12	1430	ÅS	Postboks 31	1430	Ås	epost@seiersborgfollo.vgs.no	924422459	\N	e0b7dd23-4049-4624-b07b-82f746d97865	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-12-04 09:15:29+01	\N	Privat	30	Ja	3021	63
172	VideregåendeSkole	0101000020DB0B00008A237CB4EC574F4105560AADAEE44E41	Sauda videregående skole	1005952	974624508	11	13	firmapost@rogfk.no	Rogaland fylkeskommune	971045698	51516600	\N	\N	Rygjatunvegen 30	4230	SAND	\N	4230	\N	DAOP@rogfk.no	52790460	\N	d36dda01-d90a-4d46-b0a6-bc5951ac0748	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2021-01-12 09:24:09+01	\N	Offentlig	11	Ja	1134	63
173	VideregåendeSkole	0101000020DB0B0000DAFA1432C4654F41ECF8AB12C9064F41	Sauda vidaregåande skule	1003570	874624632	11	13	firmapost@rogfk.no	Rogaland fylkeskommune	971045698	51516600	\N	116	Griegs gate 40	4200	SAUDA	Postboks 34	4200	Sauda	sauda-vgs@skole.rogfk.no	51922800	www.sauda.vgs.no	1ff8ac52-083f-4275-b5cb-dd25bab97236	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:40:42+01	\N	Offentlig	11	Ja	1135	63
174	VideregåendeSkole	0101000020DB0B000015A7BD3418985041A997CA69A1304F41	Sandvika videregående skole	1009813	988835064	11	13	post@viken.no	Viken fylkeskommune	921693230	32300000	\N	188	Elias Smiths vei 15	1337	SANDVIKA	\N	1337	\N	sandvikavgs@viken.no	67575600	viken.no/sandvika-vgs	c27b0aab-6879-4e9f-92df-3ccd059ee0be	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:37:08+01	\N	Offentlig	30	Ja	3024	63
175	VideregåendeSkole	0101000020DB0B00003675D27B7DF84E410E22E5B6FD974F41	Sandsli videregående skole	1004941	974557142	11	13	post@vlfk.no	Vestland fylkeskommune	821311632	5557	\N	88	Sandslimarka 51	5254	SANDSLI	Postboks 44 Sandsli	5254	Bergen	post.sav@vlfk.no	55115600	skole.hfk.no/sandslivgs	1517f155-7437-49c9-9450-7d18141185c6	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:38:11+01	\N	Offentlig	46	Ja	4601	63
176	VideregåendeSkole	0101000020DB0B000076AD2FC8D6EF5041D4871E156F315241	Sandnessjøen videregående skole	1003565	874621382	11	13	post@nfk.no	Nordland fylkeskommune	964982953	75650000	\N	129	Novikveien 47	8800	SANDNESSJØEN	Postboks 1485	8800	Bodø	post.ssj@vgs.nfk.no	75653300	www.sandnessjoen.vgs.no	53b988cd-2735-4a7f-bf11-cd3743d3c88b	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:17:31+01	\N	Offentlig	18	Ja	1820	63
177	VideregåendeSkole	0101000020DB0B0000E9277C7F07154F418B6012D81A5E4E41	Sandnes videregående skole	1005942	974624397	11	13	firmapost@rogfk.no	Rogaland fylkeskommune	971045698	51516600	1000	116	Jønningsheiveien 45	4316	SANDNES	\N	4316	\N	sandnes-vgs@skole.rogfk.no	51923400	www.sandnes.vgs.no	2d09abf2-3193-4132-acf1-15770cc03ee8	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:40:42+01	\N	Offentlig	11	Ja	1108	63
178	VideregåendeSkole	0101000020DB0B0000E262EC6E2D87504129E8E013908B4E41	Sandefjord videregående skole	1005235	974575019	11	13	post@vtfk.no	Vestfold og Telemark fylkeskommune	821227062	35917000	2000	450	Krokemoveien 4	3214	SANDEFJORD	Postboks 2844	3214	Skien	sandefjord.vgs@vtfk.no	33488500	sfvs.vfk.no/	807e5438-c522-4b32-b925-eb0c83b9bc28	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:54:27+01	\N	Offentlig	38	Ja	3804	63
179	VideregåendeSkole	0101000020DB0B0000886240E7108950412A0F4A9BD6ED4E41	Sande videregående skole	1005241	974575116	11	13	post@vtfk.no	Vestfold og Telemark fylkeskommune	821227062	35917000	450	97	Hans K.Evensens vei 53	3076	SANDE I VESTFOLD	Postboks 2844	3076	Skien	sande.vgs@vtfk.no	33785050	www.vtfk.no/skoler/sande-vgs/	e653f95d-9c0b-44bf-a699-d353816a9703	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:54:32+01	\N	Offentlig	38	Ja	3802	63
180	VideregåendeSkole	0101000020DB0B000023D0DF7504A65041E435B7571D3B4F41	Sandaker videregående skole	1005543	974591030	11	13	\N	\N	\N	\N	\N	150	Hans Nielsen Hauges Gate 1	0481	OSLO	\N	0481	\N	\N	23059400	www.sandaker.vgs.no/	142477d2-e009-4829-b2f2-a5695de58d01	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2021-01-12 09:17:36+01	\N	Offentlig	03	Nei	0301	63
181	VideregåendeSkole	0101000020DB0B00009741B64FFB7A524191F053E7EDA25341	Samisk videregående skole og reindriftsskole	1006173	974759896	11	13	postmottak@kd.dep.no	Kunnskapsdepartementet	872417842	22249090	\N	60	Ájastealli 5	9520	KAUTOKEINO	\N	9520	\N	postmottak@samisk.vgs.no	78484500	www.samisk.vgs.no	a1fcf7eb-1fbc-4a1b-aebd-c4487b4093f3	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:18:22+01	\N	Offentlig	54	Ja	5430	63
182	VideregåendeSkole	0101000020DB0B0000A5E94DF9E13250413C8F88083BFF4D41	Sam Eyde videregående skole	1005212	974573814	11	13	postmottak@agderfk.no	Agder fylkeskommune	921707134	38050000	\N	367	Østensbuveien 80	4848	ARENDAL	Postboks 788 Stoa	4848	Arendal	kontakt@sameyde.vgs.no	38618000	www.sameyde.vgs.no	61b1b910-aeaf-4a12-934d-744ba71bc492	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:24:10+01	\N	Offentlig	42	Ja	4203	63
183	VideregåendeSkole	0101000020DB0B0000EA5E59967C615141291293031AAC5241	Saltdal videregående skole	1005905	974621274	11	13	post@nfk.no	Nordland fylkeskommune	964982953	75650000	\N	59	Fredheimveien 15	8250	ROGNAN	Postboks 1485	8250	Bodø	post.saltdal@vgs.nfk.no	75652300	www.saltdal.vgs.no	39a2614e-2403-496f-a9bc-b46ee16dbc64	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:17:32+01	\N	Offentlig	18	Ja	1840	63
184	VideregåendeSkole	0101000020DB0B000092DA1F4AC865504125DDA059A4F74E41	Saggrenda Skog og Byggefagsenter avd Av Tinius Olsens skole	1004661	974116839	11	13	\N	\N	\N	\N	\N	4	Malmveien	3614	KONGSBERG	\N	3614	Drammen	\N	3838150	\N	0a6d2c16-b9b2-47bc-8e62-a37fb89b6a44	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2020-03-14 00:40:06+01	\N	Offentlig	06	Nei	0604	63
185	VideregåendeSkole	0101000020DB0B00009EA85139BB915041C81F79C2E60E4F41	Røyken videregående skole	1005724	974605953	11	13	post@viken.no	Viken fylkeskommune	921693230	32300000	\N	141	Jon Leiras vei 30	3440	RØYKEN	\N	3440	\N	roykenvgs@viken.no	31292200	viken.no/royken-vgs	b1e2404c-dfd5-488b-bc86-81c58eda0e22	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:56:09+01	\N	Offentlig	30	Ja	3025	63
186	VideregåendeSkole	0101000020DB0B0000C9C71013C4C050416AE2D119F6BB5041	Røros videregående skole	1004991	974558130	11	13	postmottak@trondelagfylke.no	Trøndelag fylkeskommune	817920632	\N	250	71	Sundveien 12	7374	RØROS	Postboks 301	7374	Røros	postmottak.rorosvgs@trondelagfylke.no	74175800	www.roros.vgs.no	5f845a37-c3d1-49e0-8d32-592d7e47f1a9	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:37:42+01	\N	Offentlig	50	Ja	5025	63
187	VideregåendeSkole	0101000020DB0B00001623A22A0DB65041F020D8838E384F41	Rælingen videregående skole	1005393	974587769	11	13	post@viken.no	Viken fylkeskommune	921693230	32300000	\N	107	Bjørnholthagan 8	2008	FJERDINGBY	POSTBOKS 24	2008	Fjerdingby	ralingenvgs@viken.no	63835300	viken.no/raelingen-vgs	04f0abcb-7061-49fa-9494-52d4af24d73f	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-09-13 10:27:50+02	\N	Offentlig	30	Ja	3027	63
188	VideregåendeSkole	0101000020DB0B00003D6C89ACC69F50411257FE18FE3C4F41	Rudolf steinerskolen i Oslo	1004666	974117096	1	13	post@rsio.no	Rudolf steinerskolen i Oslo	971526246	21082200	467	163	Flyveien 2	0770	OSLO	Postboks 25 HOVSETER	0770	Oslo	post@rsio.no	21082200	www.rsio.no	5b8e6342-f0dc-4438-a2c8-737bb02773b7	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:51:44+01	\N	Privat	03	Ja	0301	63
189	VideregåendeSkole	0101000020DB0B000006E2A20735004F41042DAF7DD2A24F41	Rudolf steinerskolen i Bergen	1004138	973159232	1	13	bergen@steinerskolen.no	Rudolf steinerskolen i Bergen	971561335	55922929	239	90	Rieber-Mohns veg 15	5230	PARADIS	Postboks 4 Slettebakken	5230	Bergen	bergen@steinerskolen.no	55922929	\N	1662ab02-1a5f-4b0a-9fe3-f4ff7477da40	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:49:34+01	\N	Privat	46	Ja	4601	63
190	VideregåendeSkole	0101000020DB0B0000A382FED39A9B5041CDE7E238143E4F41	Rud videregående skole	1011048	997589335	11	13	post@viken.no	Viken fylkeskommune	921693230	32300000	\N	11	Jøssingveien 33	1359	EIKSMARKA	Postboks 150	1359	Østerås	tom.fredriksen@rud.vgs.no	67161183	\N	93476ae7-f16c-4969-8c7e-4a3a77ba2246	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-09-14 10:26:30+02	\N	Offentlig	30	Ja	3024	63
191	VideregåendeSkole	0101000020DB0B00006F0763BA23975041A4DDFD87EF334F41	Rud videregående skole	1005398	974587823	11	13	post@viken.no	Viken fylkeskommune	921693230	32300000	\N	271	Hauger skolevei 15	1351	RUD	\N	1351	\N	rudvgs@viken.no	67176300	viken.no/rud-vgs	deaa7ed5-c3c2-46b9-880e-fd64b6253c79	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:24:52+01	\N	Offentlig	30	Ja	3024	63
192	VideregåendeSkole	0101000020DB0B00007E9CA21C83EF4E419C478B398C314F41	Rubbestadnes vidaregåande skule	1004947	974557304	11	13	post@vlfk.no	Vestland fylkeskommune	821311632	5557	\N	25	Rolvsnesvegen 36	5420	RUBBESTADNESET	\N	5420	\N	post.ruv@vlfk.no	53425500	skole.hfk.no/rubbestadnesvgs	e7e21275-7e61-46b3-bc9b-ad156779ed80	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-07-12 10:32:58+02	\N	Offentlig	46	Ja	4613	63
193	VideregåendeSkole	0101000020DB0B000046B56C4496975041EEDB2DDC54344F41	Rosenvilde videregående skole	1005401	974587866	11	13	post@viken.no	Viken fylkeskommune	921693230	32300000	\N	142	Brynsveien 116	1352	KOLSÅS	Postboks 93	1352	Kolsås	rosenvildevgs@viken.no	67174700	viken.no/rosenvilde-vgs	a568347f-eb79-46cf-ac58-9cace2e05307	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:55:21+01	\N	Offentlig	30	Ja	3024	63
194	VideregåendeSkole	0101000020DB0B00003353119C7AFD4F4176FDB01A45CC5041	Romsdal videregående skole avd Nesjestranda	1005269	974576635	11	13	\N	\N	\N	\N	\N	\N	Nesjestranda	6456	SKÅLA	\N	6456	\N	\N	\N	\N	b4599098-d7ab-47c2-bf89-e113ecceb2e2	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-04-21 10:15:24+02	\N	Offentlig	15	Nei	1502	63
195	VideregåendeSkole	0101000020DB0B00005ADFE82DD7DD4F4130F6B4E040D05041	Romsdal videregående skole	1005262	974576546	11	13	post@mrfylke.no	Møre og Romsdal fylkeskommune	944183779	71258000	900	201	Langmyrvegen 83	6415	MOLDE	\N	6415	\N	romsdal.vgs@mrfylke.no	71283300	www.romsdal.vgs.no	d7ab982f-1af1-4148-a1da-baba65bb9c75	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:39:49+01	\N	Offentlig	15	Ja	1506	63
196	VideregåendeSkole	0101000020DB0B0000245441DDBBD84F41129E19C548CF5041	Romsdal Vgs	1005277	974577046	11	13	post@mrfylke.no	Møre og Romsdal fylkeskommune	944183779	71258000	\N	20	Julsundvegen 49B	6412	MOLDE	Fylkeshuset	6412	Molde	fannefjord.vgs@mrfylke.no	71249090	www.fannefjord.vgs.no/	c672c845-2519-4d52-a6f1-401282a83e5a	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-10-12 10:29:38+02	\N	Offentlig	15	Ja	1506	63
197	VideregåendeSkole	0101000020DB0B00000B0A881664A85041010B47E4981B4F41	Roald Amundsen videregående skole	1005377	974587580	11	13	post@viken.no	Viken fylkeskommune	921693230	32300000	\N	70	Bregneveien 2	1412	SOFIEMYR	BOKS 97	1412	Kolbotn	roaldamundsenvgs@viken.no	66996930	viken.no/roaldamundsen-vgs	3f6535cc-8b53-4819-b316-45f77069f4f0	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:24:28+01	\N	Offentlig	30	Ja	3020	63
198	VideregåendeSkole	0101000020DB0B000044DAC045E62D504134A98B4EC12E4F41	Rjukan videregående skole	1003478	874568082	11	13	post@vtfk.no	Vestfold og Telemark fylkeskommune	821227062	35917000	\N	52	Såheimsveien 22	3660	RJUKAN	Postboks 2844	3660	Skien	rjukan.vgs@vtfk.no	35919900	www.rjukan.vgs.no/	b9474ef9-0045-42e9-8c0c-6bca97c0e2a6	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:39:36+01	\N	Offentlig	38	Ja	3818	63
199	VideregåendeSkole	0101000020DB0B0000747F88376B4F50413481AE5063324E41	Risør videregående skole	1005211	974573806	11	13	postmottak@agderfk.no	Agder fylkeskommune	921707134	38050000	\N	57	Siris vei 8	4950	RISØR	Postboks 788 Stoa	4950	Arendal	kontakt@risor.vgs.no	37144220	www.risor.vgs.no	e43508ad-4e8c-455a-add9-81fc3dccffe5	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:24:08+01	\N	Offentlig	42	Ja	4201	63
200	VideregåendeSkole	0101000020DB0B0000EED3AC3F8C9150410523F98DFA195141	Ringve videregående skole	1004974	974557916	11	13	\N	\N	\N	\N	\N	69	Sjømannsveien 19	7040	TRONDHEIM	\N	7040	\N	\N	73879000	www.ringve.vgs.no	9e588d52-cdff-45df-990a-b1cbbb9386b6	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2020-03-14 00:39:12+01	\N	Offentlig	16	Nei	1601	63
201	VideregåendeSkole	0101000020DB0B00006EA7ECB5A8AD5041965F46F9E8045041	Ringsaker videregående skole	1005174	974571897	11	13	\N	Innlandet fylkeskommune	920717152	\N	750	160	Skolevegen 16	2383	BRUMUNDDAL	Postboks 4404	2383	Hamar	post.ringsaker.vgs@innlandetfylke.no	62355800	www.ringsaker.vgs.no/	752a80d6-453f-4798-b62f-03bc9b6e32cc	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:17:12+01	\N	Offentlig	34	Ja	3411	63
202	VideregåendeSkole	0101000020DB0B00001C3D4819CE8950413D944393636B4F41	Ringerike videregående skole	1005736	974606208	11	13	post@viken.no	Viken fylkeskommune	921693230	32300000	\N	154	Stangs gate 9	3510	HØNEFOSS	Postboks 14	3510	Hønefoss	ringerikevgs@viken.no	32113400	viken.no/ringerike-vgs	120ce9a4-5c47-4355-a678-00beb11dbb77	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:56:13+01	\N	Offentlig	30	Ja	3007	63
203	VideregåendeSkole	0101000020DB0B0000B1F95E4691895041D42E4D326EBC4E41	Re videregående skole	1003493	874575232	11	13	post@vtfk.no	Vestfold og Telemark fylkeskommune	821227062	35917000	780	163	Bergshaugen 10	3175	RAMNES	Postboks 2844	3175	Skien	postmottak.revgs@vtfk.no	33306630	www.revgs.no/	2fb70c62-2c40-4b18-b48e-67205429f36f	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:39:43+01	\N	Offentlig	38	Ja	3803	63
204	VideregåendeSkole	0101000020DB0B0000ABE4ABD4D9065041F0883B40D0BB5041	Rauma videregående skole	1005264	974576562	11	13	post@mrfylke.no	Møre og Romsdal fylkeskommune	944183779	71258000	\N	51	Ringgata 35	6300	ÅNDALSNES	\N	6300	\N	rauma.vgs@mrfylke.no	71283600	www.rauma.vgs.no/	e2944b3f-747c-4cdc-b431-dbd7f82ed0ab	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:39:49+01	\N	Offentlig	15	Ja	1539	63
205	VideregåendeSkole	0101000020DB0B000017EEB5970D9C5041287A502BE6E24F41	Raufoss videregående skole	1005639	974597330	11	13	\N	Innlandet fylkeskommune	920717152	\N	\N	103	Prøvenvegen 71	2833	RAUFOSS	Postboks 4404	2833	Hamar	raufoss.vgs@innlandetfylke.no	61198200	www.raufoss.vgs.no/	0cd6f60c-869e-47b7-9c36-f02188dab147	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-10-12 10:20:46+02	\N	Offentlig	34	Ja	3443	63
206	VideregåendeSkole	0101000020DB0B0000806487F3FF0E4F4110C3EB58D77C4E41	Randaberg videregående skole	1005964	974624664	11	13	firmapost@rogfk.no	Rogaland fylkeskommune	971045698	51516600	850	147	Grødemveien 70	4072	RANDABERG	\N	4072	\N	randaberg-vgs@skole.rogfk.no	51923000	www.randaberg.vgs.no/	ae3ca206-cb97-4bb3-a511-34780cf9c215	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:40:43+01	\N	Offentlig	11	Ja	1127	63
207	VideregåendeSkole	0101000020DB0B00007EEB73E78E3551417F9E8FA1DCBD5241	Privatistkontoret i Nordland	1028627	922244480	11	13	post@nfk.no	Nordland fylkeskommune	964982953	75650000	\N	\N	Prinsens gate 100	8005	BODØ	Postboks 1485	8005	Bodø	eksamen@nfk.no	\N	\N	9b9a9d26-503e-4fc6-994a-390c7fd0067b	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-03-16 09:30:38+01	\N	Offentlig	18	Ja	1804	63
208	VideregåendeSkole	0101000020DB0B000097672C5DB2FF4E41A6878A7B2FAC4F41	Privatisteksamen	1029764	929854632	11	13	post@vlfk.no	Vestland fylkeskommune	821311632	5557	\N	\N	Agnes Mowinckels gate 5	5008	BERGEN	\N	5008	\N	\N	\N	\N	d98df227-4f3b-4d42-96e5-a939f0268de8	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-09-16 10:20:14+02	\N	Offentlig	46	Ja	4601	63
209	VideregåendeSkole	0101000020DB0B0000DA4FE9BF2F69504135F5D0FFBF8C4E41	Porsgrunn videregående skole	1005123	974568020	11	13	post@vtfk.no	Vestfold og Telemark fylkeskommune	821227062	35917000	\N	168	Kjølnes ring 58	3918	PORSGRUNN	Postboks 2844	3918	Skien	porsgrunn.vgs@vtfk.no	35917500	www.porsgrunn.vgs.no	40aa52da-4b89-4430-9512-5e77081efc76	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:53:49+01	\N	Offentlig	38	Ja	3806	63
210	VideregåendeSkole	0101000020DB0B0000B1FA2E3F0E33514146B434C1F6565241	Polarsirkelen videregående skole	1005908	974621304	11	13	post@nfk.no	Nordland fylkeskommune	964982953	75650000	\N	280	Murbakken 1	8622	MO I RANA	Postboks 1485	8622	Bodø	polarpost@vgs.nfk.no	75653000	www.polarsirkelen.vgs.no/	26d95666-bf38-4c07-b26b-9194f9810583	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:17:32+01	\N	Offentlig	18	Ja	1833	63
211	VideregåendeSkole	0101000020DB0B00003557DD0E14B15041D3E63550B59B4E41	Plus-Skolen AS	1004013	971627018	11	13	post@plus-skolen.no	Plus-Skolen AS	912155528	\N	88	13	Færgeportgaten 77	1632	GAMLE FREDRIKSTAD	Postboks 26	1632	Gamle Fredrikstad	post@plus-skolen.no	69320678	www.plus-skolen.no/	227d7685-eb1e-40cf-a6fd-6197c27a204b	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-10-12 11:08:17+02	\N	Privat	30	Ja	3004	63
212	VideregåendeSkole	0101000020DB0B00004CC8ECC1B99F5041A3413BF5293C4F41	Persbråten videregående skole	1005535	974590948	11	13	postmottak@oslo.kommune.no	Oslo kommune	958935420	2180	\N	115	Gamle Hovsetervei 1	0768	OSLO	Postboks 6127 Etterstad	0768	Oslo	postmottak@ude.oslo.kommune.no	22136760	persbraten.vgs.no	e04fe177-5dd6-4ef7-9196-3db91b01b03c	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:16:50+01	\N	Offentlig	03	Ja	0301	63
213	VideregåendeSkole	0101000020DB0B00007FFAD97129D550411E567B7E9C8C5141	Overhalla videregående skole	1005036	974560852	11	13	\N	\N	\N	\N	\N	4	Barlia	7863	OVERHALLA	\N	7863	\N	\N	74281176	www.olav-duun.vgs.no/	6ffdf86d-8c14-49e4-9fb2-8b7f29122a14	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2020-03-14 01:25:39+01	\N	Offentlig	17	Nei	1744	63
214	VideregåendeSkole	0101000020DB0B0000556FA6F82BA4504128823030D7344F41	Otto Treider private gymnas AS	1004025	971816309	11	13	info@ottotreider.no	Otto Treider private gymnas AS	919193298	24144440	\N	33	Nedre Vollgate 8	0158	OSLO	\N	0158	\N	info@ottotreider.no	24144440	www.ottotreider.no	234390d0-ef40-4869-8d34-dc924a0c3287	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-09-13 10:47:33+02	\N	Privat	03	Ja	0301	63
215	VideregåendeSkole	0101000020DB0B0000E301FF5B41134F41CC5046BC6BC94F41	Osterøy vidaregåande skule	1004942	974557150	11	13	post@vlfk.no	Vestland fylkeskommune	821311632	5557	200	47	Lonevåg	5282	LONEVÅG	\N	5282	\N	post.ost@vlfk.no	56194000	skole.hfk.no/osteroyvgs	c1fd9c1a-b123-47e0-8cd5-3379b55f9471	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:38:13+01	\N	Offentlig	46	Ja	4630	63
216	VideregåendeSkole	0101000020DB0B0000104DC436D0A65041045BBDC58A394F41	Oslo voksenopplæring Sinsen	1009114	984611412	11	13	postmottak@oslo.kommune.no	Oslo kommune	958935420	2180	\N	189	Lørenveien 11	0585	OSLO	Postboks 6127, Etterstad	0585	Oslo	postmottak@ude.oslo.kommune.no	23466700	sinsen.oslovo.no/	54a47e81-512e-4f47-a0a9-25d25d62afee	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:16:35+01	\N	Offentlig	03	Ja	0301	63
217	VideregåendeSkole	0101000020DB0B00004F0310B72DA650418E021B9F26394F41	Oslo voksenopplæring Rosenhof	1003404	873626232	11	13	postmottak@oslo.kommune.no	Oslo kommune	958935420	2180	\N	265	Dynekilgata 10	0569	OSLO	Postboks 6127	0569	Oslo	postmottak@ude.oslo.kommune.no	22387700	rosenhof.oslovo.no/	f564c2d8-baee-4e3f-bf0d-1123958ecbe3	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:16:35+01	\N	Offentlig	03	Ja	0301	63
218	VideregåendeSkole	0101000020DB0B000096955E8C54A750412C47EF6753354F41	Oslo voksenopplæring Helsfyr	1009650	988045500	11	13	postmottak@oslo.kommune.no	Oslo kommune	958935420	2180	615	170	Svovelstikka 1-3	0661	OSLO	Oslo kommune utdanningsetaten Postboks 6127 Etterstad	0661	Oslo	postmottak.helsfyr.oslovo@osloskolen.no	23467700	helsfyr.oslovo.no/	268d82eb-dd84-43f7-8653-b048ec355336	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:16:55+01	\N	Offentlig	03	Ja	0301	63
219	VideregåendeSkole	0101000020DB0B00001CE499241CA55041F0A7506B34354F41	Oslo kommune Kompetanse- og Omstillingsetaten	1005417	974589060	11	13	\N	\N	\N	\N	\N	29	Sonja Henies Plass 4	0185	OSLO	\N	0185	\N	\N	23426500	www.kom.oslo.kommune.no	c46dec37-ab33-4b3d-9939-d3a6d398e3bb	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2020-03-14 01:13:43+01	\N	Offentlig	03	Nei	0301	63
220	VideregåendeSkole	0101000020DB0B0000A716C61E56A45041784DA13A00374F41	Oslo katedralskole	1003526	874590932	11	13	postmottak@oslo.kommune.no	Oslo kommune	958935420	2180	\N	96	Ullevålsveien 31	0171	OSLO	Postboks 6127 Etterstad	0171	Oslo	postmottak@ude.oslo.kommune.no	23353470	oslo-katedral.vgs.no	3348c2c4-c412-47b5-9b11-8ed0ef67ffe4	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:16:36+01	\N	Offentlig	03	Ja	0301	63
221	VideregåendeSkole	0101000020DB0B0000E47F1C95AD9B50414580FF927E364F41	Oslo International School	1004036	971845635	1	13	ois.main@oslois.no	Stiftelse Oslo International School	976738454	67818290	600	186	Gamle Ringeriksvei 53	1357	BEKKESTUA	Postboks 53	1357	Bekkestua	ois.main@oslois.no	67818290	www.oslointernationalschool.no	501c3a9d-7c6b-4510-81ad-13175d20819e	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:49:04+01	\N	Privat	30	Ja	3024	63
222	VideregåendeSkole	0101000020DB0B0000A929A8E231A350412E8965BE6C354F41	Oslo Handelsgymnasium	1005530	974590883	11	13	postmottak@oslo.kommune.no	Oslo kommune	958935420	2180	\N	121	Parkveien 65	0254	OSLO	Postboks 6127 Etterstad	0254	Oslo	postmottak@ude.oslo.kommune.no	22129250	ohg.vgs.no	a304059e-4c47-4f72-91d1-621b475661ce	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:16:49+01	\N	Offentlig	03	Ja	0301	63
223	VideregåendeSkole	0101000020DB0B00003BDAF089E8A4504130F123E791384F41	Oslo fotokunstskole AS	1009774	988595039	11	13	post@oslofotokunstskole.no	Oslo fotokunstskole AS	988545724	22374512	\N	45	Waldemar Thranes gate 84	0175	OSLO	\N	0175	\N	post@oslofotokunstskole.no	22374512	www.oslofotokunstskole.no	af5ea8f6-c025-41c2-98a7-3ef2c20b9412	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 10:15:12+01	\N	Privat	03	Ja	0301	63
224	VideregåendeSkole	0101000020DB0B0000CE3924C7C8084F413010836E39824F41	Os vidaregåande skule	1004961	974557576	11	13	post@vlfk.no	Vestland fylkeskommune	821311632	5557	\N	113	Kolskogheiane 14	5210	OS	\N	5210	\N	post.osv@vlfk.no	56565600	skole.hfk.no/osvgs	04e3f6c3-4c95-42a7-8e56-0d47572c3c1a	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:38:13+01	\N	Offentlig	46	Ja	4624	63
225	VideregåendeSkole	0101000020DB0B00002E993183860A4F4113A5396AD3814F41	Os gymnas	1004928	974556995	11	13	post@vlfk.no	Vestland fylkeskommune	821311632	5557	\N	30	Gymnasvegen 85	5200	OS	\N	5200	\N	post.osg@vlfk.no	56565750	skole.vlfk.no/osgymnas	360b20f1-f96a-4f1c-a628-ac884392f480	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:38:13+01	\N	Offentlig	46	Ja	4624	63
226	VideregåendeSkole	0101000020DB0B0000B14D31A51074504166F72B62BF075141	Orkdal vidaregåande skole	1004978	974557967	11	13	postmottak@trondelagfylke.no	Trøndelag fylkeskommune	817920632	\N	\N	93	Orkdalsveien 340	7300	ORKANGER	\N	7300	\N	postmottak.orkdalvgs@trondelagfylke.no	74177416	www.orkdal.vgs.no	ebb313d4-8d42-4deb-9031-d3db4a352aca	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-10-12 10:36:10+02	\N	Offentlig	50	Ja	5059	63
227	VideregåendeSkole	0101000020DB0B0000F19063BC676B50413BEC0E308ABD5041	Oppdal videregående skole	1004986	974558041	11	13	postmottak@trondelagfylke.no	Trøndelag fylkeskommune	817920632	\N	\N	75	Skulsvingen 10	7340	OPPDAL	Postboks 204	7340	Oppdal	postmottak.oppdalvgs@trondelagfylke.no	74175600	www.oppdal.vgs.no	67efe6f2-f60d-434c-9f3d-5c5f21118da6	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:37:42+01	\N	Offentlig	50	Ja	5021	63
228	VideregåendeSkole	0101000020DB0B0000D2428A739CF34E41A1E8159C31AB4F41	Olsvikåsen videregående skole	1009925	989630008	11	13	post@vlfk.no	Vestland fylkeskommune	821311632	5557	\N	102	Olsvikåsen 152	5183	OLSVIK	Postboks 503	5183	Bergen	post.olv@vlfk.no	55511400	olv.hfk.no	8118bce7-78b2-4c22-8ff3-1246dd59d9f0	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:38:14+01	\N	Offentlig	46	Ja	4601	63
229	VideregåendeSkole	0101000020DB0B00009195A0D455A95041B2C5B15FB21C5141	Ole Vig videregående skole	1005028	974560720	11	13	postmottak@trondelagfylke.no	Trøndelag fylkeskommune	817920632	\N	1000	232	Gymnasgata 1	7505	STJØRDAL	Postboks 254	7505	Stjørdal	postmottak.olevigvgs@trondelagfylke.no	74175555	www.ole-vig.vgs.no/	a93c647e-8211-489c-b11e-519b069f4b07	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:37:42+01	\N	Offentlig	50	Ja	5035	63
230	VideregåendeSkole	0101000020DB0B0000CCCD17AD96C4504178BD546C4D895141	Olav Duun videregående skole	1005027	974560712	11	13	postmottak@trondelagfylke.no	Trøndelag fylkeskommune	817920632	\N	\N	165	Yrkesvegen 1	7805	NAMSOS	Postboks 311	7805	Namsos	postmottak.olavduunvgs@trondelagfylke.no	74175500	www.olav-duun.vgs.no	8692e273-d62b-43e9-b6da-1ff9a6f7d3dd	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:37:42+01	\N	Offentlig	50	Ja	5007	63
231	VideregåendeSkole	0101000020DB0B00005CFA9DC742B35041F8E1354996444F41	Oks videregående skole	1029271	927283204	11	13	post@grunnskolenoks.no	Oks friskole	887091552	64846460	\N	\N	Trondheimsveien 48G	2007	KJELLER	Trondheimsveien 50G	2007	Kjeller	post@grunnskoleoks.no	\N	\N	138f5a4e-4707-4698-a78a-ecbbd5902dd4	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-06-16 10:34:54+02	\N	Privat	30	Ja	3030	63
232	VideregåendeSkole	0101000020DB0B0000A9A3ED74E37E4F4132AC6DEA195D4F41	Odda vidaregåande skule	1004946	974557290	11	13	post@vlfk.no	Vestland fylkeskommune	821311632	5557	\N	52	Eidesmoen 74	5750	ODDA	\N	5750	\N	post.odv@vlfk.no	53649600	skole.vlfk.no/oddavgs	2d4f24e6-72b7-4859-b2a5-e01c4cc3fae5	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:38:10+01	\N	Offentlig	46	Ja	4618	63
233	VideregåendeSkole	0101000020DB0B000065715C08509250415C52A825799F4E41	Nøtterøy videregående skole	1005234	974575000	11	13	post@vtfk.no	Vestfold og Telemark fylkeskommune	821227062	35917000	530	92	Rektorveien 10	3140	NØTTERØY	Postboks 2844	3140	Skien	notteroy.vgs@vtfk.no	33351000	vfk.no/skoler/notteroy-vgs/	3777727a-9e18-44e5-ae7a-824bdc5c8aa5	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:54:26+01	\N	Offentlig	38	Ja	3811	63
234	VideregåendeSkole	0101000020DB0B0000836303D076A550415C77110C693D4F41	Nydalen videregående skole	1010490	996216454	11	13	postmottak@oslo.kommune.no	Oslo kommune	958935420	2180	\N	247	Nydalsveien 30C	0484	OSLO	Postboks 6127 Etterstad	0484	Oslo	postmottak@ude.oslo.kommune.no	23468000	nydalen.vgs.no	026c95c1-32aa-4ddd-a829-3a04012314dc	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:16:55+01	\N	Offentlig	03	Ja	0301	63
235	VideregåendeSkole	0101000020DB0B0000E4791948A45250416ADEA9F097E74E41	Notodden videregående skole	1005122	974568012	11	13	post@vtfk.no	Vestfold og Telemark fylkeskommune	821227062	35917000	\N	149	Heddalsvegen 4	3674	NOTODDEN	Postboks 2844	3674	Skien	notodden.vgs@vtfk.no	35918500	www.notodden.vgs.no	8ca5534f-e864-4c3f-be41-adef529f9c17	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:53:47+01	\N	Offentlig	38	Ja	3808	63
236	VideregåendeSkole	0101000020DB0B0000DB8179849F524F4183D0AB2C92A24F41	Norheimsund Vidaregående skule	1004951	974557347	11	13	\N	\N	\N	\N	\N	54	Dalatunvegen 40	5600	NORHEIMSUND	\N	5600	\N	post@noy.hordaland-f.kommune.no	56551377	www.hordaland-f.kommune.no/noy/	1767ee44-b708-453a-ab1f-02ea7f45220a	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-04-20 10:18:05+02	\N	Offentlig	12	Nei	1238	63
237	VideregåendeSkole	0101000020DB0B0000C017290088D15141C1C6ADAB96CD5341	Norges Toppidrettsgymnas Tromsø AS	1010127	991575731	11	13	tromso@ntg.no	Norges Toppidrettsgymnas Tromsø AS	991569081	\N	\N	39	Stadionvegen 9	9007	TROMSØ	Postboks 134	9007	Bekkestua	tromso@ntg.no	90090620	www.ntg.no	db15f3d6-cc1e-4f69-9e3e-fd9063bac729	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-10-12 11:06:13+02	\N	Privat	54	Ja	5401	63
238	VideregåendeSkole	0101000020DB0B0000F335363AB19450410CEA026BFA1D5041	Norges Toppidrettsgymnas Lillehammer AS	1003401	873600152	11	13	lillehammer@ntg.no	Norges Toppidrettsgymnas Lillehammer AS	990599106	67101567	\N	75	Kleivbakken 9	2618	LILLEHAMMER	Postboks 134	2618	Bekkestua	lillehammer@ntg.no	67101567	www.ntg.no	1b449567-f8b5-4652-85c5-11dbacd7a558	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-09-13 10:36:09+02	\N	Privat	34	Ja	3405	63
239	VideregåendeSkole	0101000020DB0B000018912026A7E85041573E889649744F41	Norges Toppidrettsgymnas Kongsvinger AS	1009248	986147667	11	13	kongsvinger@ntg.no	Norges Toppidrettsgymnas Kongsvinger AS	990599874	67101550	\N	39	Markensvegen 7	2212	KONGSVINGER	\N	2212	\N	kongsvinger@ntg.no	62888840	www.ntg.no	7a2a3c33-f943-4909-89d7-ab7739d52f0e	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-10-12 11:04:34+02	\N	Privat	34	Ja	3401	63
240	VideregåendeSkole	0101000020DB0B0000E1E8CCCF179C5041FED00997D0374F41	Norges Toppidrettsgymnas Bærum AS	1010032	990672962	11	13	berum@ntg.no	Norges Toppidrettsgymnas Bærum AS	990598991	67101560	\N	80	Hans Burums vei 30	1357	BEKKESTUA	Postboks 134	1357	Bekkestua	berum@ntg.no	67101560	www.ntg.no	3e452199-c0fb-41cf-91e2-08fcdb97848b	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 10:16:36+01	\N	Privat	30	Ja	3024	63
241	VideregåendeSkole	0101000020DB0B0000AB3F8052DF3551413A1AA6B26BBD5241	Norges Toppidrettsgymnas Bodø AS	1026468	916694490	8	13	bodo@ntg.no	Norges Toppidrettsgymnas Bodø AS	916658052	\N	\N	19	Fridtjof Nansens vei 5	8003	BODØ	\N	8003	\N	bodo@ntg.no	\N	\N	a198c46c-1bf4-49df-accd-b25fffa0ba00	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-10-12 10:43:18+02	\N	Privat	18	Ja	1804	63
242	VideregåendeSkole	0101000020DB0B000024148A5246024F41582A3EFDC8A74F41	Norges Toppidrettsgymnas Bergen AS	1027940	922148805	11	13	bergen@ntg.no	Norges Toppidrettsgymnas Bergen AS	922123462	\N	\N	17	Kniksens plass 1	5063	BERGEN	Postboks 134	5063	Bekkestua	bergen@ntg.no	\N	www.ntg.no	aa304176-2955-4e82-8622-9fd191c07ccd	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-09-13 10:45:44+02	\N	Privat	46	Ja	4601	63
243	VideregåendeSkole	0101000020DB0B000060ABEF63D59F50415FCE07725D0B5041	Norges Grønne fagskole - Vea	1006066	974724642	11	13	postmottak@kd.dep.no	Kunnskapsdepartementet	872417842	22249090	\N	36	Turistvegen 92	2390	MOELV	\N	2390	Moelv	vea@fsvea.no	62362600	www.Vea-fs.no	d80c995d-4d1a-42f8-8ae7-0e4d69f6d2d7	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:18:21+01	\N	Offentlig	34	Ja	3411	63
244	VideregåendeSkole	0101000020DB0B00003E987A7209A35041DEBAEA04429A5041	Nord-Østerdal videregående skole	1004008	970963847	11	13	\N	Innlandet fylkeskommune	920717152	\N	515	126	Fedraheimveien 1	2500	TYNSET	Postboks 4404	2500	Hamar	post.nord-osterdal@innlandetfylke.no	62485320	www.nord-osterdal.vgs.no/	18a0af10-b9b0-4d0a-afff-6e3f997143a9	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:17:13+01	\N	Offentlig	34	Ja	3427	63
245	VideregåendeSkole	0101000020DB0B0000D90B06F010AB5041180124C2C7374F41	Nordvoll skole	1005523	974590816	1	13	postmottak@oslo.kommune.no	Oslo kommune	958935420	2180	32	160	Dr. Dedichens vei 18	0675	OSLO	Postboks 6127 Etterstad	0675	Oslo	postmottak@ude.oslo.kommune.no	23142660	nordvoll.osloskolen.no/	e084c8b8-31b9-4d7b-a3b0-a5c5e6e54e0b	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:16:34+01	\N	Offentlig	03	Ja	0301	63
246	VideregåendeSkole	0101000020DB0B0000F25047A5611D52417C10524DC1E55341	Nord-Troms videregående skole	1004841	974546957	11	13	postmottak@tffk.no	Troms og Finnmark fylkeskommune	922420866	\N	\N	110	Hovedvegen 18	9151	STORSLETT	Postboks 293	9151	Storslett	nord-troms.vgs@tffk.no	77787000	www.nordtroms.vgs.no	825f02d3-2cc9-478b-858c-a21a58475e36	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:26:07+01	\N	Offentlig	54	Ja	5428	63
247	VideregåendeSkole	0101000020DB0B00007C411AAE8C175241FAEFADD7FC005441	Nord-Troms videregående skole	1004840	974546949	11	13	postmottak@tffk.no	Troms og Finnmark fylkeskommune	922420866	\N	\N	8	Industriveien 2	9180	SKJERVØY	Postboks 250	9180	Skjervøy	nord-troms.vgs@tffk.no	77777800	www.nordtroms.vgs.no	2c0308d7-2d8f-4ada-beb9-e7e603cc4078	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-06-15 10:21:57+02	\N	Offentlig	54	Ja	5427	63
248	VideregåendeSkole	0101000020DB0B000026E9898C8E325141CD13BE61FE215341	Nordland Kunst- og filmfagskole	1008166	976248023	11	13	post@nfk.no	Nordland fylkeskommune	964982953	75650000	\N	7	Tore Hjorts gate 22	8310	KABELVÅG	Postboks 1485	8310	Bodø	post.nkfs@nfk.no	\N	www.kunstfilm.no/	14123cd1-2a1a-436a-8af5-cfdf26d3e0a4	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-03-16 09:30:36+01	\N	Offentlig	18	Ja	1865	63
249	VideregåendeSkole	0101000020DB0B000004B275A2E1F05141E29CC142DEA25341	Nordkjosbotn videregående skole	1004839	974546922	11	13	postmottak@tffk.no	Troms og Finnmark fylkeskommune	922420866	\N	\N	67	Ringveien 4	9040	NORDKJOSBOTN	\N	9040	\N	nordkjosbotn.vgs@tffk.no	77789600	www.nordkjosbotn.vgs.no	fc27de23-cbd2-4ab8-9329-5337aa685904	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:26:07+01	\N	Offentlig	54	Ja	5422	63
250	VideregåendeSkole	0101000020DB0B0000E3DB989107B552412EE54C2117895441	Nordkapp videregående skole	1005925	974622734	11	13	postmottak@tffk.no	Troms og Finnmark fylkeskommune	922420866	\N	\N	83	Klubbveien 9	9750	HONNINGSVÅG	Postboks 173	9750	Honningsvåg	nordkapp.vgs@tffk.no	78964900	www.nordkapp.vgs.no	9abc4524-4da1-43d4-b531-b6e793066be0	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:26:06+01	\N	Offentlig	54	Ja	5435	63
251	VideregåendeSkole	0101000020DB0B0000FFE7D32AA04E50419019200335855041	Nord-Gudbrandsdal Videregåande skule	1026228	916178360	11	13	\N	Innlandet fylkeskommune	920717152	\N	\N	11	Lars Moens veg 5	2660	DOMBÅS	Innlandet fylkeskommune Postboks 4404 Bedriftssenteret	2660	Hamar	n.gdal.vgs@innlandetfylke.no	61215400	www.n-g.vgs.no	04cf3e82-0861-40da-a411-7b829a0a082a	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-09-25 10:17:43+02	\N	Offentlig	34	Ja	3431	63
252	VideregåendeSkole	0101000020DB0B00004DA01D7587315041F33BDD9C406C5041	Nord-Gudbrandsdal Videregåande skule	1005630	974597217	11	13	\N	Innlandet fylkeskommune	920717152	\N	\N	22	Bergomsvegen 41	2686	LOM	Postboks 4404	2686	Hamar	n.gdal.vgs@innlandetfylke.no	61219270	www.n-g.vgs.no	33ee46e9-5255-4b60-afe1-49a3b6edd89c	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-09-13 10:28:20+02	\N	Offentlig	34	Ja	3434	63
253	VideregåendeSkole	0101000020DB0B0000A4E8C2BEF7635041DFBFCDFFDA645041	Nord-Gudbrandsdal vidaregåande skule	1009297	986452486	11	13	\N	\N	\N	\N	\N	39	Skansen 7	2670	OTTA	\N	2670	\N	\N	\N	\N	557a59c2-c788-4dc9-b7b7-caa0230da18f	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2021-01-12 09:22:04+01	\N	Offentlig	05	Nei	0517	99
254	VideregåendeSkole	0101000020DB0B0000C898BA11B5B35141B31E75F9349C5341	Nordborg Vgs	1004672	974117703	11	13	post@nordborg.no	Nordborg Skoler AS	988978159	77852930	\N	45	Sjøgata 28	9300	FINNSNES	\N	9300	\N	nordborg@nordborg.vgs.no	77852930	www.nordborg.vgs.no	0819e104-739c-4d82-a01f-8bfcd3e26ff5	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:51:46+01	\N	Privat	54	Ja	5421	63
255	VideregåendeSkole	0101000020DB0B0000EA3091EF87FD4E4183DC3E3451994F41	Nordahl Grieg videregående skole	1010292	993527084	11	13	post@vlfk.no	Vestland fylkeskommune	821311632	5557	\N	193	Steinsvikvegen 430	5239	RÅDAL	\N	5239	\N	post.ngv@vlfk.no	\N	www.hordaland.no/nordahlgriegvgs	763a69a8-e7db-4d06-b7b8-842631af0311	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:38:14+01	\N	Offentlig	46	Ja	4601	63
256	VideregåendeSkole	0101000020DB0B0000AB49791CC85350410211CE2193AB4E41	Nome videregående skole	1005134	974568187	11	13	post@vtfk.no	Vestfold og Telemark fylkeskommune	821227062	35917000	\N	87	Søvevegen 12	3830	ULEFOSS	Postboks 2844	3830	Skien	nome.vgs@vtfk.no	35918700	www.nome.vgs.no/	83d8b7c2-ab3b-4f52-9467-a2164c6f37d6	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:53:53+01	\N	Offentlig	38	Ja	3816	63
257	VideregåendeSkole	0101000020DB0B00000151F447E84950414D7DBF9E87B04E41	Nome videregående skole	1005127	974568063	11	13	post@vtfk.no	Vestfold og Telemark fylkeskommune	821227062	35917000	\N	61	Olav Strannas veg 25	3825	LUNDE	Postboks 2844	3825	Skien	nome.vgs@t-fk.no	35918800	www.nome.vgs.no	bdf44ca0-314c-4a25-ac26-7faa9e1281c2	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:24:05+01	\N	Offentlig	38	Ja	3816	63
258	VideregåendeSkole	0101000020DB0B000058D2D46DEFF84E41AFA2ABB176984F41	Nettskulen i Vestland	1029666	829356112	11	13	post@vlfk.no	Vestland fylkeskommune	821311632	5557	\N	\N	Sandslihaugen 30	5254	SANDSLI	Postboks 7900	5254	Bergen	\N	\N	\N	9bcbb6dd-e8c7-409b-adf0-661e83904a5e	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-06-15 10:59:44+02	\N	Offentlig	46	Ja	4601	63
259	VideregåendeSkole	0101000020DB0B00007EEB73E78E3551417F9E8FA1DCBD5241	Nettskolen i Nordland	1012160	913256840	11	13	post@nfk.no	Nordland fylkeskommune	964982953	75650000	\N	88	Prinsens gate 100	8005	BODØ	Postboks 1485	8005	Bodø	nettskolen@nfk.no	75650200	\N	3edd04f6-2fd2-41d0-8c05-8b51ff418f44	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:17:33+01	\N	Offentlig	18	Ja	1804	63
260	VideregåendeSkole	0101000020DB0B00004A244EA7EFA05041AF271A233E254F41	Nesodden videregående skole	1005376	974587572	1	13	post@viken.no	Viken fylkeskommune	921693230	32300000	\N	126	Kjartan Veldes vei 12	1459	NESODDEN	\N	1459	\N	nesoddenvgs@viken.no	66964200	viken.no/nesodden-vgs	62f4c952-6cf6-49ab-8c4a-1254ab47a75f	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:24:27+01	\N	Offentlig	30	Ja	3023	63
261	VideregåendeSkole	0101000020DB0B0000437D7E4855965041298BEF41062B4F41	Nesbru videregående skole	1005378	974587599	11	13	post@viken.no	Viken fylkeskommune	921693230	32300000	\N	209	Halvard Torgersens vei 8	1396	BILLINGSTAD	Postboks 38	1396	Nesbru	nesbruvgs@viken.no	66854400	viken.no/nesbru-vgs	29c1502c-8d80-410b-956a-ee2af5d972ba	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:24:30+01	\N	Offentlig	30	Ja	3025	63
262	VideregåendeSkole	0101000020DB0B0000CF29AAD546CC504192AF911E7D644F41	Nes videregående skole	1005384	974587653	11	13	post@viken.no	Viken fylkeskommune	921693230	32300000	\N	107	Kjuushagen 3	2150	ÅRNES	\N	2150	\N	nesvgs@viken.no	63912200	viken.no/nes-vgs	411c7487-d663-44ce-9a06-b427f408a072	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:24:34+01	\N	Offentlig	30	Ja	3034	63
263	VideregåendeSkole	0101000020DB0B00006EE206D5EBAB50414A903355713A4F41	Natur videregående skole	1006051	974714426	11	13	Post@Natur.vgs.no	Natur videregående skole	971526025	22908600	\N	28	Strømsveien 323A	1081	OSLO	\N	1081	\N	Post@Natur.vgs.no	22908600	natur.vgs.no	f8945d3b-9af7-48af-93ab-0019597f9422	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-10-12 10:55:17+02	\N	Privat	03	Ja	0301	63
264	VideregåendeSkole	0101000020DB0B0000FA3CEB4CC9A65141F8E68A2DEE445341	Narvik videregående skole	1004607	974041707	11	13	post@nfk.no	Nordland fylkeskommune	964982953	75650000	\N	214	Øvreveien 24	8516	NARVIK	Postboks 1485	8516	Bodø	post.narvik@nfk.no	75656500	www.narvik.vgs.no	b73dabcf-64bb-4265-a754-ab634623590c	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:17:31+01	\N	Offentlig	18	Ja	1806	63
265	VideregåendeSkole	0101000020DB0B0000003ECE6C1AB35041ECD8444237784F41	Nannestad videregående skole	1009667	988084948	11	13	post@viken.no	Viken fylkeskommune	921693230	32300000	\N	173	Smedstuvegen 2	2030	NANNESTAD	\N	2030	\N	nannestadvgs@viken.no	63996600	viken.no/nannestad-vgs	c5443efa-4515-4391-af34-a57b818aa625	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 10:18:39+01	\N	Offentlig	30	Ja	3036	63
266	VideregåendeSkole	0101000020DB0B0000E02BC044219B50417E30079AAA354F41	Nadderud videregående skole	1005390	974587734	11	13	post@viken.no	Viken fylkeskommune	921693230	32300000	600	96	Gjønnesjordet 30	1357	BEKKESTUA	Postboks 113	1357	Bekkestua	nadderudvgs@viken.no	67108770	viken.no/nadderud-vgs	5e17f42d-ffcc-4f6b-a813-d0ce3abd7254	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:24:42+01	\N	Offentlig	30	Ja	3024	63
267	VideregåendeSkole	0101000020DB0B00009C636D7F70064F41739B92FC777C5041	Måløy vidaregåande skule	1005169	974571188	11	13	post@vlfk.no	Vestland fylkeskommune	821311632	5557	350	81	Nordfjordvegen 9109	6718	DEKNEPOLLEN	\N	6718	\N	postmottak.maloyvgs@vlfk.no	57637900	www.maloy.vgs.no/	9c43e49f-d7b0-436e-8207-7be4db8acfe2	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:38:12+01	\N	Offentlig	46	Ja	4602	63
268	VideregåendeSkole	0101000020DB0B0000D3BAFB057D174F4178787DF6C8714E41	Møllehagen skolesenter	1003571	874624772	11	13	firmapost@rogfk.no	Rogaland fylkeskommune	971045698	51516600	\N	63	Torgveien 29	4016	STAVANGER	\N	4016	\N	mollehagen-vgs@skole.rogfk.no	51921900	www.mollehagen.no/	7225f536-8104-4a2c-9ae9-7b8064dc73ac	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:40:42+01	\N	Offentlig	11	Ja	1103	63
269	VideregåendeSkole	0101000020DB0B000013D8841217C55041A5ABEF71B9EA4E41	Møbelsnekkerskolen AS	1011867	911795442	11	13	post@mobelsnekker.no	Møbelsnekkerskolen AS	898571122	69891227	\N	6	Husflidveien 7	1850	MYSEN	\N	1850	\N	post@mobelsnekker.no	69891227	mobelsnekker.no	8c9c648a-ea0f-4862-ad44-e8f578a47cb8	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-10-12 10:42:04+02	\N	Privat	30	Ja	3014	63
270	VideregåendeSkole	0101000020DB0B0000C7B4A5C14AC5504111B848FBF1E84E41	Mysen videregående skole	1004794	974544512	11	13	post@viken.no	Viken fylkeskommune	921693230	32300000	\N	219	Hermann Thoresens gate 8	1850	MYSEN	Postboks 220	1850	Sarpsborg	mysenvgs@viken.no	69846100	viken.no/mysen-vgs	eefdae47-b2cb-4bab-be87-841b93a7de18	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:52:41+01	\N	Offentlig	30	Ja	3014	63
271	VideregåendeSkole	0101000020DB0B0000614671AB450B5141C91889BB7D1F5241	Mosjøen videregående skole	1005913	974621355	11	13	post@nfk.no	Nordland fylkeskommune	964982953	75650000	\N	296	Kirkegata 9	8656	MOSJØEN	Postboks 1485	8656	Bodø	post.mosjoen@vgs.nfk.no	75654000	www.mosjoen.vgs.no	fe64e35d-84b0-43a6-9f8f-9650a03e12f5	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:17:32+01	\N	Offentlig	18	Ja	1824	63
272	VideregåendeSkole	0101000020DB0B000064877C3BFE8C50410097F96650105141	Momo waldorfskole AS	1012095	913003284	7	13	momo@steinerskolen.no	Momo waldorfskole AS	996724255	99163100	16	13	Søbstadvegen 65	7088	HEIMDAL	Postboks 40 Heimdal	7088	Trondheim	momo@steinerskolen.no	99163100	www.momowaldorfskole.no	1043f625-ecb5-4314-a2f0-ddc42fbd975c	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:19:15+01	\N	Privat	50	Ja	5001	63
273	VideregåendeSkole	0101000020DB0B00006BC36A2218DB4F4187108B0CCCCF5041	Molde videregående skole	1005254	974576422	11	13	post@mrfylke.no	Møre og Romsdal fylkeskommune	944183779	71258000	\N	125	Øvre veg 23	6413	MOLDE	\N	6413	\N	molde.vgs@mrfylke.no	71283100	www.molde.vgs.no	817cb51c-c8a9-4d6c-9708-43dd7ae3512a	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-10-12 10:29:36+02	\N	Offentlig	15	Ja	1506	63
274	VideregåendeSkole	0101000020DB0B00001376C48E29464F4154F8610830485041	Mo og Øyrane vidaregåande skule	1005163	974571110	11	13	post@vlfk.no	Vestland fylkeskommune	821311632	5557	\N	161	Naustdalsvegen 12	6800	FØRDE	Postboks 115	6800	Førde	postmottak.oyranevgs@sfj.no	57825920	www.oyrane.vgs.no	14a3637e-b238-4467-808f-334789f1f16e	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:38:12+01	\N	Offentlig	46	Ja	4647	63
275	VideregåendeSkole	0101000020DB0B0000B1FA2E3F0E33514146B434C1F6565241	Mjølan videregående skole	1005911	974621339	11	13	\N	\N	\N	\N	\N	150	Murbakken 1	8622	MO I RANA	Postboks 553	8622	Mo I Rana	Post@mjolan.vgs.no	75126100	www.mjolan.vgs.no	ce5b072f-d009-4e79-84e0-bef128fd5c52	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2021-01-12 09:16:48+01	\N	Offentlig	18	Nei	1833	63
276	VideregåendeSkole	0101000020DB0B00006E6B083452014F4199F9135F199D4F41	Midtunheimen - vidaregåande Opplæring	1004497	973923951	11	13	\N	\N	\N	\N	\N	\N	Midtunvegen 26	5224	NESTTUN	\N	5224	\N	\N	\N	\N	d8fd20a2-0b9a-442b-a2fe-ba73a830efa3	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-04-20 10:18:04+02	\N	Offentlig	12	Nei	1201	63
277	VideregåendeSkole	0101000020DB0B000066A3A3289BFF4E41962BC80963AC4F41	Metis videregående AS	1009146	985076308	11	13	vgs.bergen@metis.no	Metis videregående AS	985024731	9321	590	93	Lars Hilles gate 17	5008	BERGEN	Postboks 59   Nygårdstangen	5008	Bergen	vgs.bergen@metis.no	9321	www.metis.no	ce726006-61f8-4a1d-8dd5-768b2e85aca1	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:36:33+01	\N	Privat	46	Ja	4601	63
278	VideregåendeSkole	0101000020DB0B0000F335363AB19450410CEA026BFA1D5041	Mesna videregående skole	1005646	974597438	11	13	\N	\N	\N	\N	\N	79	Kleivbakken 9	2618	LILLEHAMMER	Postboks 965	2618	Lillehammer	\N	\N	www.mesna.vgs.no/	9df4f9df-cd1c-4498-abe1-edf90184248f	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2021-01-12 09:22:04+01	\N	Offentlig	05	Nei	0501	63
279	VideregåendeSkole	0101000020DB0B000016D37BF499D05041C11A996C08175141	Meråker videregående skole	1005032	974560763	11	13	postmottak@trondelagfylke.no	Trøndelag fylkeskommune	817920632	\N	200	52	Sørsidveien 46	7530	MERÅKER	\N	7530	\N	bjokv@trondelagfylke.no	74175300	www.meraker.vgs.no/	2d7b4105-b23f-4a68-9d63-a28e4d6e45f7	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-09-13 10:37:43+02	\N	Offentlig	50	Ja	5034	63
280	VideregåendeSkole	0101000020DB0B000033FE7EC31E285141B4AAF09194A25241	Meløy videregående skole	1003566	874621412	11	13	post@nfk.no	Nordland fylkeskommune	964982953	75650000	\N	30	Øya 45	8140	INNDYR	Postboks 1485	8140	Bodø	post.meloy@vgs.nfk.no	75652600	www.meloy.vgs.no	79fd7e4a-d55d-44b9-97e2-5101725085da	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:17:33+01	\N	Offentlig	18	Ja	1838	63
281	VideregåendeSkole	0101000020DB0B0000065D32A25A275141B045AA20978A5241	Meløy videregående skole	1005900	974621193	11	13	post@nfk.no	Nordland fylkeskommune	964982953	75650000	\N	80	Glomveien 8	8160	GLOMFJORD	Postboks 1485	8160	Bodø	post.meloy@vgs.nfk.no	75652500	www.meloy.vgs.no/	6923ef87-637d-40bc-92b2-4212dfe56ce9	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:17:32+01	\N	Offentlig	18	Ja	1837	63
282	VideregåendeSkole	0101000020DB0B000075E5C689103851411F23D278A3BE5241	Mellomåsen skolesenter	1005899	974621177	11	13	post@nfk.no	Nordland fylkeskommune	964982953	75650000	\N	22	Kløveråsveien 1	8076	BODØ	Postboks 1485	8076	Bodø	\N	\N	\N	9d1624c4-afbf-405a-8bea-1d8c2164da05	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:17:34+01	\N	Offentlig	18	Ja	1804	63
283	VideregåendeSkole	0101000020DB0B0000CE25625FB5885041A5BCB6EC06085141	Melhus videregående skole	1003466	874558362	11	13	postmottak@trondelagfylke.no	Trøndelag fylkeskommune	817920632	\N	\N	97	Martin Tranmæls veg 30	7224	MELHUS	Postboks 160	7224	Melhus	postmottak.melhusvgs@trondelagfylke.no	74175200	www.melhus.vgs.no/	848ef81a-2595-427e-91a2-699a192ed249	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-09-13 10:37:41+02	\N	Offentlig	50	Ja	5028	63
284	VideregåendeSkole	0101000020DB0B000087916D53EC6C50416A2705AFC2F45041	Meldal videregående skole	1004990	974558122	11	13	postmottak@trondelagfylke.no	Trøndelag fylkeskommune	817920632	\N	280	64	Løkkenveien 518	7332	LØKKEN VERK	\N	7332	\N	postmottak.meldalvgs@trondelagfylke.no	\N	meldal.vgs.no/	a45f5f95-1bbf-46db-99b1-582e23f4e589	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:37:42+01	\N	Offentlig	50	Ja	5059	63
285	VideregåendeSkole	0101000020DB0B0000C19DC9E577CF4F41065D18C053A04D41	Mandal videregående skole	1005604	974595125	11	13	postmottak@agderfk.no	Agder fylkeskommune	921707134	38050000	800	189	Kallhammerveien 6	4514	MANDAL	Postboks 788 Stoa	4514	Arendal	kontakt@mandal.vgs.no	38278600	www.mandal.vgs.no	9c1dd302-7385-4ec9-b343-ad80b5945968	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:55:41+01	\N	Offentlig	42	Ja	4205	63
286	VideregåendeSkole	0101000020DB0B0000462761DA869A5041E0C15E5597185141	Malvik videregående skole	1004994	974558378	11	13	postmottak@trondelagfylke.no	Trøndelag fylkeskommune	817920632	\N	440	119	Vikhammerdalen 2	7560	VIKHAMMER	\N	7560	\N	Postmottak.Malvikvgs@Trondelagfylke.no	74175050	web.trondelagfylke.no/malvik-videregaende-skole	dbbc6153-64f2-4186-aca8-201c7b401fa0	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:37:43+01	\N	Offentlig	50	Ja	5031	63
287	VideregåendeSkole	0101000020DB0B0000E53C6D28E0A050416E487EF7C2CB4E41	Malakoff videregående skole	1004797	974544547	11	13	post@viken.no	Viken fylkeskommune	921693230	32300000	\N	171	Dyreveien 9	1532	MOSS	Postboks 583	1532	Moss	malakoffvgs@viken.no	69242200	viken.no/malakoff-vgs	b0bfdfd3-9e35-4a3e-81c2-5bfbf3d9c046	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:52:44+01	\N	Offentlig	30	Ja	3002	63
288	VideregåendeSkole	0101000020DB0B000087AFAB1C49B05041A6FF0D1718394F41	Mailand videregående skole	1010160	991815325	11	13	post@viken.no	Viken fylkeskommune	921693230	32300000	\N	160	Mailandveien 24	1470	LØRENSKOG	\N	1470	\N	mailandvgs@viken.no	\N	viken.no/mailand-vgs	daf7d31a-bf6d-48ca-97cb-cf64210653e1	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-10-12 11:06:16+02	\N	Offentlig	30	Ja	3029	63
289	VideregåendeSkole	0101000020DB0B00003376F029A2B15041F22D001FB6394F41	Lørenskog videregående skole	1005380	974587610	1	13	post@viken.no	Viken fylkeskommune	921693230	32300000	22	195	Sykehusveien 11	1474	LØRENSKOG	\N	1474	\N	lorenskogvgs@viken.no	67980700	viken.no/lorenskog-vgs	2132f971-b14c-403f-adcb-b626c635953b	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:55:18+01	\N	Offentlig	30	Ja	3029	63
290	VideregåendeSkole	0101000020DB0B00008C6549CBAEAA50419F1D85EA7D3C4F41	Lønnebakken skole	1005520	974590786	1	13	postmottak@oslo.kommune.no	Oslo kommune	958935420	2180	46	121	Bredtvetveien 4	0950	OSLO	Postboks 6127 Etterstad	0950	Oslo	postmottak@ude.oslo.kommune.no	23393360	lonnebakken.osloskolen.no/	6583dae6-ac61-47c9-886e-a7003ad8257d	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:16:34+01	\N	Offentlig	03	Ja	0301	63
291	VideregåendeSkole	0101000020DB0B000066DCAD9D3FFB4E416F3246A3A2B64F41	Lønborg videregående skole	1004944	974557274	11	13	\N	\N	\N	\N	\N	49	Hellebakken 35	5039	BERGEN	\N	5039	\N	\N	55953700	www.hordaland-f.kommune.no/lov/	d6818cfc-1e78-44ce-972d-60b617c3303b	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-04-20 10:18:07+02	\N	Offentlig	12	Nei	1201	63
292	VideregåendeSkole	0101000020DB0B00005DBFA68702A35041FF10A0E013364F41	Lycee Francais Rene Cassin	1006281	975051293	11	13	secretariat@rcassin.no	Association Du Lycee Francais Rene Cassin D'oslo	976837622	22925120	\N	50	Skovveien 9	0257	OSLO	\N	0257	\N	lycee@rcassin.no	22925120	www.rcassin.no	a1479b0e-2f58-462e-b5bf-e6d847a89bb4	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:57:22+01	\N	Privat	03	Ja	0301	63
293	VideregåendeSkole	0101000020DB0B0000E9956F2D8F244F419048BF5C85004F41	Lundeneset Vgs	1003436	874117722	11	13	post@lvs.no	Lundeneset Vgs AS	888982302	53775100	\N	59	Lundanesvegen 37	5582	ØLENSVÅG	\N	5582	\N	post@lvs.no	53775100	www.lvs.no	24bd285e-2894-49e0-9d17-401814eccdac	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:39:09+01	\N	Privat	11	Ja	1160	63
294	VideregåendeSkole	0101000020DB0B0000E7E1D57CA4144F4154018B4CA0574E41	Lundehaugen videregående skole	1005956	974624559	11	13	\N	\N	\N	\N	\N	150	Haugen 12	4323	SANDNES	Postboks 299	4323	Stavanger	lundehaugen-vgs@rfk.rogaland-f.kommune.no	51685900	www.rogaland-f.kommune.no/~lundehaugen/	7617c452-34de-4da7-ba25-b377f51ce51a	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2021-01-12 09:24:03+01	\N	Offentlig	11	Nei	1102	63
295	VideregåendeSkole	0101000020DB0B000025A23B7D6A935041CF15EC9AC1185141	Lukas videregående skole AS	1004342	973638416	11	13	post@lukas.vgs.no	Lukas videregående skole AS	989213377	73973370	113	36	Arkitekt Ebbells veg 22	7053	RANHEIM	\N	7053	\N	post@lukas.vgs.no	73973370	www.lukas.vgs.no	953b1dd7-cd4f-456c-9632-1588d08cc010	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:50:26+01	\N	Privat	50	Ja	5001	63
296	VideregåendeSkole	0101000020DB0B00008FA5ABD9FFFB50418AF056FA13505741	Longyearbyen skole	1029678	929440706	11	13	postmottak@lokalstyre.no	Longyearbyen Lokalstyre	984047851	79022150	\N	\N	Vei 102 3	9170	LONGYEARBYEN	Postboks 350	9170	Longyearbyen	\N	\N	\N	ca0b90ef-2da6-4663-a4dd-7536c8f9927d	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-08-09 10:15:14+02	\N	Offentlig	21	Ja	2100	63
297	VideregåendeSkole	0101000020DB0B00008FA5ABD9FFFB50418AF056FA13505741	Longyearbyen skole	1006181	974795655	1	13	postmottak@lokalstyre.no	Longyearbyen Lokalstyre	984047851	79022150	231	62	Vei 102 3	9170	LONGYEARBYEN	Postboks 350	9170	Longyearbyen	postmottak.skolen@lokalstyre.no	79023901	\N	135b2d28-0d6b-4857-8356-b4e52bed6043	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:57:19+01	\N	Offentlig	21	Ja	2100	63
298	VideregåendeSkole	0101000020DB0B00005C525D6CDEA750412A553CBF9C274F41	Ljabruskolen - steinerskole for Elever Med Spesielle Behov	1004218	973465139	1	13	ljabruskolen@steinerskolen.no	Ljabruskolen - steinerskole for Elever Med Spesielle Behov	877137082	22629890	27	77	Ljabrubakken 50	1165	OSLO	\N	1165	\N	ljabruskolen@steinerskolen.no	22629890	www.ljabruskolen@steinerskolen.no	1f70a5e9-055e-41d2-b96a-8c26a5fbcf4e	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-10-12 10:27:24+02	\N	Privat	03	Ja	0301	63
299	VideregåendeSkole	0101000020DB0B0000AE2B6DC400B55041D205157DF13F4F41	Lillestrøm videregående skole	1005392	974587750	11	13	post@viken.no	Viken fylkeskommune	921693230	32300000	\N	177	Henrik Wergelands gate 1	2003	LILLESTRØM	Postboks 333	2003	Lillestrøm	lillestromvgs@viken.no	63890600	viken.no/lillestrom-vgs	875488ed-7f62-4b00-b840-87ae41f5646c	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:24:45+01	\N	Offentlig	30	Ja	3030	63
300	VideregåendeSkole	0101000020DB0B0000FC86CB06B91D5041172224F416D04D41	Lillesand videregående skole	1005216	974573857	11	13	postmottak@agderfk.no	Agder fylkeskommune	921707134	38050000	\N	119	Birkelandsveien 10	4790	LILLESAND	Postboks 788 Stoa	4790	Arendal	kontakt@lillesand.vgs.no	37268300	lillesand.vgs.no	02d7fe1f-d02f-450f-b433-ecdb196821cf	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:24:11+01	\N	Offentlig	42	Ja	4215	63
301	VideregåendeSkole	0101000020DB0B0000A19468B7399350410AAF74E0E61E5041	Lillehammer videregående skole	1005633	974597241	11	13	\N	Innlandet fylkeskommune	920717152	\N	520	122	Vargstadvegen 1	2619	LILLEHAMMER	Postboks 4404	2619	Hamar	lillehammer.vgs.nord@innlandetfylke.no	61287100	www.lillehammer.vgs.no	98d4522a-8eaf-4a93-9493-8116274a372c	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:17:13+01	\N	Offentlig	34	Ja	3405	63
302	VideregåendeSkole	0101000020DB0B00009559AD438B9450411EB91842981C5041	Lillehammer videregående skole	1003535	874597252	11	13	\N	Innlandet fylkeskommune	920717152	\N	\N	145	Storgata 25	2609	LILLEHAMMER	Postboks 4404	2609	Hamar	lillehammer.vgs.sor@innlandetfylke.no	61287100	www.lillehammer.vgs.no/	897d7aa8-f931-40e2-873d-1faa7fc89e67	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:17:12+01	\N	Offentlig	34	Ja	3405	63
303	VideregåendeSkole	0101000020DB0B0000D3A80F49388950419887C3750E134F41	Lier videregående skole	1005732	974606135	11	13	post@viken.no	Viken fylkeskommune	921693230	32300000	\N	166	Jensvollveien 16	3413	LIER	Postboks 574	3413	Lierstranda	liervgs@viken.no	32220500	viken.no/lier-vgs	a21aadd8-a4c6-44cb-a775-8a24f78825d8	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:56:12+01	\N	Offentlig	30	Ja	3049	63
304	VideregåendeSkole	0101000020DB0B00002E6F9DBD23BA5041F2C4DA34283A5141	Levanger videregående skole	1005026	974560704	1	13	postmottak@trondelagfylke.no	Trøndelag fylkeskommune	817920632	\N	800	177	Kirkegata 1	7600	LEVANGER	\N	7600	\N	postmottak.levangervgs@trondelagfylke.no	74174900	www.levanger.vgs.no/	6b6f96d0-2170-459d-8f27-0559a3b4935a	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:37:42+01	\N	Offentlig	50	Ja	5037	63
305	VideregåendeSkole	0101000020DB0B000068BC7AABB3085041FECF3305DBB84D41	Lev bibelskole	1003387	873390522	11	13	\N	Lev bibelskole	857496892	33065454	\N	6	Dronningens gate 91	4608	KRISTIANSAND S	Postboks 73	4608	Våle	\N	33360341	\N	b28800b6-f93d-4910-8a15-c90c28ebf353	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-06-16 10:34:38+02	\N	Privat	42	Ja	4204	63
306	VideregåendeSkole	0101000020DB0B0000150D54673F7750412903905F98174F41	Lerberg skole og kompetansesenter	1011308	998516897	1	13	post@viken.no	Viken fylkeskommune	921693230	32300000	\N	22	Ringeriksveien 2	3303	HOKKSUND	Postboks 117	3303	Hokksund	lerbergsk@viken.no	32256950	\N	c3fa685a-5f65-42f9-8517-b8465088df7b	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-10-12 11:07:34+02	\N	Offentlig	30	Ja	3048	63
307	VideregåendeSkole	0101000020DB0B0000DDC9D71D86A750414E312A55FEDA4F41	Lena-Valle videregående skole	1005638	974597322	11	13	\N	Innlandet fylkeskommune	920717152	\N	650	142	Skolegata 24	2850	LENA	Postboks 4404	2850	Hamar	lena.vgs@innlandetfylke.no	61143280	www.lena-valle.vgs.no	5d2654e7-145b-4e73-9e07-4941f9b816d5	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:17:14+01	\N	Offentlig	34	Ja	3442	63
308	VideregåendeSkole	0101000020DB0B00004966AF7A33A7504104A62DBE26DB4F41	Lena-Valle videregående skole	1005645	974597403	11	13	\N	Innlandet fylkeskommune	920717152	\N	\N	47	Lenagata 20	2850	LENA	Innlandet fylkeskommune Postboks 4404 Bedriftssenteret	2850	Hamar	valle.vdg@oppland.org	61160944	www.lena-valle.vgs.no	88dd20e6-fa87-4762-9897-88479de49396	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:17:12+01	\N	Offentlig	34	Ja	3442	63
309	VideregåendeSkole	0101000020DB0B00007FFAD6B1CD7C5041EFDD0ECB067A4E41	Larvik kommune Voksenopplæringa	1005362	974584786	11	13	postmottak@larvik.kommune.no	Larvik kommune	918082956	33171000	87	40	Hammergata 24	3264	LARVIK	Postboks 2020	3264	Larvik	ingeborg.kulseng@larvik.kommune.no	33173150	\N	cf375ebd-1ef3-4d1f-861a-505a0c0b6fb8	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-10-12 10:29:52+02	\N	Offentlig	38	Ja	3805	63
310	VideregåendeSkole	0101000020DB0B0000A77797718C024F41A3B5AAF1C4A64F41	Langhaugen videregående skole	1004937	974557096	11	13	post@vlfk.no	Vestland fylkeskommune	821311632	5557	\N	120	Hagerups vei 17	5093	BERGEN	\N	5093	\N	post.las@vlfk.no	55361400	skole.hfk.no/langhaugenvgs	26bdc75b-667e-4686-9947-ef26851aebe3	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:38:13+01	\N	Offentlig	46	Ja	4601	63
311	VideregåendeSkole	0101000020DB0B00000695AED028A85041E980493DE92D4F41	Lambertseter videregående skole	1005533	974590913	11	13	postmottak@oslo.kommune.no	Oslo kommune	958935420	2180	\N	176	Cecilie Thoresens vei 6	1153	OSLO	Postboks 6127 Etterstad	1153	Oslo	postmottak@ude.oslo.kommune.no	22767800	lambertseter.vgs.no	e287e329-0daa-4f18-9503-635cbe4a9a9f	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:16:50+01	\N	Offentlig	03	Ja	0301	63
312	VideregåendeSkole	0101000020DB0B0000EAEE8717D1FF4E41783C4D89EDAB4F41	Laksevåg og Bergen Maritime videregående skole	1004952	974557355	11	13	post@vlfk.no	Vestland fylkeskommune	821311632	5557	\N	83	Odd Frantzens plass 6	5008	BERGEN	Postboks 6065	5008	Bergen	laksevag.og.bergen.vgs@vlfk.no	55337500	skole.hfk.no/laksevagvgs	22945c01-8481-4c8f-874f-5b193fbdfd9a	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-10-12 10:36:40+02	\N	Offentlig	46	Ja	4601	63
313	VideregåendeSkole	0101000020DB0B000030FC975B85AA524161BFA8839B1F5441	Lakselv videregående skole	1005926	974622742	11	13	postmottak@tffk.no	Troms og Finnmark fylkeskommune	922420866	\N	\N	62	Kirkeveien 25	9700	LAKSELV	Postboks 23	9700	Lakselv	lakselv.vgs@tffk.no	78965400	www.lakselv.vgs.no	6128bd95-1c22-4cd5-9485-b6f6bcf5c0f6	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-09-13 10:23:17+02	\N	Offentlig	54	Ja	5436	63
314	VideregåendeSkole	0101000020DB0B00007EBF3D40754E5041F825AAB9F9085141	Kyrksæterøra videregående skole	1003465	874558052	11	13	postmottak@trondelagfylke.no	Trøndelag fylkeskommune	817920632	\N	\N	39	Trondheimsveien 18	7200	KYRKSÆTERØRA	\N	7200	\N	postmottak.hemne@trondelagfylke.no	74174600	www.hemne.vgs.no/	52aaa3f3-d128-4210-965d-687db1d538ea	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:37:42+01	\N	Offentlig	50	Ja	5055	63
315	VideregåendeSkole	0101000020DB0B0000251A9BF38AA34F41EA6C9D0371B74D41	Kvs-Lyngdal AS	1004133	973149776	11	13	post@kvs-lyngdal.no	Kvs-Lyngdal AS	989032402	38330600	\N	69	Agnefestveien 225	4580	LYNGDAL	\N	4580	\N	post@kvs-lyngdal.no	38330600	kvslyngdal.no	cbd9c533-c6e5-4e5c-ac07-e0a70f79a883	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-10-12 10:47:18+02	\N	Privat	42	Ja	4225	63
316	VideregåendeSkole	0101000020DB0B0000AFA254522BFF4F418079B919BE4D4E41	Kvs-Bygland AS	1009859	989280767	11	13	post@kvs-bygland.no	Kvs-Bygland AS	989032321	37935118	\N	27	Sentrum 37	4745	BYGLAND	\N	4745	\N	post@kvs-bygland.no	37935118	www.kvs-bygland.no	82778104-d7e6-414d-ac15-b746d52d5a6f	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-10-12 11:05:48+02	\N	Privat	42	Ja	4220	63
317	VideregåendeSkole	0101000020DB0B00008A18D3BA682950416AC0BD4F1DC34E41	Kvitsund gymnas	1004659	974085062	11	13	admin@kvitsund.vgs.no	Kvitsund gymnas AS	988982857	35068700	\N	64	Jacob Naadlands veg 2	3850	KVITESEID	Jacob Naadlands veg 2	3850	Kviteseid	admin@kvitsund.vgs.no	35068700	www.kvitsund.vgs.no	0fbacc6a-36b6-4e0e-b087-47e0b01a84c6	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:51:38+01	\N	Privat	38	Ja	3821	63
318	VideregåendeSkole	0101000020DB0B0000CAF431828D244F4106F15A1A45354F41	Kvinnherad vidaregåande skule	1004945	974557282	11	13	post@vlfk.no	Vestland fylkeskommune	821311632	5557	\N	81	Opsangervegen 160	5460	HUSNES	\N	5460	\N	post.kvv@vlfk.no	53475700	skole.hfk.no/kvinnheradvgs	4158c654-6ae5-4b94-9a40-b62306670e66	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:38:13+01	\N	Offentlig	46	Ja	4617	63
319	VideregåendeSkole	0101000020DB0B0000E8F3A0BE755C4F416F2C0FC0E5A64F41	Kvam vidaregåande skule	1004933	974557045	11	13	post@vlfk.no	Vestland fylkeskommune	821311632	5557	\N	40	Nedre Vik 85	5610	ØYSTESE	\N	5610	\N	Post.Kvam@vlfk.no	56556600	www.hordaland.no/nn-NO/skole/kvamvgs/	72847345-df93-4c5b-b1e3-ad640ee26ca5	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-10-12 10:36:38+02	\N	Offentlig	46	Ja	4622	63
320	VideregåendeSkole	0101000020DB0B0000D67A642B8CCB514104BB48489CD05341	Kvaløya videregående skole	1004837	974546906	11	13	postmottak@tffk.no	Troms og Finnmark fylkeskommune	922420866	\N	\N	149	Nedre Storvollen 75	9104	KVALØYA	\N	9104	\N	kvaloya.vgs@tffk.no	77788400	www.kvaloya.vgs.no	68e688f3-1eff-4a24-a29c-44d6b96ea9a9	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:26:07+01	\N	Offentlig	54	Ja	5401	63
321	VideregåendeSkole	0101000020DB0B0000B3055894AC08504126183B2516B94D41	Kvadraturen videregående skole	1005603	974595117	11	13	postmottak@agderfk.no	Agder fylkeskommune	921707134	38050000	\N	285	Tollbodgata 75	4614	KRISTIANSAND S	Postboks 788 Stoa	4614	Arendal	kontakt@kvadraturen.vgs.no	38077300	www.kvadraturen.vgs.no	a244832b-c697-46a9-a958-98e57b21ef18	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:55:40+01	\N	Offentlig	42	Ja	4204	63
322	VideregåendeSkole	0101000020DB0B0000BCC6B4B062F84E41C5536D8912894F41	Krokeide videregående skole AS	1003382	873255692	11	13	firmapost@krokeide.vgs.no	Krokeide videregående skole AS	980443191	55108700	\N	108	Korsnesvegen 70	5244	FANA	\N	5244	\N	firmapost@krokeide.vgs.no	55108700	www.krokeide.vgs.no	3b46500b-0fe6-44cc-9238-26492669d668	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-10-12 10:35:07+02	\N	Privat	46	Ja	4601	63
323	VideregåendeSkole	0101000020DB0B0000B8612C55CD0A50415B01E785EBF75041	Kristiansund videregående skole	1005266	974576589	11	13	post@mrfylke.no	Møre og Romsdal fylkeskommune	944183779	71258000	\N	222	Sankthanshaugen 2	6514	KRISTIANSUND N	\N	6514	\N	kristiansund.vgs@mrfylke.no	71284000	www.krsund.vgs.no/	9baf01c5-8cde-4d0e-b7bb-402045f5e5df	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:39:50+01	\N	Offentlig	15	Ja	1505	63
324	VideregåendeSkole	0101000020DB0B000021F487C42F0950413A66AD8B5DBB4D41	Kristiansand katedralskole Gimle	1005596	974594994	11	13	postmottak@agderfk.no	Agder fylkeskommune	921707134	38050000	\N	246	Jegersbergveien 1	4630	KRISTIANSAND S	Postboks 788 Stoa	4630	Arendal	kontakt@kkg.vgs.no	38705000	www.kkg.vgs.no	9616bbbd-d130-412c-a691-3bd995c6d611	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:55:35+01	\N	Offentlig	42	Ja	4204	63
325	VideregåendeSkole	0101000020DB0B0000A2F4FC14798E50415C4846832F105141	Kristen videregående skole Trøndelag	1004734	974149699	11	13	kvt@kvt.vgs.no	Kristen videregående skole Trøndelag	971574909	72894940	500	109	Østre Rosten 35	7075	TILLER	\N	7075	\N	kvt@kvt.vgs.no	72894940	www.kvt.vgs.no	9c7a54a9-a023-4869-b88c-37f73e68db77	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:52:14+01	\N	Privat	50	Ja	5001	63
326	VideregåendeSkole	0101000020DB0B00004486D8D93CEE4E4106CA504DC5D24E41	Kristen videregående skole Haugalandet AS	1012207	913404793	11	13	rektor@kvh.vgs.no	Kristen videregående skole Haugalandet AS	913307534	\N	14	30	Norheimsmarka 15	5542	KARMSUND	\N	5542	\N	rektor@kvh.vgs.no	93281455	kvh.vgs.no	91d50d10-ed53-43fe-9c4f-5aa96d8a27e0	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:45:13+01	\N	Privat	11	Ja	1149	63
327	VideregåendeSkole	0101000020DB0B0000D7ABE522D7065041AA154DD76FCF4D41	Kristen Vgs Vennesla AS	1010343	994557416	11	13	post@kv.vgs.no	Kristen Vgs Vennesla AS	976261011	38157777	240	63	Vigeland Brugs veg 3	4708	VENNESLA	\N	4708	\N	post@kv.vgs.no	38157777	www.kv.vgs.no	80228151-4529-45ae-90ab-225d2ab1c9c8	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 10:17:21+01	\N	Privat	42	Ja	4223	63
328	VideregåendeSkole	0101000020DB0B0000965E7955ABA350410E910A479B374F41	Kristelig gymnasium AS	1004676	974117797	11	13	kg@kg.vgs.no	Kristelig gymnasium AS	827111392	21551000	\N	179	Homansbakken 2	0352	OSLO	OSCARSG 1	0352	Oslo	kg@kg.vgs.no	23196440	www.kg.vgs.no/	6e18e374-92fc-408d-a61f-7a4387c13c50	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:22:52+01	\N	Privat	03	Ja	0301	63
329	VideregåendeSkole	0101000020DB0B0000868AA55A565A5041CF9E8D467B514E41	Kragerø kunstskole AS	1011491	993887439	11	13	rektor@kragerokunstskole.no	Kragerø kunstskole AS	993855545	35991100	\N	6	Edvard Munchs vei 3	3770	KRAGERØ	\N	3770	\N	rektor@kragerokunstskole.no	35986344	www.kragerokunstskole.no	3556b2ca-8133-4885-840d-c4d9d73c40f3	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-07-12 11:02:22+02	\N	Privat	38	Ja	3814	63
330	VideregåendeSkole	0101000020DB0B0000DA4B99609FE94E41ECF7749FF2BC4E41	Kopervik videregående skole	1005941	974624389	11	13	firmapost@rogfk.no	Rogaland fylkeskommune	971045698	51516600	465	60	Austre Karmøyveg 21	4250	KOPERVIK	Postboks 8 Eide	4250	Kopervik	kopervik-vgs@skole.rogfk.no	52814100	kopervik.vgs.no/	3fb376f7-f80c-481d-bf5b-60696df9e77c	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:40:42+01	\N	Offentlig	11	Ja	1149	63
331	VideregåendeSkole	0101000020DB0B0000952E27FC44905041F8AA159BD21D4F41	Kongsskogen videregående skole	1008620	979594100	11	13	postmottak@oslo.kommune.no	Oslo kommune	958935420	2180	\N	\N	Sykehusveien 25	1385	ASKER	Postboks 6127	1385	Oslo	kongsskogenvgs@ude.oslo.kommune.no	\N	\N	0fe819fb-e7ad-4c9c-8dfe-4ce6d4a85458	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-03-16 09:23:45+01	\N	Offentlig	30	Ja	3025	63
332	VideregåendeSkole	0101000020DB0B0000D3347A77FDA650419ABC8EF8AA354F41	Kongsskogen videregående skole	1003406	873626402	11	13	postmottak@oslo.kommune.no	Oslo kommune	958935420	2180	\N	27	Gladengveien 3B	0661	OSLO	Postboks 6127 Etterstad	0661	Oslo	postmottak@ude.oslo.kommune.no	23243770	kongsskogen.vgs.no	0d22cba6-06c2-4ef4-b130-8aea65e64d16	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-10-12 10:18:56+02	\N	Offentlig	03	Ja	0301	63
333	VideregåendeSkole	0101000020DB0B000006C84BDE46A5504137706D0BDD314F41	Kongshavn videregående skole	1011488	999173926	11	13	postmottak@oslo.kommune.no	Oslo kommune	958935420	2180	\N	86	Kongsveien 30	0193	OSLO	Postboks 6127 Etterstad	0193	Oslo	postmottak.Kongshavn.vgs@osloskolen.no	23381500	postmottak.Kongshavn.vgs@osloskolen.no	2c3e529a-ff09-49f0-a268-f14f59527349	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:16:56+01	\N	Offentlig	03	Ja	0301	63
334	VideregåendeSkole	0101000020DB0B0000E0A941F1E4014F410368DFE4DA784F41	Kongshaug Musikkgymnas	1004688	974117967	11	13	hiversen@kongshaug.no	Kongshaug Musikkgymnas AS	988982229	56303780	\N	58	Lepsøyneset 10	5216	LEPSØY	\N	5216	\N	hiversen@kongshaug.no	56303780	www.kongshaug.no/	87cbfd75-eaca-448b-9248-374e5e2b3149	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-10-12 10:50:16+02	\N	Privat	46	Ja	4624	63
335	VideregåendeSkole	0101000020DB0B00009F62773B4A68504172D46FF60A004F41	Kongsberg videregående skole	1005727	974605996	11	13	post@viken.no	Viken fylkeskommune	921693230	32300000	\N	274	Tinius Olsens gate 1	3611	KONGSBERG	Postboks 424	3611	Kongsberg	kongsbergvgs@viken.no	32867600	viken.no/kongsberg-vgs	beb57918-2701-41be-8981-f206be82b529	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:25:39+01	\N	Offentlig	30	Ja	3006	63
336	VideregåendeSkole	0101000020DB0B00002A6C0B240FD25141E18323E6ADCD5341	Kongsbakken videregående skole	1004826	974546744	11	13	postmottak@tffk.no	Troms og Finnmark fylkeskommune	922420866	\N	714	199	Skolegata 16	9008	TROMSØ	Postboks 355	9008	Tromsø	kongsbakken.vgs@tffk.no	77647300	www.kongsbakken.vgs.no	ba0af436-4107-4b1c-b8cf-d892df8160a3	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:26:06+01	\N	Offentlig	54	Ja	5401	63
337	VideregåendeSkole	0101000020DB0B00001A3C1C4406925041C5972C3244AA4E41	Kompetansebyggeren	1010320	994309153	11	13	post@vtfk.no	Vestfold og Telemark fylkeskommune	821227062	35917000	700	86	Nordbyen 40	3111	TØNSBERG	Postboks 2844	3111	Skien	kompetansebyggeren@vtfk.no	33309300	www.kompetansebyggeren.no	0d6cf034-6d01-4a8b-bf3b-96fea6b71b08	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 10:17:14+01	\N	Offentlig	38	Ja	3803	63
338	VideregåendeSkole	0101000020DB0B0000B0C23E74F9865041AE827C5565104F41	Kommunenes Opplæringskontor i Buskerud Iks	1008192	976585488	11	13	post@kob.no	Kommunenes Opplæringskontor i Buskerud Iks	976562224	32890454	\N	4	Hauges Gate 2	3019	DRAMMEN	\N	3019	\N	\N	32890454	\N	67b51116-2c8f-4218-bb7b-0ce5ef2d1f11	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-09-23 10:15:57+02	\N	Offentlig	06	Nei	0602	63
339	VideregåendeSkole	0101000020DB0B0000C577DBA0236251415060A1C30B185341	Knut Hamsun videregående skole	1005906	974621282	11	13	post@nfk.no	Nordland fylkeskommune	964982953	75650000	\N	54	Oppeid	8294	HAMARØY	Postboks 1485	8294	Bodø	post.hamsun@nfk.no	75652200	www.hamsun.vgs.no/	5b5cb321-986e-4ccf-8f9c-6417a5d070f9	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:17:32+01	\N	Offentlig	18	Ja	1875	63
340	VideregåendeSkole	0101000020DB0B000074B42EF8C5FC4E4144CD1E80FDCF4F41	Knarvik vidaregåande skule	1004950	974557339	11	13	post@vlfk.no	Vestland fylkeskommune	821311632	5557	\N	169	Juvikstølen 9	5916	ISDALSTØ	\N	5916	\N	post.knv@vlfk.no	56355400	www.hordaland.no/nn-NO/skole/knarvikvgs/	9d230284-3ca0-4115-b51e-84b493116bd8	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:38:12+01	\N	Offentlig	46	Ja	4631	63
341	VideregåendeSkole	0101000020DB0B0000D3FB53C9CB935041B8B8619BBE095141	Klæbu opplæringssenter	1010873	976832779	11	13	postmottak@klabu.kommune.no	Klæbu kommune	958731469	72833500	\N	4	Hallsetvegen 8	7540	KLÆBU	\N	7540	\N	\N	\N	\N	ee2d36b6-5aa3-4308-b331-44e24b45531e	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2020-05-11 16:01:31+02	\N	Offentlig	16	Nei	1662	63
342	VideregåendeSkole	0101000020DB0B0000A3AF41A011A450416648AA356C3A4F41	Kirkeveien videregående skole	1004334	973626396	11	13	postmottak@oslo.kommune.no	Oslo kommune	958935420	2180	\N	28	Kirkeveien 166	0450	OSLO	Postboks 6127 Etterstad	0450	Oslo	postmottak@ude.oslo.kommune.no	22118958	\N	a46bdd8f-7ec0-48fd-bde4-77ac6bce51b8	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:16:37+01	\N	Offentlig	03	Ja	0301	63
343	VideregåendeSkole	0101000020DB0B0000CE826F7C90A05041C985682872CD4E41	Kirkeparken videregående skole	1004796	974544539	11	13	post@viken.no	Viken fylkeskommune	921693230	32300000	\N	208	Dronningens gate 22	1530	MOSS	Postboks 113	1530	Moss	kirkeparkenvgs@viken.no	69202700	viken.no/kirkeparken-vgs	a4cdb162-ae3d-4f74-bff7-06d3a41fb998	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:52:43+01	\N	Offentlig	30	Ja	3002	63
344	VideregåendeSkole	0101000020DB0B0000C466860C176D53415926D9BC4D2A5441	Kirkenes videregående skole	1005924	974622726	11	13	postmottak@tffk.no	Troms og Finnmark fylkeskommune	922420866	\N	\N	173	Hessengveien 10	9912	HESSENG	Postboks 44	9912	Hesseng	kirkenes.vgs@tffk.no	78963300	www.kirkenes.vgs.no	70d8b49f-1a3d-4a03-96c1-ea4e2d4112c2	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:26:05+01	\N	Offentlig	54	Ja	5444	63
345	VideregåendeSkole	0101000020DB0B00003482DFC3CD565041FB2D79255C0D5041	Karriere Innlandet Valdres	1029709	829639572	11	13	\N	Innlandet fylkeskommune	920717152	\N	\N	\N	Yrkesskulevegen 2	2920	LEIRA I VALDRES	Postboks 4404 Bedriftssenteret	2920	Hamar	\N	\N	\N	bb7321f9-7815-4eea-a693-62d165d4133c	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-08-16 11:14:28+02	\N	Offentlig	34	Ja	3451	63
346	VideregåendeSkole	0101000020DB0B00003102CED4E8CE5041F823681AEB035041	Karriere Innlandet Sør-Østerdal	1029708	929639561	11	13	\N	Innlandet fylkeskommune	920717152	\N	\N	\N	Kirkevegen 1	2414	ELVERUM	Postboks 4404 Bedriftssenteret	2414	Hamar	\N	\N	\N	802839f1-d796-4889-9da0-46b370798ec2	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-08-16 11:14:29+02	\N	Offentlig	34	Ja	3420	63
347	VideregåendeSkole	0101000020DB0B00003E987A7209A35041DEBAEA04429A5041	Karriere Innlandet Nord-Østerdal	1029707	929639553	11	13	\N	Innlandet fylkeskommune	920717152	\N	\N	\N	Fedraheimveien 1	2500	TYNSET	Postboks 4404 Bedriftssenteret	2500	Hamar	\N	\N	\N	4f1bf6f6-7a5b-48c6-8e45-e875babc9948	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-08-16 11:14:29+02	\N	Offentlig	34	Ja	3427	63
348	VideregåendeSkole	0101000020DB0B00006F172D8A74E85041C195C6EF1D744F41	Karriere Innlandet Kongsvinger	1029705	929639529	11	13	\N	Innlandet fylkeskommune	920717152	\N	\N	\N	Rådhusplassen 7	2212	KONGSVINGER	Postboks 4404 Bedriftssenteret	2212	Hamar	\N	\N	\N	f6690ecd-2528-4fe4-b8be-9fa63deb59f2	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-08-16 11:14:29+02	\N	Offentlig	34	Ja	3401	63
349	VideregåendeSkole	0101000020DB0B00001424497E30B35041440EF82A9DF54F41	Karriere Innlandet Hamar	1029704	929639502	11	13	\N	Innlandet fylkeskommune	920717152	\N	\N	\N	Mabel Sandbergs veg 25	2315	HAMAR	Postboks 4404 Bedriftssenteret	2315	Hamar	\N	\N	\N	782fc19a-44f4-44b3-a0b9-658edee2c8c3	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-08-16 11:14:30+02	\N	Offentlig	34	Ja	3403	63
350	VideregåendeSkole	0101000020DB0B00009293F95FE89A5041DC35094E0B954F41	Karriere Innlandet Hadeland	1029703	929639480	11	13	\N	Innlandet fylkeskommune	920717152	\N	\N	\N	Skolelia 3	2750	GRAN	Postboks 4404 Bedriftssenteret	2750	Hamar	\N	\N	\N	6853a70f-1ed7-4a7d-9999-e262a8b51745	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-08-16 11:14:30+02	\N	Offentlig	34	Ja	3446	63
351	VideregåendeSkole	0101000020DB0B0000055D7F12E66D50418482179F3A515041	Karriere Innlandet Gudbrandsdal	1029702	929639472	11	13	\N	Innlandet fylkeskommune	920717152	\N	\N	\N	Gamle Skåbuvegen 10	2640	VINSTRA	Postboks 4404 Bedriftssenteret	2640	Hamar	\N	\N	\N	ee4a8f20-1259-4a94-bc09-613ebce3a5c6	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-08-16 11:14:30+02	\N	Offentlig	34	Ja	3436	63
352	VideregåendeSkole	0101000020DB0B00009914524DDD9F50417238869C8EF24F41	Karriere Innlandet Gjøvik	1029699	929639464	11	13	\N	Innlandet fylkeskommune	920717152	\N	\N	\N	Studievegen 2	2815	GJØVIK	Postboks 4404	2815	Hamar	\N	\N	\N	902423b8-d532-4026-bf6e-bb01c41d1657	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-08-16 11:14:30+02	\N	Offentlig	34	Ja	3407	63
353	VideregåendeSkole	0101000020DB0B000072CD209A7AB5504107E6EAEF25F54F41	Karriere Innlandet	1010366	994881019	11	13	\N	Innlandet fylkeskommune	920717152	\N	\N	199	Parkgata 64	2317	HAMAR	Innlandet fylkeskommune Postboks 4404 Bedriftssenteret	2317	Hamar	post@innlandetfylke.no	\N	\N	b0c5ce63-3a47-4afb-802a-67d2b7f5d2e0	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:17:12+01	\N	Offentlig	34	Ja	3403	63
354	VideregåendeSkole	0101000020DB0B0000D3FC0FD5380850410764BA1A7CB94D41	Karriere Agder Kristiansand	1029115	926547771	11	13	postmottak@agderfk.no	Agder fylkeskommune	921707134	38050000	\N	\N	Tordenskjolds gate 65	4614	KRISTIANSAND S	Postboks 788  Stoa	4614	Arendal	\N	\N	\N	4e72ec0f-f636-4c9e-8edb-e3cae987a2c3	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-06-22 10:15:26+02	\N	Offentlig	42	Ja	4204	63
355	VideregåendeSkole	0101000020DB0B00001FC2FF7953355041EEC4DC3784FB4D41	Karriere Agder Arendal	1027151	919141379	11	13	postmottak@agderfk.no	Agder fylkeskommune	921707134	38050000	\N	1	Ragnvald Blakstads vei 1	4838	ARENDAL	Postboks 788 Stoa	4838	Arendal	karrierearendal@agderfk.no	38050000	\N	3ad9117a-dcf1-48ae-a5c2-541eeaa11fcd	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-06-22 10:15:29+02	\N	Offentlig	42	Ja	4203	63
356	VideregåendeSkole	0101000020DB0B000047009A6469EB4E417E0DA6C501D74E41	Karmsund videregående skole	1005959	974624591	11	13	firmapost@rogfk.no	Rogaland fylkeskommune	971045698	51516600	900	195	Salhusvegen 68	5529	HAUGESUND	Postboks 4033	5529	Haugesund	karmsund-vgs@skole.rogfk.no	51922000	www.karmsund.vgs.no	43439ca9-778b-4246-9e76-bd742ceb40d5	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:40:43+01	\N	Offentlig	11	Ja	1106	63
357	VideregåendeSkole	0101000020DB0B0000B2BA27F712B65041B0F283CCC5B34E41	Kalnes videregående skole	1004795	974544520	11	13	post@viken.no	Viken fylkeskommune	921693230	32300000	\N	156	Sandtangen 85	1712	GRÅLUM	\N	1712	\N	kalnesvgs@viken.no	69136000	viken.no/kalnes-vgs	4b42bbe3-ddec-4c18-a5c3-d16381a3f5d4	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:52:42+01	\N	Offentlig	30	Ja	3003	63
358	VideregåendeSkole	0101000020DB0B0000613365E812164F41CAD32C6C486A4E41	Jåttå videregående skole	1009973	990183449	11	13	firmapost@rogfk.no	Rogaland fylkeskommune	971045698	51516600	900	275	Jåttåvågveien 3	4020	STAVANGER	Postboks 6005	4020	Stavanger	jaattaa-vgs@skole.rogfk.no	51955100	jaattaa.vgs.no	abbce441-83ec-473d-9eb1-58af85875e96	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:40:43+01	\N	Offentlig	11	Ja	1103	63
359	VideregåendeSkole	0101000020DB0B0000CAF943B03EBC50416AB7865DD9EB4F41	Jønsberg videregående skole	1005184	974572060	11	13	\N	Innlandet fylkeskommune	920717152	\N	221	88	Jønsbergvegen 272	2335	STANGE	Postboks 4404	2335	Hamar	post.jonsberg.vgs@innlandetfylke.no	62581224	www.jonsberg.vgs.no	299a353f-660e-446d-a7f1-83266afb04ba	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:17:12+01	\N	Offentlig	34	Ja	3413	63
360	VideregåendeSkole	0101000020DB0B000008ACEACA868650412A5BE41908255141	Johan Bojer videregående skole	1029633	929188829	11	13	postmottak@trondelagfylke.no	Trøndelag fylkeskommune	817920632	\N	\N	\N	Sjølystveien 2	7125	VANVIKAN	\N	7125	\N	\N	\N	\N	192c6f26-b731-4f6d-a954-52dca474f7e9	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-05-11 10:22:49+02	\N	Offentlig	50	Ja	5054	63
361	VideregåendeSkole	0101000020DB0B00007DF4A859AD795041048163FEC2285141	Johan Bojer videregående skole	1004984	974558025	11	13	postmottak@trondelagfylke.no	Trøndelag fylkeskommune	817920632	\N	155	48	Årnsetveien 41	7100	RISSA	\N	7100	\N	Postmottak.Johanbojer-Rissa@trondelagfylke.no	74174000	www.rissa.vgs.no	f751ba64-3ca8-4be5-80aa-5bd60cf2785b	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:37:41+01	\N	Offentlig	50	Ja	5054	63
362	VideregåendeSkole	0101000020DB0B0000FFCB8D09DD99504174A30E93A6325141	Johan Bojer videregående skole	1005031	974560755	11	13	postmottak@trondelagfylke.no	Trøndelag fylkeskommune	817920632	\N	100	46	Hallveien 22	7120	LEKSVIK	\N	7120	\N	postmottak.johanbojer-leksvik@trondelagfylke.no	74174800	www.leksvik.vgs.no/	b788d1f2-8e78-4f62-86f1-6446469bf8e0	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:37:42+01	\N	Offentlig	50	Ja	5054	63
363	VideregåendeSkole	0101000020DB0B00004F37EBEB1DBA504168056AF806584F41	Jessheim videregående skole	1011512	999262554	11	13	post@viken.no	Viken fylkeskommune	921693230	32300000	\N	29	Ullersmovegen 5	2040	KLØFTA	\N	2040	\N	\N	\N	\N	862c77a6-864c-4c00-b289-ba9c15048517	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2021-02-18 09:16:46+01	\N	Offentlig	30	Nei	3033	63
364	VideregåendeSkole	0101000020DB0B00000CC8143FF5BA5041EEDFA5736E684F41	Jessheim videregående skole	1005383	974587645	8	13	post@viken.no	Viken fylkeskommune	921693230	32300000	3	345	Ringvegen 60	2066	JESSHEIM	Postboks 475	2066	Jessheim	jessheimvgs@viken.no	63927800	viken.no/jessheim-vgs	ea2811d7-d376-48fb-b399-799c9b5e2118	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:24:33+01	\N	Offentlig	30	Ja	3033	63
365	VideregåendeSkole	0101000020DB0B0000F53A49D2D0D25141BE686F4305D15341	Ishavsbyen videregående skole	1025986	915553354	11	13	postmottak@tffk.no	Troms og Finnmark fylkeskommune	922420866	\N	\N	197	Breiviklia 1	9019	TROMSØ	Postboks 3374 Stakkevollan	9019	Tromsø	ishavsbyen.vgs@tffk.no	77788800	www.ishavsbyen.vgs.no/	ea252e8b-d89c-4c3d-ab53-92e7324ac8ae	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:26:07+01	\N	Offentlig	54	Ja	5401	63
366	VideregåendeSkole	0101000020DB0B00000C7F1B804A0E4F41432048F1B1724E41	International School Of Stavanger	1004749	974180693	1	13	information@isstavanger.no	International School Of Stavanger	960496671	51554300	358	129	Treskeveien 3	4043	HAFRSFJORD	Postboks 1003 SUNDE	4043	Hafrsfjord	information@isstavanger.no	51554300	www.isstavanger.no	d63d9613-74b1-4bbd-b664-9a3b59a75842	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:52:19+01	\N	Privat	11	Ja	1103	63
367	VideregåendeSkole	0101000020DB0B0000A47465EACDB9504172EA8D4BB4485141	Inderøy videregående skole	1005034	974560798	11	13	postmottak@trondelagfylke.no	Trøndelag fylkeskommune	817920632	\N	\N	87	Vennalivegen 15	7670	INDERØY	\N	7670	Inderøy	postmottak.inderoyvgs@trondelagfylke.no	74174700	inderoy.vgs.no/	3865714e-dcc8-41f1-b757-01bf55d63062	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:37:43+01	\N	Offentlig	50	Ja	5053	63
368	VideregåendeSkole	0101000020DB0B000021D65934E95A4F412628AD443E2E5041	Høyanger vidaregåande skule	1005160	974571080	11	13	post@vlfk.no	Vestland fylkeskommune	821311632	5557	\N	33	Einar Førdes veg 1	6993	HØYANGER	\N	6993	\N	posthoyv@vlfk.no	\N	www.hoyanger.vgs.no/	59c0a566-b0f1-4c7a-9539-10250c47d6f4	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:38:11+01	\N	Offentlig	46	Ja	4638	63
369	VideregåendeSkole	0101000020DB0B00001C0A553D9F8950416C32B9C5C6694F41	Hønefoss videregående skole	1005721	974605929	11	13	post@viken.no	Viken fylkeskommune	921693230	32300000	\N	186	Osloveien 17	3511	HØNEFOSS	Postboks 3084	3511	Hønefoss	honefossvgs@viken.no	32171300	viken.no/honefoss-vgs	086804d7-3591-4979-b526-ceb1f217b9b3	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:56:07+01	\N	Offentlig	30	Ja	3007	63
370	VideregåendeSkole	0101000020DB0B00005EAC6E90BE014F4194440C2461AA4F41	Hyssingen produksjonsskole	1012292	913555759	11	13	post@vlfk.no	Vestland fylkeskommune	821311632	5557	\N	13	Møllendalsveien 65B	5009	BERGEN	Postboks 7900	5009	Bergen	\N	\N	\N	8a4ea0e8-2c8b-4519-afa4-581e7746604c	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-10-12 10:36:43+02	\N	Offentlig	46	Ja	4601	63
371	VideregåendeSkole	0101000020DB0B0000A6C74A7CA2C650417DC627E5C65F4F41	Hvam videregående skole	1005396	974587807	11	13	post@viken.no	Viken fylkeskommune	921693230	32300000	\N	210	Hvamsalléen 30	2165	HVAM	\N	2165	Hvam	hvamvgs@viken.no	63912100	viken.no/hvam-vgs	ea2f23c7-dba3-47bd-8fb1-7dee308c538b	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:24:48+01	\N	Offentlig	30	Ja	3034	63
372	VideregåendeSkole	0101000020DB0B0000029EF8F12DDB4F41FDF4778447DC5041	Hustadvika vidaregåande skole	1005273	974576708	11	13	post@mrfylke.no	Møre og Romsdal fylkeskommune	944183779	71258000	\N	104	Bøen 22	6440	ELNESVÅGEN	\N	6440	\N	frana.vgs@mrfylke.no	71283700	www.frana.vgs.no	13d3accf-5004-4477-b207-7d09fab27ebc	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:39:50+01	\N	Offentlig	15	Ja	1579	63
373	VideregåendeSkole	0101000020DB0B0000495EFD91A29650411FB8949FE7C94E41	Horten videregående skole avd Bekkegata	1005232	974574985	11	13	\N	\N	\N	\N	\N	200	Bekkegata 2	3181	HORTEN	Postboks 365	3181	Horten	horten.vgs@vfk.no	33079000	www.horten.vgs.no	96694c41-8cbb-4b3b-8b61-e3c2597b26e4	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2020-04-02 16:01:26+02	\N	Offentlig	07	Nei	0701	63
374	VideregåendeSkole	0101000020DB0B00007BBF5089DA965041FC0FAAFF28CA4E41	Horten videregående skole	1028326	923261354	11	13	post@vtfk.no	Vestfold og Telemark fylkeskommune	821227062	35917000	1060	242	Strandpromenaden 33	3183	HORTEN	Postboks 2844	3183	Skien	horten.vgs@vtfk.no	33079000	www.vfk.no/Horten-vgs/	e44f1a38-e6fb-4364-b099-881e8866a2c9	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:47:43+01	\N	Offentlig	38	Ja	3801	63
375	VideregåendeSkole	0101000020DB0B0000186E9A890BBC5041B5C7D3F2CF694F41	Hoppensprett Akademiet Vgs Jessheim AS	1012241	913459598	11	13	\N	Hoppensprett Akademiet Vgs Jessheim AS	913332482	\N	31	25	Industrivegen 34	2069	JESSHEIM	\N	2069	\N	\N	\N	\N	21977f48-3b4c-433a-a982-c7c33b5c6680	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-10-12 10:42:21+02	\N	Privat	30	Ja	3033	63
376	VideregåendeSkole	0101000020DB0B000064A64EFA09F54E41349D982130BE4F41	Hop videregående skole AS	1004766	974312441	11	13	post@hopvgskole.no	Hop videregående skole AS	992232137	56157800	\N	30	Haugane 9	5307	ASK	\N	5307	\N	post@hopvgskole.no	56157800	www.hopvgskole.no	5273ddb7-c68a-4340-a0d3-a765770e7af3	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:52:24+01	\N	Privat	46	Ja	4627	63
377	VideregåendeSkole	0101000020DB0B0000F1E78F0ACBA650410E1746094E2F4F41	Holtet videregående skole	1005532	974590905	11	13	postmottak@oslo.kommune.no	Oslo kommune	958935420	2180	49	90	Ekebergveien 124	1178	OSLO	Postboks 6127 Etterstad	1178	Oslo	postmottak@ude.oslo.kommune.no	23165170	holtet.vgs.no	445c9c01-9d18-44cc-9686-5693919d0e77	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:16:50+01	\N	Offentlig	03	Ja	0301	63
378	VideregåendeSkole	0101000020DB0B000015F927710F8C5041FCE3CBE85FD74E41	Holmestrand videregående skole	1003492	874575062	11	13	post@vtfk.no	Vestfold og Telemark fylkeskommune	821227062	35917000	\N	79	Botne kirkevei 17	3085	HOLMESTRAND	Postboks 2844	3085	Skien	postmottak.holmestrandvgs@vtfk.no	33066350	hsvs.vtfk.no/	900cb85a-e766-4b12-99da-458a1f478c15	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-10-12 10:38:19+02	\N	Offentlig	38	Ja	3802	63
379	VideregåendeSkole	0101000020DB0B000075EFE6AB769650414FD8CECDC62A4F41	Holmen skole	1004326	973616870	8	13	post@viken.no	Viken fylkeskommune	921693230	32300000	14	44	Billingstadsletta 91	1396	BILLINGSTAD	Postboks 34	1396	Nesbru	holmenvgs@viken.no	66855300	viken.no/holmen-vgs	0f13dc20-c074-4288-9dc0-838d3d28f946	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:22:05+01	\N	Offentlig	30	Ja	3025	63
380	VideregåendeSkole	0101000020DB0B000062071CA480EC4E419E401F9459D74E41	Hollenderhaugen skolesenter	1008854	982378494	11	13	firmapost@rogfk.no	Rogaland fylkeskommune	971045698	51516600	\N	31	Karmsundgata 51	5531	HAUGESUND	Postboks 4123	5531	Haugesund	hollenderhaugen-vgs@skole.rogfk.no	52804340	www.hollenderhaugen.no/	3713b0bc-8149-42a8-a1f6-d9ee91e08a04	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-08-16 10:37:46+02	\N	Offentlig	11	Ja	1106	63
381	VideregåendeSkole	0101000020DB0B0000F40157CC286550412ECFFA7014974E41	Hjalmar Johansen videregående skole	1005128	974568071	11	13	post@vtfk.no	Vestfold og Telemark fylkeskommune	821227062	35917000	\N	152	Moflatvegen 38	3733	SKIEN	Postboks 2844	3733	Skien	hjalmarjohansen.vgs@vtfk.no	35918300	www.hjalmarjohansen.vgs.no	dde5db92-05b1-4afc-a512-6a6d82974a88	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:53:51+01	\N	Offentlig	38	Ja	3807	63
382	VideregåendeSkole	0101000020DB0B000003D5A4AA6B174F4156FFD80AB76E4E41	Hetland videregående skole	1005940	974624370	11	13	firmapost@rogfk.no	Rogaland fylkeskommune	971045698	51516600	600	92	Breidablikkveien 16	4017	STAVANGER	\N	4017	\N	hetland-vgs@skole.rogfk.no	51921400	www.hetland.vgs.no	0d2f4099-6d0e-4a2a-842f-aac5e2cf6f68	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-09-13 10:26:46+02	\N	Offentlig	11	Ja	1103	63
383	VideregåendeSkole	0101000020DB0B0000B69A68EE693C4F41A499E8EFE4A75041	Herøy vidaregåande skule	1005258	974576481	11	13	post@mrfylke.no	Møre og Romsdal fylkeskommune	944183779	71258000	\N	78	Lisjebøvegen 4	6091	FOSNAVÅG	\N	6091	\N	heroy.vgs@mrfylke.no	71281800	www.heroy.vgs.no/	ad4b59bb-73f6-4832-aabd-a77816f67015	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:39:49+01	\N	Offentlig	15	Ja	1515	63
384	VideregåendeSkole	0101000020DB0B0000DA43A48891A55041AD38E1135F364F41	Hersleb videregående skole	1011790	912001008	11	13	postmottak@oslo.kommune.no	Oslo kommune	958935420	2180	75	145	Herslebs gate 20B	0561	OSLO	Postboks 6127 Etterstad	0561	Oslo	postmottak@ude.oslo.kommune.no	23464100	hersleb.vgs.no	08ee721c-6e75-45fc-80a2-cc4523def03d	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:16:56+01	\N	Offentlig	03	Ja	0301	63
385	VideregåendeSkole	0101000020DB0B0000DE87CDE7CCA35041387560790E3D4F41	Heltberg private gymnas	1004759	974192020	11	13	ullevaal@akademiet.no	Stiftelsen Heltberg	958295774	22021140	\N	59	Sognsveien 75B	0855	OSLO	\N	0855	\N	ullevaal@akademiet.no	22476052	www.heltberg.no/	ff359509-41cd-4da9-ba37-037198ded46c	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-10-12 11:08:33+02	\N	Privat	03	Ja	0301	63
386	VideregåendeSkole	0101000020DB0B0000B6FE35C79DB650410ABF893A56F14F41	Helsepedagogisk steinerskole på Hedemarken	1004355	973670646	1	13	hedemarken@steinerskolen.no	Stiftelsen steinerskolen på Hedemarken	971533110	62588900	18	28	Rudolf Steiners veg 26	2312	OTTESTAD	Postboks 100	2312	Ottestad	hps.hedemarken@steinerskolen.no	62588904	www.hedemarken.steinerskolen.no	fcc0e396-f33e-4ed1-bb3e-d8e19734cf6b	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-08-16 10:25:20+02	\N	Privat	34	Ja	3413	63
387	VideregåendeSkole	0101000020DB0B000004818B81BEA950412E5712AAA7354F41	Hellerud videregående skole	1005536	974590956	11	13	postmottak@oslo.kommune.no	Oslo kommune	958935420	2180	\N	158	Wilhelm Stenersens vei 6	0671	OSLO	Postboks 6127 Etterstad	0671	Oslo	postmottak@ude.oslo.kommune.no	22760500	hellerud.vgs.no	ae861d3d-daa8-4b02-89ac-3098474cb6b1	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:16:50+01	\N	Offentlig	03	Ja	0301	63
388	VideregåendeSkole	0101000020DB0B0000FD2657F5068D5041869228CCB3105141	Heimdal videregående skole	1004981	974557991	11	13	postmottak@trondelagfylke.no	Trøndelag fylkeskommune	817920632	\N	\N	184	Blisterhaugvegen 15	7078	SAUPSTAD	Postboks 9623 Saupstad	7078	Trondheim	postmottak.heimdalvgs@trondelagfylke.no	74174500	www.heimdal.vgs.no	3c6450d6-2c1a-49cc-80ec-dee59fd1a01a	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:37:43+01	\N	Offentlig	50	Ja	5001	63
389	VideregåendeSkole	0101000020DB0B0000DFEE19017A7F5141ACBC3C197B675341	Heggen videregående skole	1004824	974546671	11	13	postmottak@tffk.no	Troms og Finnmark fylkeskommune	922420866	\N	\N	109	St Olavs gate 91	9406	HARSTAD	Postboks 504	9406	Harstad	heggen@tffk.no	77787100	www.heggen.vgs.no	8f852019-95b1-4ab8-bf19-bd234cb29c9d	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:26:06+01	\N	Offentlig	54	Ja	5402	63
390	VideregåendeSkole	0101000020DB0B00004F6DDB33950E5141CAC791F56B175341	Havbruksakademiet Nord AS	1028568	924480831	11	13	post@havbruksakademietnord.no	Havbruksakademiet Nord AS	924452625	76060940	\N	4	Storeidøya 60	8370	LEKNES	c/o Nordly Holding AS Storeidøya 60	8370	Leknes	post@havbruksakademietnord.no	76060940	havbruksakademietnord.no	fbc2ee1d-df97-441b-aec4-f317af0a1e1e	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-09-13 10:46:18+02	\N	Privat	18	Ja	1860	63
391	VideregåendeSkole	0101000020DB0B0000040A8C89F5AA50413C73BB379E374F41	Haukåsen skole	1005511	974590670	1	13	postmottak@oslo.kommune.no	Oslo kommune	958935420	2180	67	101	Dr. Dedichens vei 20	0675	OSLO	Postboks 6127 Etterstad	0675	Oslo	postmottak@ude.oslo.kommune.no	23466500	haukasen.osloskolen.no/	85062be3-9c4e-4137-ae0c-27f0cf3b1a41	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:16:48+01	\N	Offentlig	03	Ja	0301	63
392	VideregåendeSkole	0101000020DB0B000040166B42CEEA4E41E4C5E1F67DDC4E41	Haugesund Toppidrettsgymnas AS	1004024	971816287	8	13	adm@htg.vgs.no	Haugesund Toppidrettsgymnas AS	952217593	52223200	54	64	Hanne Kroghs veg 6	5518	HAUGESUND	\N	5518	\N	adm@htg.vgs.no	52223200	www.htg.vgs.no	c753df4c-1fcd-4088-8098-b4b6493689d1	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:48:57+01	\N	Privat	11	Ja	1106	63
393	VideregåendeSkole	0101000020DB0B000047009A6469EB4E417E0DA6C501D74E41	Haugesund Maritime Tekniske videregående skole	1005957	974624575	11	13	\N	\N	\N	\N	\N	69	Salhusvegen 68	5529	HAUGESUND	Postboks 2048	5529	Haugesund	Haugesund-vgs@rfk.rogaland-f.kommune.no	52702100	www.hmtvs.no/	9e0fd16f-43a5-4f48-9f8f-b9dd110115c6	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2021-01-12 09:24:03+01	\N	Offentlig	11	Nei	1106	63
394	VideregåendeSkole	0101000020DB0B0000D7D7F2C7B0E84E41EA5067C686D14E41	Hauge videregående skole	1026404	916612095	11	12	post@hauge-vgs.no	Hauge videregående skole AS	916513194	90232343	35	23	Haugevegen 40	4260	TORVASTAD	\N	4260	\N	post@hauge-vgs.no	90232343	www.hauge-vgs.no	41a601fa-4ca0-48a4-a0e7-ad540c929b3b	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:46:06+01	\N	Privat	11	Ja	1149	63
395	VideregåendeSkole	0101000020DB0B00007176115C6DEC4E4171AB1A79DAD84E41	Haugaland videregående skole	1005950	974624486	11	13	firmapost@rogfk.no	Rogaland fylkeskommune	971045698	51516600	850	186	Spannavegen 38	5531	HAUGESUND	\N	5531	\N	Haugaland-vgs@skole.rogfk.no	52865600	www.haugaland.vgs.no	41802956-8e89-4832-a065-a775309b4082	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:40:43+01	\N	Offentlig	11	Ja	1106	63
396	VideregåendeSkole	0101000020DB0B00006917A8846CA75041BE9B04D4E8354F41	Hartvig Nissens skole	1005531	974590891	11	13	postmottak@oslo.kommune.no	Oslo kommune	958935420	2180	\N	149	Grenseveien 95	0663	OSLO	Postboks 6127 Etterstad	0663	Oslo	postmottak@ude.oslo.kommune.no	23464800	hartvig-nissen.vgs.no	472b5bb5-c086-462c-83f5-ca2d9b7a3379	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:16:50+01	\N	Offentlig	03	Ja	0301	63
397	VideregåendeSkole	0101000020DB0B0000134FA0485BAD4F4161934200D2C84F41	Hardanger produksjonsskule	1004493	973923765	11	13	post@vlfk.no	Vestland fylkeskommune	821311632	5557	\N	18	Hjeltnesvegen 185	5730	ULVIK	\N	5730	\N	post.hgs@hfk.no	56538800	skole.hfk.no/hjeltnesvgs	88853c93-d773-482a-9d21-11e15f8a39cc	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-10-12 10:36:38+02	\N	Offentlig	46	Ja	4620	63
398	VideregåendeSkole	0101000020DB0B0000FC8BB66DE4904F41032E205DCDC15041	Haram vidaregåande skule	1005274	974576716	11	13	post@mrfylke.no	Møre og Romsdal fylkeskommune	944183779	71258000	\N	59	Skuleråsa 10	6270	BRATTVÅG	\N	6270	\N	haram.vgs@mrfylke.no	71281700	www.haram.vgs.no/	b938d440-a7d5-4625-8ef8-34a633246296	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:39:50+01	\N	Offentlig	15	Ja	1507	63
399	VideregåendeSkole	0101000020DB0B000048286EA731B05041ED08A426459D4E41	Hans Nielsen Hauge videregående skole	1012168	913279727	11	13	post@hnhvgs.no	Hans Nielsen Hauge videregående skole AS	985905061	\N	175	28	Nygaardsgata 33A	1606	FREDRIKSTAD	\N	1606	\N	post@hnhvgs.no	\N	hnh.vgs.no	9b777264-9b3f-4337-8c89-5ba20d5c5dbe	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:45:09+01	\N	Privat	30	Ja	3004	63
400	VideregåendeSkole	0101000020DB0B0000E34527FDAB6B5241159623EDD7565441	Hammerfest videregående skole	1003568	874622702	11	13	postmottak@tffk.no	Troms og Finnmark fylkeskommune	922420866	\N	\N	125	Meridiangata 10	9601	HAMMERFEST	Postboks 23	9601	Hammerfest	hammerfest.vgs@tffk.no	78428500	www.hammerfest.vgs.no	76e1c922-f77a-4fd5-9712-d28e527675ca	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:26:05+01	\N	Offentlig	54	Ja	5406	63
401	VideregåendeSkole	0101000020DB0B0000E0594503F2B35041B78ACDB965F74F41	Hamar katedralskole	1005176	974571919	11	13	\N	Innlandet fylkeskommune	920717152	\N	1250	229	Ringgata 235	2315	HAMAR	Postboks 4404	2315	Hamar	post.hamar.katedralskole@innlandetfylke.no	62544200	www.hamar-katedral.vgs.no/	fe315d71-ad33-45ba-89a6-c31ebaf8084b	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:17:13+01	\N	Offentlig	34	Ja	3403	63
402	VideregåendeSkole	0101000020DB0B00000AD9EC8ED7CA5041CDE786EBEF884E41	Halden videregående skole Avdeling Risum	1004799	974544571	11	13	\N	\N	\N	\N	\N	99	Iddeveien 37	1769	HALDEN	\N	1769	\N	halvgs@ostfold-f.kommune.no	69216600	www.halden.vgs.no	dab382ba-bb15-4ad2-93ce-284c18074352	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2020-03-14 01:15:07+01	\N	Offentlig	01	Nei	0101	63
403	VideregåendeSkole	0101000020DB0B00006647D897D3C7504116CAB478E38A4E41	Halden videregående skole Avdeling Christian August	1004789	974544458	11	13	\N	\N	\N	\N	\N	4	Remmen	1783	HALDEN	\N	1783	\N	halvgs@ostfold-f.kommune.no	69185611	www.halden.vgs.no	41b5e70f-d416-4020-8968-309211ba482f	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2020-03-14 00:39:31+01	\N	Offentlig	01	Nei	0101	63
404	VideregåendeSkole	0101000020DB0B0000940198CDDCC9504182B84EEB628B4E41	Halden videregående skole	1004798	974544563	11	13	post@viken.no	Viken fylkeskommune	921693230	32300000	1150	324	Porsnesbakken 12	1772	HALDEN	Postboks 604	1772	Halden	haldenvgs@viken.no	69216600	viken.no/halden-vgs	1cbda149-92da-4361-b1df-a6ea2e6bb9cf	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:52:45+01	\N	Offentlig	30	Ja	3001	63
405	VideregåendeSkole	0101000020DB0B00004C310D3800CA5041C9921F00C8894E41	Halden montessoriskole AS	1011188	998173108	1	13	info@hm-skole.no	Halden montessoriskole AS	998164346	\N	65	21	Generalveien 15	1769	HALDEN	\N	1769	\N	info@hm-skole.no	46860675	www.hm-skole.no	95dccf77-981c-4a6c-99a6-eefcd127e1b2	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-10-12 11:07:25+02	\N	Privat	30	Ja	3001	63
406	VideregåendeSkole	0101000020DB0B00003A86F13354474F419AF4B90776475041	Hafstad videregående skule	1005162	974571102	11	13	post@vlfk.no	Vestland fylkeskommune	821311632	5557	\N	71	Hafstadvegen 49	6800	FØRDE	Postboks 294	6800	Førde	postmottak.hafstadvgs@vlfk.no	57637500	www.hafstad.vgs.no/	716a7197-bc1c-4cef-86c7-09b2617c82bb	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:38:12+01	\N	Offentlig	46	Ja	4647	63
407	VideregåendeSkole	0101000020DB0B00002B634867414151418F935DF8BA495341	Hadsel videregående skole	1005889	974621037	11	13	post@nfk.no	Nordland fylkeskommune	964982953	75650000	480	153	V.D.Hals gate 10	8450	STOKMARKNES	Postboks 1485	8450	Bodø	post.hadsel@vgs.nfk.no	75655800	www.hadsel.vgs.no	e2fc9312-7094-4bd7-9583-5784b7b8a59e	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:17:31+01	\N	Offentlig	18	Ja	1866	63
408	VideregåendeSkole	0101000020DB0B00009293F95FE89A5041DC35094E0B954F41	Hadeland videregående skole	1011307	998513448	11	13	\N	Innlandet fylkeskommune	920717152	\N	\N	179	Skolelia 3	2750	GRAN	Innlandet fylkeskommune Postboks 4404 Bedriftssenteret	2750	Hamar	hadeland.vgs@innlandetfylke.no	61317700	www.hadeland.vgs.no	81299c65-4b0f-4b62-88c5-a13272aaeeea	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:17:14+01	\N	Offentlig	34	Ja	3446	63
409	VideregåendeSkole	0101000020DB0B0000387F43F41BE95041CFA71E5734895141	Grong videregående skole	1005033	974560771	11	13	postmottak@trondelagfylke.no	Trøndelag fylkeskommune	817920632	\N	300	101	Idrettsvegen 34	7870	GRONG	\N	7870	\N	postmottak.grongvgs@trondelagfylke.no	74174444	www.grong.vgs.no/	c5cda347-cc8b-4281-bccc-24cc438832d9	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:37:43+01	\N	Offentlig	50	Ja	5045	63
410	VideregåendeSkole	0101000020DB0B000098C2C37A17B550414204DAB351AB4E41	Greåker videregående skole	1004792	974544490	11	13	post@viken.no	Viken fylkeskommune	921693230	32300000	\N	193	Fortunaveien 16	1719	GREÅKER	Postboks 130	1719	Greåker	greakervgs@viken.no	69102000	viken.no/greaker-vgs	437faa06-9648-40c4-b6e7-8f253f7037d8	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:52:40+01	\N	Offentlig	30	Ja	3003	63
411	VideregåendeSkole	0101000020DB0B00000DAF725DE19250414BAADE381EAD4E41	Greveskogen videregående skole	1005233	974574993	11	13	post@vtfk.no	Vestfold og Telemark fylkeskommune	821227062	35917000	\N	224	Eikveien 2	3122	TØNSBERG	Postboks 2844	3122	Skien	greveskogen.vgs@vtfk.no	33016100	nyweb.vfk.no/skoler/greveskogen-vgs/	a360dc1c-9719-4c32-8d7e-88da24bfe5fb	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:54:25+01	\N	Offentlig	38	Ja	3803	63
412	VideregåendeSkole	0101000020DB0B000098E142A43943504144BB750408E14F41	Gol vidaregåande skule	1005735	974606194	11	13	post@viken.no	Viken fylkeskommune	921693230	32300000	\N	69	Gymnasvegen 27	3550	GOL	\N	3550	\N	golvgs@viken.no	31003200	viken.no/gol-vgs	cc489a70-8301-424f-bd24-1a2604e8a02b	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-10-12 10:53:44+02	\N	Offentlig	30	Ja	3041	63
413	VideregåendeSkole	0101000020DB0B0000BA0C803352194F41DA6F1E0AD6724E41	Godalen videregående skole	1005963	974624648	11	13	firmapost@rogfk.no	Rogaland fylkeskommune	971045698	51516600	900	184	Østre Ring 55	4015	STAVANGER	Postboks 1564 Kjelvene	4015	Stavanger	godalen-vgs@skole.rogfk.no	51923700	www.godalen.vgs.no	0869a374-43b1-4fb5-b662-96e71fde768c	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-10-12 10:39:04+02	\N	Offentlig	11	Ja	1103	63
414	VideregåendeSkole	0101000020DB0B000071C00BFB5CB05041F408AC31D69E4E41	Glemmen videregående skole	1004791	974544482	11	13	post@viken.no	Viken fylkeskommune	921693230	32300000	\N	327	Traraveien 13	1605	FREDRIKSTAD	\N	1605	\N	glemmenvgs@viken.no	69955600	viken.no/glemmen-vgs	e201a4d0-a638-4b77-8e27-6f80f276de76	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 10:19:36+01	\N	Offentlig	30	Ja	3004	63
415	VideregåendeSkole	0101000020DB0B0000EC4BF6EC66A15041E264EEF9A7EF4F41	Gjøvik videregående skole Bondelia	1005637	974597314	11	13	\N	\N	\N	\N	\N	4	Helgerudvegen 30	2816	GJØVIK	\N	2816	\N	\N	\N	\N	530a9af8-1330-4927-b0ce-f8d7dcce3478	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2021-01-12 09:22:03+01	\N	Offentlig	05	Nei	0502	99
416	VideregåendeSkole	0101000020DB0B0000CED5B09FE89F50410EE1A8B739F64F41	Gjøvik videregående skole	1005635	974597284	1	13	\N	Innlandet fylkeskommune	920717152	\N	\N	293	Ludvig Skattums gate 23	2819	GJØVIK	Postboks 4404	2819	Hamar	gjovik.vgs@innlandetfylke.no	61149400	www.gjovik.vgs.no/	23707eb1-1312-4566-b6fd-a3e0555edcfa	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:17:12+01	\N	Offentlig	34	Ja	3407	63
417	VideregåendeSkole	0101000020DB0B0000323F07ED27DA4F418DCFD57030C35041	Gjermundnes vidaregåande skule	1005256	974576449	11	13	post@mrfylke.no	Møre og Romsdal fylkeskommune	944183779	71258000	\N	86	Gjermundnesvegen 200	6392	VIKEBUKT	\N	6392	\N	gjermundnes.vgs@mrfylke.no	71282900	www.gjermundnes.vgs.no/	3a938dad-1d30-442d-adef-9bc18cd9ead4	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:39:49+01	\N	Offentlig	15	Ja	1535	63
418	VideregåendeSkole	0101000020DB0B00000A41D5CF088B50419E44657BABA04E41	Gjennestad videregående skole	1010039	990745277	11	13	post@gjennestadvgs.no	Gjennestad videregående skole	990695628	33363600	\N	31	Gjennestadtunet 10	3160	STOKKE	\N	3160	\N	post@gjennestadvgs.no	33363600	www.gjennestadvgs.no	a00ae97a-5896-4718-96fe-31ec283fcc82	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-10-12 11:06:02+02	\N	Privat	38	Ja	3804	63
419	VideregåendeSkole	0101000020DB0B000035DDFE27F28650413351A882BB285041	Gausdal videregående skole	1005628	974597195	11	13	\N	Innlandet fylkeskommune	920717152	\N	275	60	Baklivegen 1477	2651	ØSTRE GAUSDAL	Postboks 4404	2651	Hamar	gausdal.vgs@innlandetfylke.no	61224200	www.gausdal.vgs.no/	3d29bd53-c32e-470a-9cc4-1548ab211655	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-10-12 10:20:54+02	\N	Offentlig	34	Ja	3441	63
420	VideregåendeSkole	0101000020DB0B0000DAD80C1C008A5041054F4F4C13ED5041	Gauldal videregående skole	1004980	974557983	11	13	postmottak@trondelagfylke.no	Trøndelag fylkeskommune	817920632	\N	330	65	Basmoen 7	7290	STØREN	Postboks 115	7290	Støren	postmottak.gauldalvgs@trondelagfylke.no	74174400	www.gauldal.vgs.no	11b49eaa-8055-4cae-9f73-2d4925cc2ae2	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-10-12 10:36:10+02	\N	Offentlig	50	Ja	5027	63
421	VideregåendeSkole	0101000020DB0B00001A3C1C4406925041C5972C3244AA4E41	Færder videregående skole avd Korten	1005243	974575132	11	13	\N	\N	\N	\N	\N	49	Nordbyen 40	3111	TØNSBERG	Postboks 445	3111	Tønsberg	tmvs@vfk.no	33314177	www.tmvs.vgs.no	e3ca9d2a-9f1d-44dd-952c-0ce5e920e9e2	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2020-04-02 16:01:25+02	\N	Offentlig	07	Nei	0704	63
422	VideregåendeSkole	0101000020DB0B0000B80F8755A39250414164D5DB6CA74E41	Færder videregående skole	1005239	974575086	11	13	post@vtfk.no	Vestfold og Telemark fylkeskommune	821227062	35917000	\N	159	Banebakken 44	3127	TØNSBERG	Postboks 2844	3127	Skien	ferder.vgs@vtfk.no	33309600	ferdervgs.vtfk.no/	b2c06784-b7da-4608-9a24-e1e1dda0dc9a	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 10:19:43+01	\N	Offentlig	38	Ja	3803	63
423	VideregåendeSkole	0101000020DB0B0000B3F22A315E925041B23A925A77A94E41	Færder videregående skole	1010176	992021551	11	13	firmapost@vestfold-f.kommune.no	Vestfold fylkeskommune	944025391	33344000	\N	\N	Baglergaten 16	3111	TØNSBERG	Postboks 43	3111	Tønsberg	ferder.vgs@vfk.no	\N	\N	847da018-8d8e-4a7f-b22f-c1391660d5fb	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2020-04-02 16:01:25+02	\N	Offentlig	07	Nei	0704	63
424	VideregåendeSkole	0101000020DB0B000009F4D0203BA750418E1736F5C8354F41	Fyrstikkalleen skole	1010451	995821664	8	13	postmottak@oslo.kommune.no	Oslo kommune	958935420	2180	374	217	Fyrstikkalléen 21	0661	OSLO	Postboks 6127 Etterstad	0661	Oslo	postmottak@ude.oslo.kommune.no	23463700	f21.vgs.no	b89f24bc-8e77-4493-a2a9-6b3a05a69b58	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:16:55+01	\N	Offentlig	03	Ja	0301	63
425	VideregåendeSkole	0101000020DB0B000089BDB9EB48FA4E41D9F7D90D08A44F41	Fyllingsdalen videregående skole	1004962	974557584	11	13	post@vlfk.no	Vestland fylkeskommune	821311632	5557	\N	114	Shetlands-Larsens vei 23	5143	FYLLINGSDALEN	\N	5143	\N	post.fyv@vlfk.no	55156300	skole.hfk.no/fyllingsdalenvgs	57497f2c-0507-440b-8828-46f73765da9a	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:38:13+01	\N	Offentlig	46	Ja	4601	63
426	VideregåendeSkole	0101000020DB0B000079FD9F9B892A4F417041A56561894F41	Fusa vidaregåande skule	1003462	874557552	11	13	post@vlfk.no	Vestland fylkeskommune	821311632	5557	\N	63	Leiro 43	5640	EIKELANDSOSEN	Postboks 113	5640	Eikelandsosen	post.fuv@vlfk.no	56580900	skole.hfk.no/fusavgs	c65641b2-411f-48de-a599-a905f6c2588e	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-10-12 10:36:42+02	\N	Offentlig	46	Ja	4624	63
427	VideregåendeSkole	0101000020DB0B0000AE315BF124A0504112CC07B443054F41	Frogn videregående skole	1009814	988843709	11	13	post@viken.no	Viken fylkeskommune	921693230	32300000	\N	120	Holtbråtveien 51	1449	DRØBAK	\N	1449	\N	frognvgs@viken.no	64937500	viken.no/frogn-vgs	3a3cdad8-b8f3-4db9-8e55-b9056a5491d4	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:37:09+01	\N	Offentlig	30	Ja	3022	63
428	VideregåendeSkole	0101000020DB0B0000FD107374422A504100A4118E3DE34D41	Frivoll videregående skole	1005221	974573962	11	13	\N	\N	\N	\N	\N	29	Dybedalsveien 11	4877	GRIMSTAD	\N	4877	\N	frivoll@frivoll.vgs.no	37257100	www.frivoll.vgs.no/	f3661608-9ab0-4e56-9f05-e777df2a58a2	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2020-03-14 01:14:12+01	\N	Offentlig	09	Nei	0904	63
429	VideregåendeSkole	0101000020DB0B000069CADF5974AF5041069BA616D59F4E41	Frederik Ii videregående skole	1004790	974544466	11	13	post@viken.no	Viken fylkeskommune	921693230	32300000	\N	214	Merkurveien 2	1613	FREDRIKSTAD	Postboks 523	1613	Fredrikstad	frederikiivgs@viken.no	69366400	viken.no/frederikii-vgs	853e1724-0b10-46b9-94de-b446d4da1f66	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:52:39+01	\N	Offentlig	30	Ja	3004	63
430	VideregåendeSkole	0101000020DB0B00007051116B0F5B4F41AA215746B69E4F41	Framnes Kristne vidaregåande skule	1004687	974117959	11	13	postmottak@framnes.vgs.no	Framnes Kristne vidaregåande skule	976793773	56550500	270	96	Vikøyvegen 280	5600	NORHEIMSUND	\N	5600	\N	postmottak@framnes.vgs.no	56550500	www.framnes.vgs.no	fe7d2efd-5a70-47fa-8156-fa8aa0223b5a	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:22:54+01	\N	Privat	46	Ja	4622	63
431	VideregåendeSkole	0101000020DB0B0000C399D23516A55041F5A89DE94B384F41	Foss videregående skole	1005528	974590867	11	13	postmottak@oslo.kommune.no	Oslo kommune	958935420	2180	\N	184	Steenstrups gate 20	0554	OSLO	Postboks 6127 Etterstad	0554	Oslo	postmottak@ude.oslo.kommune.no	23226770	foss.vgs.no	9d8d3649-ff08-4572-b739-747da6bd6e6b	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:16:49+01	\N	Offentlig	03	Ja	0301	63
432	VideregåendeSkole	0101000020DB0B0000647C2173D26A5041E5099DD73B335141	Fosen videregående skole avd Brekstad	1004992	974558149	11	13	\N	\N	\N	\N	\N	59	Skolegata	7130	BREKSTAD	\N	7130	\N	\N	72513150	www.fosen.vgs.no/	763d11df-02da-424a-99e6-72ae854b06d9	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2020-03-14 01:25:52+01	\N	Offentlig	16	Nei	1621	63
433	VideregåendeSkole	0101000020DB0B000077231461F9725041C9BE63D5103C5141	Fosen videregående skole	1004979	974557975	11	13	postmottak@trondelagfylke.no	Trøndelag fylkeskommune	817920632	\N	340	81	Alf Nebbs gate 14	7160	BJUGN	\N	7160	\N	postmottak.fosenvgs@trondelagfylke.no	74174200	www.fosen.vgs.no	32626734-0382-491e-86a4-b51da73324ce	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:37:42+01	\N	Offentlig	50	Ja	5057	63
434	VideregåendeSkole	0101000020DB0B0000CA14053881A9504132BB67EB6E3B4F41	Forsøksgymnaset i Oslo	1006285	975079686	11	13	\N	\N	\N	\N	\N	19	Statsråd Mathiesens Vei 25	0594	OSLO	Statsråd Mathiesens vei 25	0594	Oslo	\N	22647644	www.forsok.vgs.no	23748d95-0189-422d-95b6-0e1a71d1ba87	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2021-01-12 09:17:36+01	\N	Offentlig	03	Nei	0301	63
435	VideregåendeSkole	0101000020DB0B00003CBCE89A11F44E41786BE657CC595041	Flora vidaregåande skule	1005166	974571145	11	13	post@vlfk.no	Vestland fylkeskommune	821311632	5557	530	92	Professor Gjelsvikveg 22	6906	FLORØ	Postboks 127	6906	Florø	postmottak.floravgs@vlfk.no	57637600	www.flora.vgs.no	ce93c012-c67b-4011-8bad-b5ce52a1d6a7	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:38:11+01	\N	Offentlig	46	Ja	4602	63
436	VideregåendeSkole	0101000020DB0B0000E1C39D26B49A4F414A253C6058E14D41	Flekkefjord videregående skole	1005602	974595095	11	13	postmottak@agderfk.no	Agder fylkeskommune	921707134	38050000	\N	25	Farvegen 30	4480	KVINESDAL	Postboks 788 Stoa	4480	Arendal	kontakt@flekkefjord.vgs.no	38609100	flekkefjord.vgs.no	294f372a-2404-43f1-9b2a-4ae94169b110	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:25:12+01	\N	Offentlig	42	Ja	4227	63
437	VideregåendeSkole	0101000020DB0B000004025F2B23794F41167A8D6C6AE04D41	Flekkefjord videregående skole	1005606	974595141	11	13	postmottak@agderfk.no	Agder fylkeskommune	921707134	38050000	\N	118	Tunveien 50	4405	FLEKKEFJORD	Postboks 788 Stoa	4405	Arendal	kontakt@flekkefjord.vgs.no	38609100	flekkefjord.vgs.no	2b09c50e-4438-4f01-b844-48ae061b390f	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:55:43+01	\N	Offentlig	42	Ja	4207	63
438	VideregåendeSkole	0101000020DB0B0000E1A489828BD15141F642C56E65CC5341	Fjellheim bibelskole	1003439	874137472	11	13	post@fjellheimbibelskole.no	Fjellheim bibelskole AS	988982938	77755560	\N	29	Mellomvegen 96	9006	TROMSØ	\N	9006	\N	post@fjellheimbibelskole.no	77755560	www.fjellheimbibelskole.no	cacac6c4-d7b7-4298-b2d3-56ceb6f37803	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:39:10+01	\N	Privat	54	Ja	5401	63
439	VideregåendeSkole	0101000020DB0B0000E05DC5C06AF74E41C1E3C16648474F41	Fitjar vidaregåande skule	1004967	974557630	11	13	post@vlfk.no	Vestland fylkeskommune	821311632	5557	\N	33	Havnavegen 2	5419	FITJAR	Postboks 44	5419	Fitjar	post.fiv@vlfk.no	53457800	\N	3daca378-81e1-433e-84dc-b1adbfd51fdc	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:38:11+01	\N	Offentlig	46	Ja	4615	63
440	VideregåendeSkole	0101000020DB0B000023A02D8785704F4106EE3BFD7E695041	Firda vidaregåande skule	1005168	974571161	11	13	post@vlfk.no	Vestland fylkeskommune	821311632	5557	\N	74	Firdavegen 21	6823	SANDANE	\N	6823	\N	post.fir@vlfk.no	57638500	firda.vgs.no/	67cf12cf-5b9e-411e-a101-9432d1d437e6	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:38:13+01	\N	Offentlig	46	Ja	4650	63
441	VideregåendeSkole	0101000020DB0B00003A03379318A4504144FDF0F744364F41	Filadelfia bibelskole	1009737	988421006	11	13	bibelskolen@filadelfia.no	Filadelfia bibelskole	974950960	\N	\N	7	St. Olavs gate 24	0166	OSLO	\N	0166	\N	bibelskolen@filadelfia.no	\N	www.fbo.no	0d579687-a807-42fe-b9bc-895ebb12c668	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:37:05+01	\N	Privat	03	Ja	0301	63
442	VideregåendeSkole	0101000020DB0B000038CD9C9B81BA5041A0A799B860B04F41	Feiring videregående skole AS	1026792	917854912	11	13	firmapost@feiring.vgs.no	Feiring videregående skole AS	917790337	\N	\N	\N	Årnesvegen 25	2093	FEIRING	Korsnesvegen 70	2093	Fana	\N	\N	\N	d730db2a-700e-4bb2-a665-6bd16c06e0ff	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2021-01-12 09:18:12+01	\N	Privat	02	Nei	0237	63
443	VideregåendeSkole	0101000020DB0B000038CD9C9B81BA5041A0A799B860B04F41	Feiring videregående skole AS	1028817	825322922	11	13	firmapost@feiring.vgs.no	Feiring videregående skole AS	917790337	\N	192	62	Årnesvegen 25	2093	FEIRING	\N	2093	\N	firmapost@feiring.vgs.no	\N	www.feiring-vgs.no	9e52da5d-552f-4304-98d3-53e93583d2cd	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:38:26+01	\N	Privat	30	Ja	3035	63
444	VideregåendeSkole	0101000020DB0B0000F0D6E05B0B6051415C78EE19EEBE5241	Fauske videregående skole	1005907	974621290	11	13	post@nfk.no	Nordland fylkeskommune	964982953	75650000	\N	125	Gymnasveien 5	8207	FAUSKE	Postboks 1485	8207	Bodø	post.fauske@vgs.nfk.no	75652000	www.fauske.vgs.no	28c77fd7-57b7-424d-b1bc-10abcff5ae19	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:17:32+01	\N	Offentlig	18	Ja	1841	63
445	VideregåendeSkole	0101000020DB0B000010A5FE94EDFE4E410FDC62B7F78F4F41	Fanastøl skole	1004922	974556715	11	13	\N	\N	\N	\N	\N	\N	Fanastølen 18	5244	FANA	\N	5244	\N	\N	\N	\N	c79adc55-75bc-474f-8e03-e262103addfc	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-04-20 10:18:04+02	\N	Offentlig	12	Nei	1201	63
446	VideregåendeSkole	0101000020DB0B00008CA495A50EFD4E41A8AB5931DFAE4F41	Fagskulen Vestland	1004958	974557525	11	13	post@vlfk.no	Vestland fylkeskommune	821311632	5557	\N	125	Haugeveien 28	5005	BERGEN	Postboks 1876 Nordnes	5005	Bergen	post.btf@hfk.no	55337800	www.tekniken.no	8ed4f79a-9aed-4786-bbca-2394e3e21f93	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:38:12+01	\N	Offentlig	46	Ja	4601	63
447	VideregåendeSkole	0101000020DB0B00006043D48623174F41F21558D860754E41	Fagopplæringen i Rogaland	1012454	814245012	11	13	firmapost@rogfk.no	Rogaland fylkeskommune	971045698	51516600	\N	\N	Arkitekt Eckhoffs gate 1	4010	STAVANGER	Postboks 130  Sentrum	4010	Stavanger	\N	\N	\N	8a973b0d-d433-4b51-8459-67b6f69657bf	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-03-16 09:38:13+01	\N	Offentlig	11	Ja	1103	63
448	VideregåendeSkole	0101000020DB0B00007F959EE4027A4F41CAB0D9FC4BB55041	Fagerlia - Ålesund videregående skole	1005259	974576503	11	13	post@mrfylke.no	Møre og Romsdal fylkeskommune	944183779	71258000	\N	196	Gangstøvikvegen 27	6009	ÅLESUND	\N	6009	\N	fagerlia.vgs@mrfylke.no	71281500	www.fagerlia.vgs.no/	535bb4ab-54f7-410d-8ad7-413280932368	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:39:49+01	\N	Offentlig	15	Ja	1507	63
449	VideregåendeSkole	0101000020DB0B000029C60C97DDA85041C6CFA3BF18D44E41	Evangeliesenterets bibelskole	1006292	975212491	11	13	post@ebsbibelskole.no	Evangeliesenterets bibelskole	974974770	69287505	\N	16	Våkveien 24	1591	SPERREBOTN	\N	1591	\N	post@ebsbibelskole.no	69287505	www.ebsbibelskole.no	b04fcb5a-dfc2-41ee-ab22-c8f6f6b3651f	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-06-16 10:34:28+02	\N	Privat	30	Ja	3018	63
450	VideregåendeSkole	0101000020DB0B0000B789C4B75AA75041DEFBEADE93344F41	Etterstad videregående skole	1005542	974591022	11	13	postmottak@oslo.kommune.no	Oslo kommune	958935420	2180	\N	143	Etterstadsletta 5	0660	OSLO	Postboks 6127 Etterstad	0660	Oslo	postmottak@ude.oslo.kommune.no	22575500	etterstad.vgs.no	c0d3af5e-d4f6-4704-b02c-e8ff814e96e2	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-10-12 10:19:46+02	\N	Offentlig	03	Ja	0301	63
451	VideregåendeSkole	0101000020DB0B00003102CED4E8CE5041F823681AEB035041	Elverum videregående skole	1005175	974571900	11	13	\N	Innlandet fylkeskommune	920717152	\N	1000	195	Kirkevegen 1	2414	ELVERUM	Postboks 4404	2414	Hamar	post.elverum.vgs@innlandetfylke.no	62431500	www.elverum.vgs.no/	fc54125b-9e1b-428e-901b-af16361ead82	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:17:13+01	\N	Offentlig	34	Ja	3420	63
452	VideregåendeSkole	0101000020DB0B000093CB686CF5A45041624AAE678C364F41	Elvebakken videregående skole	1005540	974590999	11	13	postmottak@oslo.kommune.no	Oslo kommune	958935420	2180	\N	256	Vestre Elvebakke 3	0182	OSLO	Postboks 6127 Etterstad	0182	Oslo	postmottak@ude.oslo.kommune.no	23467300	elvebakken.vgs.no	09a61581-c558-4465-8757-bfabb2a2c692	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:16:50+01	\N	Offentlig	03	Ja	0301	63
453	VideregåendeSkole	0101000020DB0B0000D3FC0FD5380850410764BA1A7CB94D41	Eksamenskontoret i Agder fylkeskommune	1029288	999324789	11	13	postmottak@agderfk.no	Agder fylkeskommune	921707134	38050000	\N	71	Tordenskjolds gate 65	4614	KRISTIANSAND S	Postboks 788  Stoa	4614	Arendal	\N	38077400	\N	fd5a8ad4-cdb6-4892-92a5-7893764d8bd4	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2021-09-07 10:18:53+02	\N	Offentlig	42	Ja	4204	63
454	VideregåendeSkole	0101000020DB0B0000A8DFA315F3864F411FB05599EDB14D41	Eilert Sundt videregående skole	1003532	874595012	11	13	postmottak@agderfk.no	Agder fylkeskommune	921707134	38050000	\N	37	Skoleplassen 1	4550	FARSUND	Postboks 788 Stoa	4550	Arendal	kontakt@eilertsundt.vgs.no	38609200	eilertsundt.vgs.no	287af29f-3f3d-4e6d-a855-cca7e03b79f2	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:17:20+01	\N	Offentlig	42	Ja	4206	63
455	VideregåendeSkole	0101000020DB0B0000209203CB9A794F4174D8293D9CB24D41	Eilert Sundt videregående skole	1005605	974595133	11	13	postmottak@agderfk.no	Agder fylkeskommune	921707134	38050000	\N	39	Tingvollen 4	4560	VANSE	Postboks 788 Stoa	4560	Arendal	kontakt@eilertsundt.vgs.no	38609200	eilertsundt.vgs.no	06e57191-c06d-47e4-a1dd-f9b5bdf213e1	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-09-13 10:28:10+02	\N	Offentlig	42	Ja	4206	63
456	VideregåendeSkole	0101000020DB0B00007202DE7B8CA54F4173BB0543BFB94D41	Eilert Sundt videregående skole	1005608	974595176	11	13	postmottak@agderfk.no	Agder fylkeskommune	921707134	38050000	\N	58	Stadionveien 14	4580	LYNGDAL	Postboks 788 Stoa	4580	Arendal	kontakt@eilertsundt.vgs.no	38609200	eilertsundt.vgs.no	3480fdb8-9fc5-4999-81db-bd3f973ea739	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:55:44+01	\N	Offentlig	42	Ja	4225	63
457	VideregåendeSkole	0101000020DB0B0000E3D9EAA470765041BBA2547A77164F41	Eiker videregående skole	1005726	974605988	11	13	post@viken.no	Viken fylkeskommune	921693230	32300000	\N	71	Strømshauggata 12	3300	HOKKSUND	\N	3300	\N	eikervgs@viken.no	32251800	viken.no/eiker-vgs	c9015bc1-020e-49be-a870-d1a727abfd35	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:56:11+01	\N	Offentlig	30	Ja	3048	63
458	VideregåendeSkole	0101000020DB0B0000D81CEF3F87A550415DAA3F8F5A3D4F41	Eikelund videregående skole	1003405	873626372	11	13	postmottak@oslo.kommune.no	Oslo kommune	958935420	2180	\N	20	Nydalsveien 30B	0484	OSLO	Postboks 6127 Etterstad	0484	Oslo	postmottak@ude.oslo.kommune.no	22231100	eikelund.vgs.no	842b15cf-5413-47df-845d-c7610e9ef4b6	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:16:35+01	\N	Offentlig	03	Ja	0301	63
459	VideregåendeSkole	0101000020DB0B0000AC62A069A89C5041BB3B89AA1E3A4F41	Eikeli videregående skole	1005389	974587726	11	13	post@viken.no	Viken fylkeskommune	921693230	32300000	430	73	Bispeveien 10	1362	HOSLE	Postboks 114	1362	Østerås	eikelivgs@viken.no	67164700	viken.no/eikeli-vgs	b9d35891-e5a2-4018-b2f6-ee4bacfda462	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:24:41+01	\N	Offentlig	30	Ja	3024	63
460	VideregåendeSkole	0101000020DB0B000032B452C40AC050414D07F0D211924F41	Eidsvoll videregående skole	1005385	974587661	11	13	post@viken.no	Viken fylkeskommune	921693230	32300000	\N	152	Jon Sørensens veg 8	2080	EIDSVOLL	POSTBOKS 143	2080	Eidsvoll	eidsvollvgs@viken.no	63923000	viken.no/eidsvoll-vgs	ae66da7f-ebf1-4240-862b-a82ab80f4bfc	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:24:36+01	\N	Offentlig	30	Ja	3035	63
461	VideregåendeSkole	0101000020DB0B00007AD248F7D9594F41FD18A3D84A795041	Eid vidaregåande skule	1003485	874571172	11	13	post@vlfk.no	Vestland fylkeskommune	821311632	5557	380	78	Sophus Lie-vegen 3	6770	NORDFJORDEID	Postboks 174	6770	Nordfjordeid	posteidv@vlfk.no	57638300	www.eid.vgs.no	ad923c92-098d-42ef-8b6e-079985026d29	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:38:11+01	\N	Offentlig	46	Ja	4649	63
462	VideregåendeSkole	0101000020DB0B00005207E05B72A45041F5E42D1675364F41	Edvard Munch videregående skole	1011791	912001709	11	13	postmottak@oslo.kommune.no	Oslo kommune	958935420	2180	\N	311	Ullevålsveien 5	0165	OSLO	Postboks 6127 Etterstad	0165	Oslo	postmottak@ude.oslo.kommune.no	\N	edvardmunch.vgs.no	cee227d8-8019-41ab-8b79-3d148e7a7189	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:16:57+01	\N	Offentlig	03	Ja	0301	63
463	VideregåendeSkole	0101000020DB0B000031200C177B975041D2D7AD04A8334F41	Dønski videregående skole	1005404	974587890	11	13	post@viken.no	Viken fylkeskommune	921693230	32300000	\N	111	Rudsveien 73	1346	GJETTUM	POSTBOKS 33	1346	Rud	donskivgs@viken.no	67806000	viken.no/donski-vgs	8ee0d9c2-895d-4aeb-81bb-b30c8ccb90e4	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:24:59+01	\N	Offentlig	30	Ja	3024	63
464	VideregåendeSkole	0101000020DB0B0000B76F9C9A7FAB5041BA034789A10A4F41	Drømtorp videregående skole	1005403	974587882	11	13	post@viken.no	Viken fylkeskommune	921693230	32300000	\N	159	Dynamitveien 25B	1400	SKI	\N	1400	\N	dromtorpvgs@viken.no	64914600	viken.no/dromtorp-vgs	745fe234-d172-444b-ba8b-94f07a890458	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:24:57+01	\N	Offentlig	30	Ja	3020	63
465	VideregåendeSkole	0101000020DB0B00002BB16E45EB2D50416E4CF8859BE24D41	Drottningborg Vgs AS	1004674	974117738	11	13	post@drottningborg.vgs.no	Drottningborg Vgs AS	988982342	37257777	\N	69	Drottningborg 20	4885	GRIMSTAD	\N	4885	\N	post@drottningborg.vgs.no	37257777	www.drottningborg.vgs.no/	ae49fa3c-1b83-4475-adf4-f17274f7a344	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:51:49+01	\N	Privat	42	Ja	4202	63
466	VideregåendeSkole	0101000020DB0B00005A554BE9A386504122B3A9CBB20E4F41	Drammen videregående skole	1003544	874605972	11	13	post@viken.no	Viken fylkeskommune	921693230	32300000	\N	216	Danvikgata 25	3045	DRAMMEN	Postboks 2024 Strømsø	3045	Drammen	drammenvgs@viken.no	32262800	viken.no/drammen-vgs	c646b6f3-cfd8-4686-bff2-0e5c86d6a2b6	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-10-12 10:38:32+02	\N	Offentlig	30	Ja	3005	63
467	VideregåendeSkole	0101000020DB0B000062934F2E02805041A6C5D15CB8FD4F41	Dokka videregående skole	1005643	974597373	11	13	\N	Innlandet fylkeskommune	920717152	\N	\N	83	Nedre Smebyveg 3	2870	DOKKA	Innlandet fylkeskommune Postboks 4404 Bedriftssenteret	2870	Hamar	dokka.vgs@innlandetfylke.no	61114300	www.dokka.vgs.no/	491f2700-e0d6-4760-8613-c07be16a2149	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:17:13+01	\N	Offentlig	34	Ja	3448	63
468	VideregåendeSkole	0101000020DB0B00001FB05AD675A35041F0D89B48D7374F41	Den Tysk-Norske skolen i Oslo	1004251	973480634	1	12	sekretariat@deutsche-schule.no	Den Tysk-Norske skolen i Oslo	971492627	22931220	277	82	Sporveisgata 20	0354	OSLO	\N	0354	\N	sekretariat@deutsche-schule.no	22931220	www.deutscheschule.no	3906e301-0379-4e0f-a987-04ff0ab90088	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:50:08+01	\N	Privat	03	Ja	0301	63
469	VideregåendeSkole	0101000020DB0B000024145D629DFF4E41A447792E97AD4F41	Danielsen videregående skole	1003381	873159642	11	13	danadm@danielsen-skoler.no	Foreningen Danielsen videregående skole	989077457	55559800	\N	86	Nygaten 8	5017	BERGEN	\N	5017	\N	danadm@danielsen-skoler.no	55559800	www.danielsen-skoler.no	e5bc5136-55fb-4146-bc94-0dc14297a049	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:38:44+01	\N	Privat	46	Ja	4601	63
470	VideregåendeSkole	0101000020DB0B000033F2B2ACA3FF4E41D6F1ECA886AD4F41	Danielsen Intensivgymnas	1003880	882067432	11	13	intensivgymnaset@danielsen-skoler.no	Foreningen Danielsen Intensivgymnas	989077627	55548900	\N	26	Nygaten 9	5017	BERGEN	Nygaten 8	5017	Bergen	intensivgymnaset@danielsen-skoler.no	55548900	www.danielsen-skoler.no/intensiv	dfbc53e7-a2a6-42c4-8cbf-03c3c1c548e3	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:43:37+01	\N	Privat	46	Ja	4601	63
471	VideregåendeSkole	0101000020DB0B00006BACD13A4B154F41E894D1A9E13E5041	Dale vidaregåande skule	1005165	974571137	11	13	post@vlfk.no	Vestland fylkeskommune	821311632	5557	200	43	Jarstadvegen 28	6963	DALE I SUNNFJORD	\N	6963	\N	postmottak.dalevgs@vlfk.no	57637000	www.dale.vgs.no/	72a4fd84-2d01-4b3f-8ee3-ad17fc6fa809	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:38:13+01	\N	Offentlig	46	Ja	4646	63
472	VideregåendeSkole	0101000020DB0B0000B36532A3A86D4F416742AE411A024E41	Dalane videregående skole avd Moi	1007990	975299066	11	13	\N	\N	\N	\N	\N	9	Moiveien 1	4460	MOI	\N	4460	\N	\N	\N	www.dalane.vgs.no/	57e9b65c-3fcc-4bd6-80fe-89f4af689c3c	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2021-01-12 09:24:04+01	\N	Offentlig	11	Nei	1112	63
473	VideregåendeSkole	0101000020DB0B0000CB04B2BE30304F41EAE992EE1E074E41	Dalane videregående skole	1005949	974624478	11	13	firmapost@rogfk.no	Rogaland fylkeskommune	971045698	51516600	\N	151	Sjukehusveien 10	4373	EGERSUND	Postboks 503	4373	Egersund	dalane-vgs@skole.rogfk.no	51923800	www.dalane.vgs.no	252b22fa-07d5-4129-a2f1-899d21ce1a10	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:40:43+01	\N	Offentlig	11	Ja	1101	63
474	VideregåendeSkole	0101000020DB0B0000C0468645412A504119CBF2E672E04D41	Dahlske videregående skole	1005219	974573881	11	13	postmottak@agderfk.no	Agder fylkeskommune	921707134	38050000	\N	202	Lillesandsveien 39	4877	GRIMSTAD	Postboks 788 Stoa	4877	Arendal	kontakt@dahlske.vgs.no	37402700	www.dahlske.vgs.no	e3ef4522-985d-4096-862b-511e9b89750c	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:24:16+01	\N	Offentlig	42	Ja	4202	63
475	VideregåendeSkole	0101000020DB0B00002034F2A06394504122313D6C341D5041	Create - Lillehammer Kreative videregående skole AS	1027469	920330754	11	13	bjarne.nyrud@create.no	Create - Lillehammer Kreative videregående skole AS	920292682	46787000	\N	22	Mesnakvartalet 20	2615	LILLEHAMMER	\N	2615	\N	mail@create.no	46787000	www.create.no	244000fc-e13b-4029-af55-8e05c02660f4	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-09-13 10:45:17+02	\N	Privat	34	Ja	3405	63
476	VideregåendeSkole	0101000020DB0B000080C21DBCFA8C5041011E839FDB105141	Cissi Klein videregående skole	1029141	926694022	11	13	postmottak@trondelagfylke.no	Trøndelag fylkeskommune	817920632	\N	\N	41	Blisterhaugvegen 9	7078	SAUPSTAD	Postboks 6162 Torgarden	7078	Trondheim	postmottak.cissikleinvgs@trondelagfylke.no	74177000	web.trondelagfylke.no/cissi-klein-videregaende-skole/	24cfa768-5501-4cb2-8983-7b736751dcc0	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:37:41+01	\N	Offentlig	50	Ja	5001	63
477	VideregåendeSkole	0101000020DB0B0000A34B62C792935041AEAEB725AB165141	Charlottenlund videregående skole	1010630	996772772	11	13	postmottak@trondelagfylke.no	Trøndelag fylkeskommune	817920632	\N	\N	248	Yrkesskolevegen 16	7058	JAKOBSLI	\N	7058	\N	postmottak.charlottenlundvgs@trondelagfylke.no	\N	www.charlottenlund.vgs.no	996e7cdc-176c-43d8-8681-bc3ba17810ed	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:37:44+01	\N	Offentlig	50	Ja	5001	63
478	VideregåendeSkole	0101000020DB0B00001568333FFADC504136EF98DCE7F55141	Campus Blå videregående skole AS	1026953	818509812	11	12	post@havbruksakademiet.com	Campus Blå videregående skole AS	918451080	\N	15	15	Toftveien 80	8909	BRØNNØYSUND	\N	8909	\N	post@havbruksakademiet.com	\N	www.havbruksakademiet.com	08839ab7-2113-4710-afaa-e1ec48f19f58	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-10-12 11:07:48+02	\N	Privat	18	Ja	1813	63
479	VideregåendeSkole	0101000020DB0B0000FF59CD8C7F4253416AEEABBA70885441	Båtsfjord videregående skole	1009382	987001739	11	13	postmottak@batsfjord.kommune.no	Båtsfjord kommune	938795592	78985300	\N	3	Fomavegen 5	9990	BÅTSFJORD	Postboks 253	9990	Båtsfjord	\N	78948571	www.batsfjord.vgs.no	1a3b168d-2495-4461-86d8-00547a3f149c	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-09-13 10:37:47+02	\N	Offentlig	54	Ja	5443	63
480	VideregåendeSkole	0101000020DB0B0000FF59CD8C7F4253416AEEABBA70885441	Båtsfjord private videregående skole AS	1025676	914837367	11	13	oeyvhauk@bpvsas.onmicrosoft.com	Båtsfjord private videregående skole AS	995352699	\N	16	8	Fomavegen 5	9990	BÅTSFJORD	Postboks 109  Båtsfjord	9990	Båtsfjord	oeyvhauk@bpvsas.onmicrosoft.com	\N	www.bpvsas.com	c431e7f9-b9a5-45fe-95b4-688ec3219b81	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-09-13 10:42:55+02	\N	Privat	54	Ja	5443	63
481	VideregåendeSkole	0101000020DB0B00001DD98362FEE64E4191AD79BEAC2C4F41	Bømlo vidaregåande skule	1004939	974557126	11	13	post@vlfk.no	Vestland fylkeskommune	821311632	5557	\N	56	Leitedåvane 8	5430	BREMNES	Postboks 163	5430	Bremnes	post.bov@vlfk.no	53423810	skole.hfk.no/bomlovgs	144239e5-d99f-4275-b5e0-00abcf639692	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-08-16 10:18:55+02	\N	Offentlig	46	Ja	4613	63
482	VideregåendeSkole	0101000020DB0B00002E2C7316A8475041F50D33FCDAC94E41	Bø vidaregåande skule	1005120	974567997	11	13	post@vtfk.no	Vestfold og Telemark fylkeskommune	821227062	35917000	\N	61	Gymnasbakken 23	3802	BØ I TELEMARK	Postboks 2844	3802	Skien	bo.vgs@vtfk.no	35061200	www.bo.vgs.no/	7d053fd8-10b3-426c-9db4-7720087ac9d4	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-10-12 10:52:04+02	\N	Offentlig	38	Ja	3817	63
483	VideregåendeSkole	0101000020DB0B0000A3C4E541938D50416578D39600145141	Byåsen videregående skole	1009103	984477112	11	13	postmottak@trondelagfylke.no	Trøndelag fylkeskommune	817920632	\N	1100	206	Selsbakkvegen 34	7027	TRONDHEIM	Postboks 5655 Torgarden	7027	Trondheim	postmottak.byasenvgs@trondelagfylke.no	74174210	byasen.vgs.no	a98479e9-ebc3-4bbc-9c83-e27a36195cbd	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:37:43+01	\N	Offentlig	50	Ja	5001	63
484	VideregåendeSkole	0101000020DB0B0000C501E3E836CF4F413C9C9D8E83F74D41	Byremo videregående skole	1005607	974595168	11	13	postmottak@agderfk.no	Agder fylkeskommune	921707134	38050000	165	44	Monan 7	4529	BYREMO	Postboks 788 Stoa	4529	Arendal	kontakt@byremo.vgs.no	38281400	www.byremo.vgs.no	6aa62dd5-ac1a-4f15-a34d-c972a30eb743	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-03-16 09:51:57+01	\N	Offentlig	42	Ja	4225	63
485	VideregåendeSkole	0101000020DB0B0000D338A45D598F5041D80AB0E9A6175141	Bybroen videregående skole AS	1004023	971816279	11	13	post@bybroen.vgs.no	Bybroen videregående skole AS	951190470	73524411	\N	24	Kjøpmannsgata 12	7013	TRONDHEIM	\N	7013	\N	post@bybroen.vgs.no	73524411	www.bybroen.vgs.no	e79f20d4-93cf-4411-9455-f70ef0948619	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-09-13 10:23:45+02	\N	Privat	50	Ja	5001	63
486	VideregåendeSkole	0101000020DB0B00000DAC37E4F5775041B194546BE3304F41	Buskerud videregående skole	1005737	974606216	11	13	post@viken.no	Viken fylkeskommune	921693230	32300000	\N	195	Jellumveien 1	3340	ÅMOT	\N	3340	\N	buskerudvgs@viken.no	32222100	viken.no/buskerud-vgs	97973e3b-2a69-4a2e-98ce-c841f3c3eb35	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:56:14+01	\N	Offentlig	30	Ja	3047	63
487	VideregåendeSkole	0101000020DB0B000045E55CE3A375504144D9BFD1662E4F41	Buskerud videregående skole	1005730	974606070	11	13	\N	\N	\N	\N	\N	9	Buskerudveien	3340	ÅMOT	\N	3340	\N	\N	32784299	www.buskerud-landbruk.vgs.no	690d94b6-93f2-4f5b-b212-7f5085efc919	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2020-03-14 01:03:31+01	\N	Offentlig	06	Nei	0623	63
488	VideregåendeSkole	0101000020DB0B00006E2D78EF7FE05041EFF5C53DBEF55141	Brønnøysund videregående skole	1005917	974621401	11	13	post@nfk.no	Nordland fylkeskommune	964982953	75650000	\N	104	Skolegata 10	8900	BRØNNØYSUND	Postboks 1485	8900	Bodø	bvs-post@vgs.nfk.no	75653600	www.brsund.vgs.no	acf0614a-4aa3-428b-9e0c-c265fbe74a31	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	\N	\N	Offentlig	18	Ja	1813	63
489	VideregåendeSkole	0101000020DB0B00005ED30D94D20A4F415CDB64F587434E41	Bryne vidaregåande skule	1012198	913385632	11	13	firmapost@rogfk.no	Rogaland fylkeskommune	971045698	51516600	1548	339	Hetlandsgata 27	4344	BRYNE	Postboks 445	4344	Bryne	bryne-vgs@skole.rogfk.no	51923100	www.bryne.vgs.no/	55ad70cc-33db-44f9-bf7a-21eee03f7448	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:40:41+01	\N	Offentlig	11	Ja	1121	63
490	VideregåendeSkole	0101000020DB0B0000C5ABA134099350418147CCCFCA165141	Brundalen videregående skole	1007899	975293009	11	13	postmottak@trondelagfylke.no	Trøndelag fylkeskommune	817920632	\N	\N	9	Nermarka 2	7047	TRONDHEIM	\N	7047	\N	\N	\N	\N	a9d6ab4a-29ad-4899-9536-625bf276d60d	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2021-01-12 09:16:27+01	\N	Offentlig	50	Ja	5001	63
491	VideregåendeSkole	0101000020DB0B00004209AA626793504130AC04ADB4165141	Brundalen videregående skole	1004989	974558106	11	13	\N	\N	\N	\N	\N	300	Brundalen	7058	JAKOBSLI	\N	7058	\N	\N	\N	www.brundalen.vgs.no/	fa2e6a34-b01e-44a8-9674-61f599e86d40	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2020-03-14 00:39:08+01	\N	Offentlig	16	Nei	1601	63
492	VideregåendeSkole	0101000020DB0B0000F53A49D2D0D25141BE686F4305D15341	Breivika videregående skole	1003450	874546852	11	13	\N	\N	\N	\N	\N	150	Breiviklia 1	9019	TROMSØ	Postboks 3374	9019	Tromsø	breivika.vgs@troms-f.kommune.no	77621600	www.breivika.vgs.no	c2305fe7-b29c-4362-98ea-3cb999ddf5c0	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-10-21 10:17:34+02	\N	Offentlig	19	Nei	1902	63
493	VideregåendeSkole	0101000020DB0B0000DEF11EC833D25141FE93EF3ABFD05341	Breivang videregående skole	1004836	974546892	11	13	postmottak@tffk.no	Troms og Finnmark fylkeskommune	922420866	\N	\N	115	Dramsvegen 199	9010	TROMSØ	\N	9010	\N	breivang.vgs@tffk.no	77788500	www.breivang.vgs.no	f859abb1-e91b-4794-a24e-413626af56d5	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:26:05+01	\N	Offentlig	54	Ja	5401	63
494	VideregåendeSkole	0101000020DB0B0000DAF2ACA60B784F415CC570667CB15041	Borgund videregående skole avd Sula	1005278	974577178	11	13	\N	\N	\N	\N	\N	\N	Bratthaugmyra 43	6030	LANGEVÅG	\N	6030	\N	\N	71929610	\N	6cd6e636-ccd6-4260-9d5c-5093d5a53dde	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-04-21 10:15:25+02	\N	Offentlig	15	Nei	1531	63
495	VideregåendeSkole	0101000020DB0B0000F27F9F5798884F41956728B844B45041	Borgund vidaregåande skole	1005263	974576554	11	13	post@mrfylke.no	Møre og Romsdal fylkeskommune	944183779	71258000	\N	284	Yrkesskolevegen 20	6011	ÅLESUND	\N	6011	\N	borgund.vgs@mrfylke.no	71281200	www.borgund.vgs.no/	ee23084b-1349-4d62-869e-89a12d9fc139	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:39:49+01	\N	Offentlig	15	Ja	1507	63
496	VideregåendeSkole	0101000020DB0B00006A64B0A643BD50411B0EDAE663A94E41	Borg videregående skole	1003444	874544442	11	13	post@viken.no	Viken fylkeskommune	921693230	32300000	\N	177	Raveien 1	1739	BORGENHAUGEN	Postboks 103	1739	Borgenhaugen	borgvgs@viken.no	69973100	viken.no/borg-vgs	0bc31620-5f70-43b5-9723-457d67218eb1	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:39:11+01	\N	Offentlig	30	Ja	3003	63
497	VideregåendeSkole	0101000020DB0B0000C2967DD9ED35514182C6F056AABD5241	Bodø videregående skole	1005903	974621223	11	13	post@nfk.no	Nordland fylkeskommune	964982953	75650000	\N	369	Amtmann Hegges vei 4	8005	BODØ	Postboks 1485	8005	Bodø	post.bodo@nfk.no	75651500	www.bodo.vgs.no	42b60496-f00c-4f2b-b606-c25899459bff	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:17:32+01	\N	Offentlig	18	Ja	1804	63
498	VideregåendeSkole	0101000020DB0B0000F6F7F650093D51415C46039EE6BE5241	Bodin videregående skole	1005902	974621215	11	13	post@nfk.no	Nordland fylkeskommune	964982953	75650000	900	209	Mørkvedtråkket 2	8026	BODØ	Postboks 1485	8026	Bodø	bodin-post@vgs.nfk.no	75651000	www.bodin.vgs.no	14190441-4a9e-4ce4-b7ec-954f3461a76c	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:17:32+01	\N	Offentlig	18	Ja	1804	63
499	VideregåendeSkole	0101000020DB0B0000E45739F3E70150418036784F8BD74D41	Blå Kors videregående skole Øvrebø AS	1004192	973391100	11	13	pov@ovrebo.vgs.no	Blå Kors videregående skole Øvrebø AS	971534346	38152777	\N	64	Lolandsvegen 37	4715	ØVREBØ	\N	4715	\N	pov@ovrebo.vgs.no	38152777	www.ovrebo.vgs.no	7f2d6942-02b7-410f-bc1b-695aac0cdb79	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:49:59+01	\N	Privat	42	Ja	4223	63
500	VideregåendeSkole	0101000020DB0B0000CF5EF9706A2A50411C63DBCC5BE04D41	Blå Kors videregående skole Grimstad AS	1027927	922100101	11	13	grimstadvgs@blakors.no	Blå Kors videregående skole Grimstad AS	922084610	40004124	\N	12	Grooseveien 36	4876	GRIMSTAD	\N	4876	\N	frode.stiansen@blakors.no	40004124	www.blakors.no/videregaende-skole-grimstad/	f27d013e-ac8b-4245-a206-f7bd36ef65b9	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-09-13 10:45:40+02	\N	Privat	42	Ja	4202	63
501	VideregåendeSkole	0101000020DB0B0000E4C4B7EAA0A3504169A8A5EF473D4F41	Blindern videregående skole	1011980	912703312	11	13	postmottak@oslo.kommune.no	Oslo kommune	958935420	2180	\N	163	Sognsveien 80	0855	OSLO	Postboks 6127 Etterstad	0855	Oslo	postmottak@ude.oslo.kommune.no	90808059	blindern.vgs.no	b0d09cf2-bb80-4b05-92f9-c7abee13c87b	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:16:57+01	\N	Offentlig	03	Ja	0301	63
502	VideregåendeSkole	0101000020DB0B0000FBDC8D1732945041694CC1C644224F41	Bleiker videregående skole	1005399	974587831	11	13	post@viken.no	Viken fylkeskommune	921693230	32300000	470	173	Brages vei 1	1387	ASKER	POSTBOKS 218	1387	Asker	bleikervgs@viken.no	66753500	viken.no/bleiker-vgs	752b086c-724b-42b5-aed7-3ac014769cf2	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:24:55+01	\N	Offentlig	30	Ja	3025	63
503	VideregåendeSkole	0101000020DB0B000094BD297399A95041C9496D444C244F41	Bjørnholt videregående skole	1010023	990574898	11	13	postmottak@oslo.kommune.no	Oslo kommune	958935420	2180	\N	173	Slimeveien 17	1275	OSLO	Postboks 6127 Etterstad	1275	Oslo	postmottak@ude.oslo.kommune.no	23463600	bjornholt.vgs.no	a256c68c-83e5-4162-809c-8f5b8dcd7da0	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:16:55+01	\N	Offentlig	03	Ja	0301	63
504	VideregåendeSkole	0101000020DB0B0000999C82A32DD150411870EAE155304F41	Bjørkelangen videregående skole	1005379	974587602	11	13	post@viken.no	Viken fylkeskommune	921693230	32300000	\N	103	Haldenveien 41	1940	BJØRKELANGEN	\N	1940	\N	bjorkelangenvgs@viken.no	63854400	viken.no/bjorkelangen-vgs	aefeb017-ad84-463a-88a2-81aa67b2b54c	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-10-12 10:29:55+02	\N	Offentlig	30	Ja	3026	63
505	VideregåendeSkole	0101000020DB0B00003DC9FEE0F5FD4E4175CAE6877AAE4F41	Bjørgvin videregående skole	1004969	974557673	11	13	\N	\N	\N	\N	\N	84	Strandgaten 195	5004	BERGEN	Postboks 1979	5004	Bergen	\N	55901490	www.hordaland-f.kommune.no/bjv/	07ea2e18-76d8-494c-9268-1da048f1ea64	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-04-20 10:18:06+02	\N	Offentlig	12	Nei	1201	63
506	VideregåendeSkole	0101000020DB0B000038594C4BBEAB5041E32A0B7EEC524F41	Bjertnes videregående skole	1005382	974587637	11	13	post@viken.no	Viken fylkeskommune	921693230	32300000	\N	132	Kvernstuveien 1	1482	NITTEDAL	\N	1482	\N	bjertnesvgs@viken.no	67073110	viken.no/bjertnes-vgs	02f84639-a307-4747-872b-19ab352b696f	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:24:32+01	\N	Offentlig	30	Ja	3031	63
507	VideregåendeSkole	0101000020DB0B0000CA14053881A9504132BB67EB6E3B4F41	Bjerke videregående skole	1005541	974591006	11	13	postmottak@oslo.kommune.no	Oslo kommune	958935420	2180	39	147	Statsråd Mathiesens vei 25	0594	OSLO	Postboks 6127 Etterstad	0594	Oslo	postmottak@ude.oslo.kommune.no	23468540	bjerke.vgs.no	3e9652ef-ccaa-49a6-b4ba-a4d87312aa13	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:16:51+01	\N	Offentlig	03	Ja	0301	63
508	VideregåendeSkole	0101000020DB0B000034BAE01F3C004F41CA6A11E81DAA4F41	Bibelskolen Substans	1004451	973840991	11	13	christian@substans.co	Bibelskolen Substans	887769982	55987800	\N	8	Fjøsangerveien 28	5053	BERGEN	\N	5053	\N	christian@substans.co	\N	www.substans.co	b106290f-4607-4c2f-b0a4-51c373870537	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-09-13 10:25:16+02	\N	Privat	46	Ja	4601	63
509	VideregåendeSkole	0101000020DB0B0000E5469A5D1B8A5041419E1164BFAB4E41	Bibelskolen på Fossnes	1003407	873668482	11	13	bibelskolen@nll.no	Bibelskolen på Fossnes	988884286	33338900	\N	4	Valberggrenda 13B	3160	STOKKE	\N	3160	\N	bibelskolen@nll.no	33338900	www.fossnes.no	df555462-e54b-4212-9d32-9f6a43a67fd9	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-09-13 10:36:23+02	\N	Privat	38	Ja	3804	63
510	VideregåendeSkole	0101000020DB0B00003C7D456D3AB35041BC13BA5684444F41	Bibelskolen Oslo Kristne senter	1004100	973067516	11	13	bibelskolen@oks.no	Bibelskolen Oslo Kristne senter	987091576	64846430	\N	21	Trondheimsveien 50F	2007	KJELLER	Trondheimsveien 50A	2007	Kjeller	bibelskolen@oks.no	63802080	www.bibelskole.no	4c286d83-1910-4af5-919b-a9a2e2a89aa8	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-07-12 10:18:34+02	\N	Privat	30	Ja	3030	63
511	VideregåendeSkole	0101000020DB0B00003C06D92525184F41AAADB8B715764E41	Bibelskolen Link	1011871	996768856	11	13	post@bibelskolenlink.no	Bibelskolen Link	896740202	\N	\N	3	Kirkebakken 34	4012	STAVANGER	Postboks 46	4012	Stavanger	post@bibelskolenlink.no	\N	www.bibelskolenlink.no	c24a5b2f-5f42-4c26-a5c8-58678a2c0b33	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-10-12 11:07:12+02	\N	Privat	11	Ja	1103	63
512	VideregåendeSkole	0101000020DB0B00005F28881FF58E5041026DB6D19B175141	Bibelskolen i Trondheim	1006288	975146960	11	13	heidi@bibelskolenitrondheim.no	Bibelskolen i Trondheim	974938170	\N	\N	13	Prinsens gate 10B	7012	TRONDHEIM	\N	7012	\N	heidi@bibelskolenitrondheim.no	\N	www.bibelskolenitrondheim.no	0f2434d3-d8f6-4d1a-a4e0-58a0238af4da	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:57:23+01	\N	Privat	50	Ja	5001	63
513	VideregåendeSkole	0101000020DB0B0000DB46A399812950412A7AE1CAC7DA4D41	Bibelskolen i Grimstad	1004191	973388436	11	13	post@bibelskolen.no	Bibelskolen i Grimstad Normisjon	971517441	37256800	\N	53	Østerhusmonen 81	4879	GRIMSTAD	\N	4879	\N	post@bibelskolen.no	37256800	www.bibelskolen.no	0653d73d-e40e-4457-968f-c27c83336818	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-10-12 10:48:00+02	\N	Privat	42	Ja	4202	63
514	VideregåendeSkole	0101000020DB0B00006F22CA76DFE74E4179E641E8AAA44F41	Bibelskolen Bildøy	1004726	974135604	11	13	post@bildoybibelskole.no	Bibelskolen Bildøy Bergen AS	989071483	56316316	\N	31	Steinsvikvegen 56	5353	STRAUME	\N	5353	\N	post@bbb.vgs.no	56316316	www.bbb.vgs.no	e62a1f0a-de4d-49e4-946c-be3707a4f072	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:52:09+01	\N	Privat	46	Ja	4626	63
515	VideregåendeSkole	0101000020DB0B000066A3A3289BFF4E41962BC80963AC4F41	Bergen private gymnas AS	1009775	988602671	11	13	post@bpg.no	Bergen private gymnas AS	988594024	\N	\N	102	Lars Hilles gate 17	5008	BERGEN	Postboks 3 Nygårdstangen	5008	Bergen	post@bpg.no	\N	www.metis.no	ae41483c-71e3-4c01-b252-cab4e6f8ae48	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 10:15:18+01	\N	Privat	46	Ja	4601	63
516	VideregåendeSkole	0101000020DB0B0000EAEE8717D1FF4E41783C4D89EDAB4F41	Bergen Maritime videregående skole	1003463	874557692	11	13	post@vlfk.no	Vestland fylkeskommune	821311632	5557	\N	1	Odd Frantzens plass 6	5008	BERGEN	Postboks 6065	5008	Bergen	post.bmv@hfk.no	55337500	skole.hfk.no/nb-NO/skole/bergen-maritime-videregaende-skole/	bf34ba01-b5c3-4238-8301-12ebdcf42653	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-08-16 10:18:52+02	\N	Offentlig	46	Ja	4601	63
517	VideregåendeSkole	0101000020DB0B00000DFAFE32A3FF4E41C93E9C0FADAD4F41	Bergen katedralskole	1003461	874557102	11	13	post@vlfk.no	Vestland fylkeskommune	821311632	5557	\N	151	Kong Oscars gate 36	5017	BERGEN	Postboks 414  Marken	5017	Bergen	post.bks@vlfk.no	55338200	skole.hfk.no/bergenkatedralskole	92c653a3-08f7-4f09-9f92-812d77d48dce	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:38:13+01	\N	Offentlig	46	Ja	4601	63
518	VideregåendeSkole	0101000020DB0B0000277996961C024F41DAC5D6492CAA4F41	Bergen bibelskole	1004502	973937979	11	13	post@bergenbibelskole.no	Bergen bibelskole	912333221	\N	\N	7	Møllendalsbakken 6	5009	BERGEN	\N	5009	\N	post@bergenbibelskole.no	\N	www.bergenbibelskole.no	c50a47c3-3457-4953-a987-c2c6653caac5	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-06-16 10:34:25+02	\N	Privat	46	Ja	4601	63
519	VideregåendeSkole	0101000020DB0B00002E06CD0DDD174F410AD13B94DE754E41	Bergeland videregående skole	1005954	974624532	11	13	firmapost@rogfk.no	Rogaland fylkeskommune	971045698	51516600	\N	140	Vaisenhusgata 50	4012	STAVANGER	Postboks 560  Sentrum	4012	Stavanger	bergeland-vgs@rogfk.no	51842200	www.bergeland.vgs.no	ccd20b49-5d84-4ff1-a165-0165dadf72fd	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:40:43+01	\N	Offentlig	11	Ja	1103	63
520	VideregåendeSkole	0101000020DB0B0000CC7E595F27BB51418A39B1E008945341	Bardufoss videregående skole Sørreisa	1004832	974546841	11	13	\N	\N	\N	\N	\N	4	Skoleveien 15	9310	SØRREISA	\N	9310	\N	\N	\N	www.bardufoss.vgs.no/	c3f3c56d-9865-4041-84f9-37155d5bac29	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-10-21 10:17:30+02	\N	Offentlig	19	Nei	1925	63
521	VideregåendeSkole	0101000020DB0B00006625C5BF3CC95141A61BFEE2E38B5341	Bardufoss videregående skole	1004830	974546817	11	13	postmottak@tffk.no	Troms og Finnmark fylkeskommune	922420866	\N	\N	161	Ole Reistads vei 53	9325	BARDUFOSS	\N	9325	\N	bardufoss.vgs@tffk.no	77789300	www.bardufoss.vgs.no	094b891c-699d-43f2-b988-1299bf8a9244	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:26:05+01	\N	Offentlig	54	Ja	5418	63
522	VideregåendeSkole	0101000020DB0B00006625C5BF3CC95141A61BFEE2E38B5341	Bardufoss Høgtun videregående skole	1004831	974546833	11	13	postmottak@tffk.no	Troms og Finnmark fylkeskommune	922420866	\N	\N	4	Ole Reistads vei 53	9325	BARDUFOSS	\N	9325	\N	post.bardufoss.hogtun@troms.vgs.no	77830330	www.hogtun.vgs.no	be3f14a3-6998-4a62-8603-e993339989c7	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-04-21 10:15:21+02	\N	Offentlig	54	Ja	5418	63
523	VideregåendeSkole	0101000020DB0B00003B8E39410C6B5041C2F70E1CAB744E41	Bamble videregående skole	1005129	974568098	11	13	post@vtfk.no	Vestfold og Telemark fylkeskommune	821227062	35917000	\N	63	Sundbykåsa 29	3961	STATHELLE	Postboks 2844	3961	Skien	bamble.vgs@vtfk.no	35919400	www.bamble.vgs.no	13d3035c-4e89-4ff1-8bda-0b0c5ac98ffa	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 10:19:41+01	\N	Offentlig	38	Ja	3813	63
524	VideregåendeSkole	0101000020DB0B0000F7E81C75316B5041A539D30E65784E41	Bamble videregående skole	1005133	974568179	11	13	post@vtfk.no	Vestfold og Telemark fylkeskommune	821227062	35917000	450	38	Tostrups vei 7	3960	STATHELLE	Postboks 2844	3960	Skien	bamble.vgs@vtfk.no	91304776	www.vtfk.no/skoler/bamble-vgs/	f8d763d5-f417-4fd0-b91f-1433d4a75da4	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-09-13 10:53:25+02	\N	Offentlig	38	Ja	3813	63
525	VideregåendeSkole	0101000020DB0B0000D6E7BEF8BEDB4E41368946080F035041	Austrheim vidaregåande skule	1004957	974557509	11	13	post@vlfk.no	Vestland fylkeskommune	821311632	5557	\N	41	Mastrevikane 44	5943	AUSTRHEIM	\N	5943	\N	post.auv@vlfk.no	56168000	skole.hfk.no/austrheimvgs	7ee24b47-b513-43bc-9d74-f1b17ddfc514	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-09-13 10:35:27+02	\N	Offentlig	46	Ja	4632	63
526	VideregåendeSkole	0101000020DB0B00002693C086123651414203459E43255341	Aust-Lofoten videregående skole	1005895	974621134	11	13	post@nfk.no	Nordland fylkeskommune	964982953	75650000	\N	95	Gymnasgata 13	8300	SVOLVÆR	Postboks 1485	8300	Bodø	post.austlofoten@vgs.nfk.no	75655000	www.aust-lofoten.vgs.no	470d4509-253c-4eea-a936-3c63dee6cf83	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:17:32+01	\N	Offentlig	18	Ja	1865	63
527	VideregåendeSkole	0101000020DB0B0000C34F6D4FA8F34E41B70BF747AA6B4F41	Austevoll vidaregåande skule	1004963	974557592	11	13	post@vlfk.no	Vestland fylkeskommune	821311632	5557	\N	42	Sauganeset 18	5392	STOREBØ	\N	5392	\N	post.aus@vlfk.no	56182000	www.hordaland.no/nn-NO/skole/austevollvgs/	fbca85e9-85a9-4be9-ad0c-652bd8c08ca7	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-10-12 10:36:39+02	\N	Offentlig	46	Ja	4625	63
528	VideregåendeSkole	0101000020DB0B000054783674B50B504131B91BC3AAF85041	Atlanten videregående skole	1005257	974576473	11	13	post@mrfylke.no	Møre og Romsdal fylkeskommune	944183779	71258000	\N	94	Dalaveien 25	6511	KRISTIANSUND N	\N	6511	\N	atlanten.vgs@mrfylke.no	71283800	www.atlanten.vgs.no	b21020d9-26bf-488b-93fb-4b8d051c0714	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:39:49+01	\N	Offentlig	15	Ja	1505	63
529	VideregåendeSkole	0101000020DB0B00000F2D86E8ECBB50411C83D88E8AEC4E41	Askim videregående skole	1004793	974544504	11	13	post@viken.no	Viken fylkeskommune	921693230	32300000	\N	214	Vammaveien 100G	1813	ASKIM	Postboks G	1813	Askim	Askimvgs@viken.no	69816300	viken.no/askim-vgs	8f1f649e-029e-45ea-9747-36aa7d7d8dad	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:52:41+01	\N	Offentlig	30	Ja	3014	63
530	VideregåendeSkole	0101000020DB0B0000EE5B36BEBE935041A2F8EA4E49234F41	Asker videregående skole	1005391	974587742	11	13	post@viken.no	Viken fylkeskommune	921693230	32300000	\N	96	Fredtunveien 81	1386	ASKER	\N	1386	\N	Askervgs@viken.no	66907240	viken.no/asker-vgs	b8937141-a4b9-41fd-87f2-f39516741623	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:24:44+01	\N	Offentlig	30	Ja	3025	63
531	VideregåendeSkole	0101000020DB0B000091C413764C0E4F41F762B27C6AB74F41	Arna vidaregåande skule	1004953	974557444	11	13	post@vlfk.no	Vestland fylkeskommune	821311632	5557	258	53	Vestlivegen 43	5260	INDRE ARNA	\N	5260	\N	Arna.Vidaregaande.Skule@vlfk.no	55254700	skole.hfk.no/arnavgs	dff47ec7-45fe-417e-a295-54caa4d243c4	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:38:12+01	\N	Offentlig	46	Ja	4601	63
532	VideregåendeSkole	0101000020DB0B0000916E3EC6DD0E4F416608A0751AB84F41	Arna gymnas	1004934	974557053	11	13	\N	\N	\N	\N	\N	29	Garnesstølen 63	5264	GARNES	\N	5264	\N	\N	55240431	www.hordaland-f.kommune.no/arg/	22f3280a-dbfc-4271-bcb8-bebfc05a688b	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-04-20 10:18:09+02	\N	Offentlig	12	Nei	1201	63
533	VideregåendeSkole	0101000020DB0B00009DCF7BCB263550410AC6916121FA4D41	Arendal videregående skole	1005218	974573873	11	13	postmottak@agderfk.no	Agder fylkeskommune	921707134	38050000	\N	106	Kirkebakken 8	4836	ARENDAL	Postboks 788 Stoa	4836	Arendal	kontakt@arendal.vgs.no	37000200	www.arendal.vgs.no	65e58ed7-9a57-43fb-98b9-fa012877b174	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	\N	\N	Offentlig	42	Ja	4203	63
534	VideregåendeSkole	0101000020DB0B0000C3BB8FC27E3550411D457D1C37FB4D41	Arendal videregående skole	1005213	974573822	11	13	postmottak@agderfk.no	Agder fylkeskommune	921707134	38050000	\N	4	Mølleheia 12	4841	ARENDAL	Postboks 788 Stoa	4841	Arendal	kontakt@arendal.vgs.no	37000200	www.arendal.vgs.no	1055bdff-69df-400f-a2e5-df5ba21357ce	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-07-10 10:15:49+02	\N	Offentlig	42	Ja	4203	63
535	VideregåendeSkole	0101000020DB0B00007E23B3B1333550417273CAAC44FB4D41	Arendal Maritime videregående skole	1005215	974573849	11	13	\N	\N	\N	\N	\N	74	Fløyveien 12	4838	ARENDAL	\N	4838	\N	amvs@arendalmar.vgs.no	37004200	www.arendalmar.vgs.no	5ab0b956-f2e5-497d-8c96-efb7ad9e852f	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2020-05-11 16:01:55+02	\N	Offentlig	09	Nei	0906	63
536	VideregåendeSkole	0101000020DB0B0000272953F47D0D5041D8D06EF221C04D41	Ansgar bibelskole AS	1004110	973112376	11	13	post@ansgarskolen.no	Ansgar bibelskole AS	889205512	38106599	\N	18	Fredrik Franssons vei 4	4635	KRISTIANSAND S	\N	4635	\N	post@ansgarskolen.no	38106599	www.ansgarskolen.no	addca790-681e-4d32-a22d-b55cd0aa2071	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:49:26+01	\N	Privat	42	Ja	4204	63
537	VideregåendeSkole	0101000020DB0B0000B76935582D6A5141CAA79B7A239E5341	Andøy videregående skole	1005888	974621029	11	13	post@nfk.no	Nordland fylkeskommune	964982953	75650000	\N	44	Borgergata 22	8480	ANDENES	Postboks 1485	8480	Bodø	post.andoy@vgs.nfk.no	75656100	www.andoy.vgs.no	86bdec8b-6ae3-4d57-a948-abf5f7bd56d6	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:17:31+01	\N	Offentlig	18	Ja	1871	63
538	VideregåendeSkole	0101000020DB0B0000B0F1BFF14C004F41B48C4F10F3AB4F41	Amalie Skram videregående skole	1011583	999546560	1	13	post@vlfk.no	Vestland fylkeskommune	821311632	5557	\N	173	Lungegårdskaien 40	5015	BERGEN	Postboks 7900	5015	Bergen	Post.amv@vlfk.no	57305200	skole.hfk.no/amalieskramvgs/	96e3ba75-6bf5-4b6f-a317-c98c30eb15c7	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:38:14+01	\N	Offentlig	46	Ja	4601	63
539	VideregåendeSkole	0101000020DB0B00000BE62C9BCC6E524151876EFDDA0A5441	Alta videregående skole	1005927	974622750	11	13	postmottak@tffk.no	Troms og Finnmark fylkeskommune	922420866	\N	\N	236	Skoleveien 15	9510	ALTA	\N	9510	\N	alta.vgs@tffk.no	78964500	www.alta.vgs.no/	809d4606-a6f1-4654-8b61-156e2e9eab50	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:26:05+01	\N	Offentlig	54	Ja	5403	63
540	VideregåendeSkole	0101000020DB0B000071C4BA612B855041994D52FE2C114F41	Akademiet Ypsilon videregående skole AS	1009831	988938424	11	13	ypsilon@akademiet.no	Akademiet Ypsilon videregående skole AS	988930695	32808340	200	32	Landfalløya 26	3023	DRAMMEN	\N	3023	\N	ypsilon@akademiet.no	32808340	www.akademiet.no	78eedb81-c5e9-4bdb-a6cb-819bce70044c	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 10:15:38+01	\N	Privat	30	Ja	3005	63
541	VideregåendeSkole	0101000020DB0B000053538FA320724F414E008EB667B55041	Akademiet Vgs Ålesund AS	1009130	984800746	11	13	alesund@akademiet.no	Akademiet Vgs Ålesund AS	884744342	70134210	\N	56	Molovegen 5	6004	ÅLESUND	Postboks 943  Sentrum	6004	Ålesund	alesund@akademiet.no	70134210	\N	6870505c-98b0-464c-98ed-cac44a315ad4	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-10-12 11:04:06+02	\N	Privat	15	Ja	1507	63
542	VideregåendeSkole	0101000020DB0B000053538FA320724F414E008EB667B55041	Akademiet Vgs Møre AS	1003954	888535322	11	13	molde@akademiet.no	Akademiet Vgs Møre AS	981120973	71255122	\N	28	Molovegen 5	6004	ÅLESUND	Postboks 943	6004	Ålesund	more@akademiet.no	71255122	\N	3dde6862-6efb-424a-89e7-ef638dc8c2cb	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-09-13 10:41:43+02	\N	Privat	15	Ja	1507	63
543	VideregåendeSkole	0101000020DB0B000071C4BA612B855041994D52FE2C114F41	Akademiet Vgs Heltberg Drammen AS	1010645	996789845	11	13	drammen@heltberg.no	Akademiet Vgs Heltberg Drammen AS	996768406	31011955	120	29	Landfalløya 26	3023	DRAMMEN	\N	3023	\N	drammen@heltberg.no	31011955	www.heltberg.no	7dfb572a-9e02-4b85-b618-c46cdc17b2c0	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-09-14 10:23:17+02	\N	Privat	30	Ja	3005	63
544	VideregåendeSkole	0101000020DB0B00004FD331E6CBA35041AAFA1F447D374F41	Akademiet Vgs Heltberg Bislett AS	1009830	988938386	11	13	bislett@akademiet.no	Akademiet Vgs Heltberg Bislett AS	988930687	93077990	\N	39	Pilestredet 56	0167	OSLO	Postboks 3630 BISLETT	0167	Oslo	bislett@akademiet.no	93077990	www.akademiet.no	1d39eee1-03d7-4436-b865-7e2a861afb30	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 10:15:33+01	\N	Privat	03	Ja	0301	63
545	VideregåendeSkole	0101000020DB0B0000335EFFFF8598504159A79B8879304F41	Akademiet Realfagsgymnas Sandvika AS	1027686	921204353	11	13	sandvika@akademiet.no	Akademiet Realfagsgymnas Sandvika AS	998060257	\N	125	26	Otto Sverdrups plass 4	1337	SANDVIKA	\N	1337	\N	liv.bjoerkgaard@akademiet.no	96008199	www.akademiet.no	70626a1f-d4cd-49b2-8e52-ac9358ae3a07	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-17 09:18:27+01	\N	Privat	30	Ja	3024	63
546	VideregåendeSkole	0101000020DB0B00004FD331E6CBA35041AAFA1F447D374F41	Akademiet Oslo AS	1003934	887664102	11	13	oslo@akademiet.no	Akademiet Oslo AS	987619295	22466900	\N	132	Pilestredet 56	0167	OSLO	Postboks 3630 Bislett	0167	Oslo	oslo@akademiet.no	22466900	www.akademiet.no	653634ea-f887-491a-b571-73773b3de3fd	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:44:14+01	\N	Privat	03	Ja	0301	63
547	VideregåendeSkole	0101000020DB0B000055FA5AB73C0A50417F047F5FD9B94D41	Akademiet Kristiansand AS	1008885	982759846	11	13	kristiansand@akademiet.no	Akademiet Kristiansand AS	980412024	38000000	\N	12	Stadionveien 21	4632	KRISTIANSAND S	\N	4632	\N	kristiansand@akademiet.no	93033808	www.akademiet.no	7f537b78-06a3-46d7-aabd-3091ec8d7926	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 10:12:52+01	\N	Privat	42	Ja	4204	63
548	VideregåendeSkole	0101000020DB0B000053538FA320724F414E008EB667B55041	Akademiet Heltberg Toppidrettsgymnas Ålesund AS	1011708	911770172	11	13	alesund@heltberg.no	Akademiet Heltberg Toppidrettsgymnas Ålesund AS	811731242	70134210	\N	38	Molovegen 5	6004	ÅLESUND	Postboks 943  Sentrum	6004	Ålesund	alesund@heltberg.no	70134210	www.heltberg.no	23f862bd-a3ee-4eca-9bb3-f6295063539d	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 09:19:07+01	\N	Privat	15	Ja	1507	63
549	VideregåendeSkole	0101000020DB0B0000DCDA1E4FA9AF50416483E056B69D4E41	Akademiet Fredrikstad AS	1009756	988519480	11	13	fredrikstad@akademiet.no	Akademiet Fredrikstad AS	988467944	\N	90	28	Stadion 13	1671	KRÅKERØY	Postboks 550 Vestre Glemmen	1671	Fredrikstad	fredrikstad@akademiet.no	\N	www.akademiet.no	3fdb0e40-420d-40ee-b92b-fb46bb7b16cf	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-13 10:14:59+01	\N	Privat	30	Ja	3004	63
550	VideregåendeSkole	0101000020DB0B0000AA9A2209BE8550412B9979995C0F4F41	Akademiet Drammen AS	1009180	985500568	11	13	drammen@akademiet.no	Akademiet Drammen AS	985475296	32807600	330	33	Bygg C Skogliveien 4	3047	DRAMMEN	\N	3047	\N	drammen@akademiet.no	32807600	www.akademiet.no	7ff7a6cf-1f33-4345-82b0-f596fcf7a586	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-09-13 11:08:34+02	\N	Privat	30	Ja	3005	99
551	VideregåendeSkole	0101000020DB0B0000F049240183FF4E417C91DEE837AC4F41	Akademiet Bergen Fpg AS	1009363	986900055	11	13	bergen@akademiet.no	Akademiet Bergen Fpg AS	886897502	55323231	125	22	Jonas Reins gate 4	5008	BERGEN	\N	5008	\N	bergen@akademiet.no	55323231	www.akademiet.no	d6100b03-8feb-4c97-a333-cd685552cf20	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-09-13 10:33:28+02	\N	Privat	46	Ja	4601	63
552	VideregåendeSkole	0101000020DB0B00008A5BF85CF0A350414E14377920235141	Aglo videregående skole	1010077	991025057	11	13	aglo@aglo.no	Aglo videregående skole	989004255	74834330	\N	57	Fløanvegen 89	7510	SKATVAL	\N	7510	\N	aglo@aglo.no	\N	aglo.no	f2c0aaca-b7a4-4158-8d6b-ba1fb9645b5f	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-11-14 19:17:06+01	\N	Privat	50	Ja	5035	63
553	VideregåendeSkole	0101000020DB0B0000A030D71D72134F41BF1D77A16E734E41	Acta bibelskole	1004420	973798995	11	13	acta@imikirken.no	Acta-Imi Kirkens bibelskole	871547262	51842160	\N	14	Gunnar Warebergs gate 15	4021	STAVANGER	\N	4021	\N	acta@imikirken.no	51842160	\N	c778b627-5592-4b73-a015-5ca27f4b6a1a	https://data.geonorge.no/sosi/befolkning/videregaende	20190301	2022-12-05 20:01:02+01	2022-10-12 10:48:45+02	\N	Privat	11	Ja	1103	63
\.


--
-- PostgreSQL database dump complete
--

