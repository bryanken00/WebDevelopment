-- ref2 to ref32
UPDATE `tblordercheckout`
SET `OrderDate` = 
    CASE
        WHEN `OrderRefNumber` = 'ref2' THEN '2019-01-01 20:12:42'
        WHEN `OrderRefNumber` = 'ref3' THEN '2019-01-02 20:13:06'
        -- Add more WHEN clauses for other references
        WHEN `OrderRefNumber` = 'ref4' THEN '2019-01-03 22:21:24'
        WHEN `OrderRefNumber` = 'ref5' THEN '2019-01-04 22:22:04'
        WHEN `OrderRefNumber` = 'ref6' THEN '2019-01-05 22:23:57'
        WHEN `OrderRefNumber` = 'ref7' THEN '2019-01-06 22:24:50'
        WHEN `OrderRefNumber` = 'ref8' THEN '2019-01-07 22:25:45'
        WHEN `OrderRefNumber` = 'ref9' THEN '2019-01-08 22:26:22'
        WHEN `OrderRefNumber` = 'ref10' THEN '2019-01-09 22:27:01'
        WHEN `OrderRefNumber` = 'ref11' THEN '2019-01-10 22:27:25'
        WHEN `OrderRefNumber` = 'ref12' THEN '2019-01-11 22:27:53'
        WHEN `OrderRefNumber` = 'ref13' THEN '2019-01-12 20:51:52'
        WHEN `OrderRefNumber` = 'ref14' THEN '2019-01-13 20:51:52'
        WHEN `OrderRefNumber` = 'ref15' THEN '2019-01-14 20:52:22'
        WHEN `OrderRefNumber` = 'ref16' THEN '2019-01-15 20:54:32'
        WHEN `OrderRefNumber` = 'ref17' THEN '2019-01-16 20:55:01'
        WHEN `OrderRefNumber` = 'ref18' THEN '2019-01-17 20:55:38'
        WHEN `OrderRefNumber` = 'ref19' THEN '2019-01-18 21:23:48'
        WHEN `OrderRefNumber` = 'ref20' THEN '2019-01-19 10:15:18'
        WHEN `OrderRefNumber` = 'ref21' THEN '2019-01-20 10:17:26'
        WHEN `OrderRefNumber` = 'ref22' THEN '2019-01-21 10:21:52'
        WHEN `OrderRefNumber` = 'ref23' THEN '2019-01-22 10:22:56'
        WHEN `OrderRefNumber` = 'ref24' THEN '2019-01-23 10:24:28'
        WHEN `OrderRefNumber` = 'ref25' THEN '2019-01-24 10:25:51'
        WHEN `OrderRefNumber` = 'ref26' THEN '2019-01-25 10:35:26'
        WHEN `OrderRefNumber` = 'ref27' THEN '2019-01-26 10:36:23'
        WHEN `OrderRefNumber` = 'ref28' THEN '2019-01-27 10:38:35'
        WHEN `OrderRefNumber` = 'ref29' THEN '2019-01-28 10:39:06'
        WHEN `OrderRefNumber` = 'ref30' THEN '2019-01-29 11:28:08'
        WHEN `OrderRefNumber` = 'ref31' THEN '2019-01-30 11:33:26'
        WHEN `OrderRefNumber` = 'ref32' THEN '2019-01-31 11:34:20'
    END
WHERE `OrderRefNumber` IN ('ref2', 'ref3', 'ref4', 'ref5', 'ref6', 'ref7', 'ref8', 'ref9', 'ref10', 'ref11', 'ref12', 'ref13', 'ref14', 'ref15', 'ref16', 'ref17', 'ref18', 'ref19', 'ref20', 'ref21', 'ref22', 'ref23', 'ref24', 'ref25', 'ref26', 'ref27', 'ref28', 'ref29', 'ref30', 'ref31', 'ref32');


-- ref33 to ref63
UPDATE `tblordercheckout`
SET `OrderDate` = 
    CASE
        WHEN `OrderRefNumber` = 'ref33' THEN '2020-01-01 11:46:12'
        WHEN `OrderRefNumber` = 'ref34' THEN '2020-01-02 11:46:50'
        WHEN `OrderRefNumber` = 'ref35' THEN '2020-01-03 11:47:29'
        WHEN `OrderRefNumber` = 'ref36' THEN '2020-01-04 11:52:02'
        WHEN `OrderRefNumber` = 'ref37' THEN '2020-01-05 12:02:17'
        WHEN `OrderRefNumber` = 'ref38' THEN '2020-01-06 12:08:20'
        WHEN `OrderRefNumber` = 'ref39' THEN '2020-01-07 12:09:19'
        WHEN `OrderRefNumber` = 'ref40' THEN '2020-01-08 12:10:01'
        WHEN `OrderRefNumber` = 'ref41' THEN '2020-01-09 14:51:55'
        WHEN `OrderRefNumber` = 'ref42' THEN '2020-01-10 20:04:38'
        WHEN `OrderRefNumber` = 'ref43' THEN '2020-01-11 20:07:44'
        WHEN `OrderRefNumber` = 'ref44' THEN '2020-01-12 20:13:33'
        WHEN `OrderRefNumber` = 'ref45' THEN '2020-01-13 20:43:08'
        WHEN `OrderRefNumber` = 'ref46' THEN '2020-01-14 20:44:52'
        WHEN `OrderRefNumber` = 'ref47' THEN '2020-01-15 20:45:30'
        WHEN `OrderRefNumber` = 'ref48' THEN '2020-01-16 20:46:24'
        WHEN `OrderRefNumber` = 'ref49' THEN '2020-01-17 20:48:24'
        WHEN `OrderRefNumber` = 'ref50' THEN '2020-01-18 20:49:38'
        WHEN `OrderRefNumber` = 'ref51' THEN '2020-01-19 20:50:03'
        WHEN `OrderRefNumber` = 'ref52' THEN '2020-01-20 20:50:47'
        WHEN `OrderRefNumber` = 'ref53' THEN '2020-01-21 20:51:14'
        WHEN `OrderRefNumber` = 'ref54' THEN '2020-01-22 20:52:51'
        WHEN `OrderRefNumber` = 'ref55' THEN '2020-01-23 20:53:18'
        WHEN `OrderRefNumber` = 'ref56' THEN '2020-01-24 20:54:29'
        WHEN `OrderRefNumber` = 'ref57' THEN '2020-01-25 20:56:21'
        WHEN `OrderRefNumber` = 'ref58' THEN '2020-01-26 21:14:15'
        WHEN `OrderRefNumber` = 'ref59' THEN '2020-01-27 21:15:51'
        WHEN `OrderRefNumber` = 'ref60' THEN '2020-01-28 21:17:18'
        WHEN `OrderRefNumber` = 'ref61' THEN '2020-01-29 21:19:08'
        WHEN `OrderRefNumber` = 'ref62' THEN '2020-01-30 21:20:49'
        WHEN `OrderRefNumber` = 'ref63' THEN '2020-01-31 21:23:15'
    END
WHERE `OrderRefNumber` IN ('ref33', 'ref34', 'ref35', 'ref36', 'ref37', 'ref38', 'ref39', 'ref40', 'ref41', 'ref42', 'ref43', 'ref44', 'ref45', 'ref46', 'ref47', 'ref48', 'ref49', 'ref50', 'ref51', 'ref52', 'ref53', 'ref54', 'ref55', 'ref56', 'ref57', 'ref58', 'ref59', 'ref60', 'ref61', 'ref62', 'ref63');


-- ref64 to ref94
UPDATE `tblordercheckout`
SET `OrderDate` = 
    CASE
        WHEN `OrderRefNumber` = 'ref64' THEN '2021-01-01 21:25:12'
        WHEN `OrderRefNumber` = 'ref65' THEN '2021-01-02 21:25:57'
        WHEN `OrderRefNumber` = 'ref66' THEN '2021-01-03 21:27:51'
        WHEN `OrderRefNumber` = 'ref67' THEN '2021-01-04 21:28:08'
        WHEN `OrderRefNumber` = 'ref68' THEN '2021-01-05 21:29:06'
        WHEN `OrderRefNumber` = 'ref69' THEN '2021-01-06 21:29:54'
        WHEN `OrderRefNumber` = 'ref70' THEN '2021-01-07 21:31:18'
        WHEN `OrderRefNumber` = 'ref71' THEN '2021-01-08 21:32:52'
        WHEN `OrderRefNumber` = 'ref72' THEN '2021-01-09 21:33:36'
        WHEN `OrderRefNumber` = 'ref73' THEN '2021-01-10 21:35:47'
        WHEN `OrderRefNumber` = 'ref74' THEN '2021-01-11 21:39:58'
        WHEN `OrderRefNumber` = 'ref75' THEN '2021-01-12 21:42:34'
        WHEN `OrderRefNumber` = 'ref76' THEN '2021-01-13 21:43:35'
        WHEN `OrderRefNumber` = 'ref77' THEN '2021-01-14 21:45:56'
        WHEN `OrderRefNumber` = 'ref78' THEN '2021-01-15 21:46:48'
        WHEN `OrderRefNumber` = 'ref79' THEN '2021-01-16 21:47:56'
        WHEN `OrderRefNumber` = 'ref80' THEN '2021-01-17 21:49:33'
        WHEN `OrderRefNumber` = 'ref81' THEN '2021-01-18 21:49:37'
        WHEN `OrderRefNumber` = 'ref82' THEN '2021-01-19 21:50:50'
        WHEN `OrderRefNumber` = 'ref83' THEN '2021-01-20 21:51:19'
        WHEN `OrderRefNumber` = 'ref84' THEN '2021-01-21 21:53:08'
        WHEN `OrderRefNumber` = 'ref85' THEN '2021-01-22 21:53:34'
        WHEN `OrderRefNumber` = 'ref86' THEN '2021-01-23 21:53:40'
        WHEN `OrderRefNumber` = 'ref87' THEN '2021-01-24 21:54:27'
        WHEN `OrderRefNumber` = 'ref88' THEN '2021-01-25 21:54:59'
        WHEN `OrderRefNumber` = 'ref89' THEN '2021-01-26 21:55:46'
        WHEN `OrderRefNumber` = 'ref90' THEN '2021-01-27 21:57:11'
        WHEN `OrderRefNumber` = 'ref91' THEN '2021-01-28 21:57:47'
        WHEN `OrderRefNumber` = 'ref92' THEN '2021-01-29 21:58:27'
        WHEN `OrderRefNumber` = 'ref93' THEN '2021-01-30 21:59:04'
        WHEN `OrderRefNumber` = 'ref94' THEN '2021-01-31 21:59:27'
    END
WHERE `OrderRefNumber` IN ('ref64', 'ref65', 'ref66', 'ref67', 'ref68', 'ref69', 'ref70', 'ref71', 'ref72', 'ref73', 'ref74', 'ref75', 'ref76', 'ref77', 'ref78', 'ref79', 'ref80', 'ref81', 'ref82', 'ref83', 'ref84', 'ref85', 'ref86', 'ref87', 'ref88', 'ref89', 'ref90', 'ref91', 'ref92', 'ref93', 'ref94');


-- ref95 to ref125
UPDATE `tblordercheckout`
SET `OrderDate` = 
    CASE
        WHEN `OrderRefNumber` = 'ref95' THEN '2022-01-01 21:59:48'
        WHEN `OrderRefNumber` = 'ref96' THEN '2022-01-02 22:00:27'
        WHEN `OrderRefNumber` = 'ref97' THEN '2022-01-03 22:01:07'
        WHEN `OrderRefNumber` = 'ref98' THEN '2022-01-04 22:01:40'
        WHEN `OrderRefNumber` = 'ref99' THEN '2022-01-05 22:02:10'
        WHEN `OrderRefNumber` = 'ref100' THEN '2022-01-06 22:02:31'
        WHEN `OrderRefNumber` = 'ref101' THEN '2022-01-07 22:03:06'
        WHEN `OrderRefNumber` = 'ref102' THEN '2022-01-08 22:03:37'
        WHEN `OrderRefNumber` = 'ref103' THEN '2022-01-09 22:03:58'
        WHEN `OrderRefNumber` = 'ref104' THEN '2022-01-10 22:04:36'
        WHEN `OrderRefNumber` = 'ref105' THEN '2022-01-11 22:05:36'
        WHEN `OrderRefNumber` = 'ref106' THEN '2022-01-12 22:05:40'
        WHEN `OrderRefNumber` = 'ref107' THEN '2022-01-13 22:06:08'
        WHEN `OrderRefNumber` = 'ref108' THEN '2022-01-14 22:06:32'
        WHEN `OrderRefNumber` = 'ref109' THEN '2022-01-15 22:06:54'
        WHEN `OrderRefNumber` = 'ref110' THEN '2022-01-16 22:08:05'
        WHEN `OrderRefNumber` = 'ref111' THEN '2022-01-17 22:08:25'
        WHEN `OrderRefNumber` = 'ref112' THEN '2022-01-18 22:09:11'
        WHEN `OrderRefNumber` = 'ref113' THEN '2022-01-19 22:10:00'
        WHEN `OrderRefNumber` = 'ref114' THEN '2022-01-20 22:10:33'
        WHEN `OrderRefNumber` = 'ref115' THEN '2022-01-21 22:10:59'
        WHEN `OrderRefNumber` = 'ref116' THEN '2022-01-22 22:12:03'
        WHEN `OrderRefNumber` = 'ref117' THEN '2022-01-23 22:12:47'
        WHEN `OrderRefNumber` = 'ref118' THEN '2022-01-24 22:12:48'
        WHEN `OrderRefNumber` = 'ref119' THEN '2022-01-25 22:13:16'
        WHEN `OrderRefNumber` = 'ref120' THEN '2022-01-26 22:13:22'
        WHEN `OrderRefNumber` = 'ref121' THEN '2022-01-27 22:13:48'
        WHEN `OrderRefNumber` = 'ref122' THEN '2022-01-28 22:14:23'
        WHEN `OrderRefNumber` = 'ref123' THEN '2022-01-29 22:14:58'
        WHEN `OrderRefNumber` = 'ref124' THEN '2022-01-30 22:15:51'
        WHEN `OrderRefNumber` = 'ref125' THEN '2022-01-31 22:16:18'
    END
WHERE `OrderRefNumber` IN ('ref95', 'ref96', 'ref97', 'ref98', 'ref99', 'ref100', 'ref101', 'ref102', 'ref103', 'ref104', 'ref105', 'ref106', 'ref107', 'ref108', 'ref109', 'ref110', 'ref111', 'ref112', 'ref113', 'ref114', 'ref115', 'ref116', 'ref117', 'ref118', 'ref119', 'ref120', 'ref121', 'ref122', 'ref123', 'ref124', 'ref125');

-- ref126 to ref156
UPDATE `tblordercheckout`
SET `OrderDate` = 
    CASE
        WHEN `OrderRefNumber` = 'ref126' THEN '2023-01-01 22:16:38'
        WHEN `OrderRefNumber` = 'ref127' THEN '2023-01-02 22:17:01'
        WHEN `OrderRefNumber` = 'ref128' THEN '2023-01-03 22:17:24'
        WHEN `OrderRefNumber` = 'ref129' THEN '2023-01-04 22:18:33'
        WHEN `OrderRefNumber` = 'ref130' THEN '2023-01-05 22:19:26'
        WHEN `OrderRefNumber` = 'ref131' THEN '2023-01-06 22:19:49'
        WHEN `OrderRefNumber` = 'ref132' THEN '2023-01-07 22:20:11'
        WHEN `OrderRefNumber` = 'ref133' THEN '2023-01-08 22:20:47'
        WHEN `OrderRefNumber` = 'ref134' THEN '2023-01-09 22:21:25'
        WHEN `OrderRefNumber` = 'ref135' THEN '2023-01-10 22:22:25'
        WHEN `OrderRefNumber` = 'ref136' THEN '2023-01-11 22:23:04'
        WHEN `OrderRefNumber` = 'ref137' THEN '2023-01-12 22:23:08'
        WHEN `OrderRefNumber` = 'ref138' THEN '2023-01-13 22:32:59'
        WHEN `OrderRefNumber` = 'ref139' THEN '2023-01-14 22:37:06'
        WHEN `OrderRefNumber` = 'ref140' THEN '2023-01-15 22:39:42'
        WHEN `OrderRefNumber` = 'ref141' THEN '2023-01-16 22:40:24'
        WHEN `OrderRefNumber` = 'ref142' THEN '2023-01-17 22:40:52'
        WHEN `OrderRefNumber` = 'ref143' THEN '2023-01-18 22:41:20'
        WHEN `OrderRefNumber` = 'ref144' THEN '2023-01-19 22:41:48'
        WHEN `OrderRefNumber` = 'ref145' THEN '2023-01-20 22:42:26'
        WHEN `OrderRefNumber` = 'ref146' THEN '2023-01-21 22:43:27'
        WHEN `OrderRefNumber` = 'ref147' THEN '2023-01-22 22:43:48'
        WHEN `OrderRefNumber` = 'ref148' THEN '2023-01-23 22:44:33'
        WHEN `OrderRefNumber` = 'ref149' THEN '2023-01-24 22:45:01'
        WHEN `OrderRefNumber` = 'ref150' THEN '2023-01-25 22:45:11'
        WHEN `OrderRefNumber` = 'ref151' THEN '2023-01-26 22:45:38'
        WHEN `OrderRefNumber` = 'ref152' THEN '2023-01-27 22:46:32'
        WHEN `OrderRefNumber` = 'ref153' THEN '2023-01-28 22:47:03'
        WHEN `OrderRefNumber` = 'ref154' THEN '2023-01-29 22:47:10'
        WHEN `OrderRefNumber` = 'ref155' THEN '2023-01-30 22:47:33'
        WHEN `OrderRefNumber` = 'ref156' THEN '2023-01-31 22:48:01'
    END
WHERE `OrderRefNumber` IN ('ref126', 'ref127', 'ref128', 'ref129', 'ref130', 'ref131', 'ref132', 'ref133', 'ref134', 'ref135', 'ref136', 'ref137', 'ref138', 'ref139', 'ref140', 'ref141', 'ref142', 'ref143', 'ref144', 'ref145', 'ref146', 'ref147', 'ref148', 'ref149', 'ref150', 'ref151', 'ref152', 'ref153', 'ref154', 'ref155', 'ref156');
