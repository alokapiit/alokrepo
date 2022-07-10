<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
<!DOCTYPE html>
<html>

<head>
    <title>Search Department</title>
    <link href="./Css/jquery-ui_date.css" rel="stylesheet" type="text/css" />
    <link href="./Css/chegus-infotech-style-Hie.css" rel="stylesheet" type="text/css" />
    <link href="./Css/ui.dropdownchecklist.css" rel="stylesheet" type="text/css" />
    <link href="./Css/datatables.min.css" rel="stylesheet" type="text/css" />
    <link href="./Css/datatable_custom.css" rel="stylesheet" type="text/css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script>
$(document).ready(function(){
  $("#myInput").on("keyup", function() {
    var value = $(this).val().toLowerCase();
    $("#myTable tr").filter(function() {
      $(this).toggle($(this).text().toLowerCase().indexOf(value) > -1)
    });
  });
});
</script>
    
    <style>
    
    .ui-dropdownchecklist
{
	
	background-color: #fff;
font-family:Calibri; font-size:12px; font-weight:normal; color:#000000;   

}
/*.ui-dropdownchecklist-hover, .ui-dropdownchecklist-active
{
	background-image:url(../images/dropdown_hover.png); 
	border-color: #5794bf;
}*/

.ui-dropdownchecklist-text
{
	background-color: #fff;
	font-family:Calibri; font-size:12px;
	height: 20px;
padding-left:5px; padding-right:5px;
	
}
    
    /*
 * This combined file was created by the DataTables downloader builder:
 *   https://datatables.net/download
 *
 * To rebuild or modify this file with the latest versions of the included
 * software please visit:
 *   https://datatables.net/download/#dt/dt-1.10.18
 *
 * Included libraries:
 *   DataTables 1.10.18
 */

table.dataTable{width:100%;margin:0 auto;clear:both;border-collapse:separate;border-spacing:0}table.dataTable thead th,table.dataTable tfoot th{font-weight:bold}table.dataTable thead th,table.dataTable thead td{padding:10px 18px;border-bottom:1px solid #111}table.dataTable thead th:active,table.dataTable thead td:active{outline:none}table.dataTable tfoot th,table.dataTable tfoot td{padding:10px 18px 6px 18px;border-top:1px solid #111}table.dataTable thead .sorting,table.dataTable thead .sorting_asc,table.dataTable thead .sorting_desc,table.dataTable thead .sorting_asc_disabled,table.dataTable thead .sorting_desc_disabled{cursor:pointer;*cursor:hand;background-repeat:no-repeat;background-position:center right}table.dataTable thead .sorting{background-image:url("DataTables-1.10.18/images/sort_both.png")}table.dataTable thead .sorting_asc{background-image:url("DataTables-1.10.18/images/sort_asc.png")}table.dataTable thead .sorting_desc{background-image:url("DataTables-1.10.18/images/sort_desc.png")}table.dataTable thead .sorting_asc_disabled{background-image:url("DataTables-1.10.18/images/sort_asc_disabled.png")}table.dataTable thead .sorting_desc_disabled{background-image:url("DataTables-1.10.18/images/sort_desc_disabled.png")}table.dataTable tbody tr{background-color:#ffffff}table.dataTable tbody tr.selected{background-color:#B0BED9}table.dataTable tbody th,table.dataTable tbody td{padding:8px 10px}table.dataTable.row-border tbody th,table.dataTable.row-border tbody td,table.dataTable.display tbody th,table.dataTable.display tbody td{border-top:1px solid #ddd}table.dataTable.row-border tbody tr:first-child th,table.dataTable.row-border tbody tr:first-child td,table.dataTable.display tbody tr:first-child th,table.dataTable.display tbody tr:first-child td{border-top:none}table.dataTable.cell-border tbody th,table.dataTable.cell-border tbody td{border-top:1px solid #ddd;border-right:1px solid #ddd}table.dataTable.cell-border tbody tr th:first-child,table.dataTable.cell-border tbody tr td:first-child{border-left:1px solid #ddd}table.dataTable.cell-border tbody tr:first-child th,table.dataTable.cell-border tbody tr:first-child td{border-top:none}table.dataTable.stripe tbody tr.odd,table.dataTable.display tbody tr.odd{background-color:#f9f9f9}table.dataTable.stripe tbody tr.odd.selected,table.dataTable.display tbody tr.odd.selected{background-color:#acbad4}table.dataTable.hover tbody tr:hover,table.dataTable.display tbody tr:hover{background-color:#f6f6f6}table.dataTable.hover tbody tr:hover.selected,table.dataTable.display tbody tr:hover.selected{background-color:#aab7d1}table.dataTable.order-column tbody tr>.sorting_1,table.dataTable.order-column tbody tr>.sorting_2,table.dataTable.order-column tbody tr>.sorting_3,table.dataTable.display tbody tr>.sorting_1,table.dataTable.display tbody tr>.sorting_2,table.dataTable.display tbody tr>.sorting_3{background-color:#fafafa}table.dataTable.order-column tbody tr.selected>.sorting_1,table.dataTable.order-column tbody tr.selected>.sorting_2,table.dataTable.order-column tbody tr.selected>.sorting_3,table.dataTable.display tbody tr.selected>.sorting_1,table.dataTable.display tbody tr.selected>.sorting_2,table.dataTable.display tbody tr.selected>.sorting_3{background-color:#acbad5}table.dataTable.display tbody tr.odd>.sorting_1,table.dataTable.order-column.stripe tbody tr.odd>.sorting_1{background-color:#f1f1f1}table.dataTable.display tbody tr.odd>.sorting_2,table.dataTable.order-column.stripe tbody tr.odd>.sorting_2{background-color:#f3f3f3}table.dataTable.display tbody tr.odd>.sorting_3,table.dataTable.order-column.stripe tbody tr.odd>.sorting_3{background-color:whitesmoke}table.dataTable.display tbody tr.odd.selected>.sorting_1,table.dataTable.order-column.stripe tbody tr.odd.selected>.sorting_1{background-color:#a6b4cd}table.dataTable.display tbody tr.odd.selected>.sorting_2,table.dataTable.order-column.stripe tbody tr.odd.selected>.sorting_2{background-color:#a8b5cf}table.dataTable.display tbody tr.odd.selected>.sorting_3,table.dataTable.order-column.stripe tbody tr.odd.selected>.sorting_3{background-color:#a9b7d1}table.dataTable.display tbody tr.even>.sorting_1,table.dataTable.order-column.stripe tbody tr.even>.sorting_1{background-color:#fafafa}table.dataTable.display tbody tr.even>.sorting_2,table.dataTable.order-column.stripe tbody tr.even>.sorting_2{background-color:#fcfcfc}table.dataTable.display tbody tr.even>.sorting_3,table.dataTable.order-column.stripe tbody tr.even>.sorting_3{background-color:#fefefe}table.dataTable.display tbody tr.even.selected>.sorting_1,table.dataTable.order-column.stripe tbody tr.even.selected>.sorting_1{background-color:#acbad5}table.dataTable.display tbody tr.even.selected>.sorting_2,table.dataTable.order-column.stripe tbody tr.even.selected>.sorting_2{background-color:#aebcd6}table.dataTable.display tbody tr.even.selected>.sorting_3,table.dataTable.order-column.stripe tbody tr.even.selected>.sorting_3{background-color:#afbdd8}table.dataTable.display tbody tr:hover>.sorting_1,table.dataTable.order-column.hover tbody tr:hover>.sorting_1{background-color:#eaeaea}table.dataTable.display tbody tr:hover>.sorting_2,table.dataTable.order-column.hover tbody tr:hover>.sorting_2{background-color:#ececec}table.dataTable.display tbody tr:hover>.sorting_3,table.dataTable.order-column.hover tbody tr:hover>.sorting_3{background-color:#efefef}table.dataTable.display tbody tr:hover.selected>.sorting_1,table.dataTable.order-column.hover tbody tr:hover.selected>.sorting_1{background-color:#a2aec7}table.dataTable.display tbody tr:hover.selected>.sorting_2,table.dataTable.order-column.hover tbody tr:hover.selected>.sorting_2{background-color:#a3b0c9}table.dataTable.display tbody tr:hover.selected>.sorting_3,table.dataTable.order-column.hover tbody tr:hover.selected>.sorting_3{background-color:#a5b2cb}table.dataTable.no-footer{border-bottom:1px solid #111}table.dataTable.nowrap th,table.dataTable.nowrap td{white-space:nowrap}table.dataTable.compact thead th,table.dataTable.compact thead td{padding:4px 17px 4px 4px}table.dataTable.compact tfoot th,table.dataTable.compact tfoot td{padding:4px}table.dataTable.compact tbody th,table.dataTable.compact tbody td{padding:4px}table.dataTable th.dt-left,table.dataTable td.dt-left{text-align:left}table.dataTable th.dt-center,table.dataTable td.dt-center,table.dataTable td.dataTables_empty{text-align:center}table.dataTable th.dt-right,table.dataTable td.dt-right{text-align:right}table.dataTable th.dt-justify,table.dataTable td.dt-justify{text-align:justify}table.dataTable th.dt-nowrap,table.dataTable td.dt-nowrap{white-space:nowrap}table.dataTable thead th.dt-head-left,table.dataTable thead td.dt-head-left,table.dataTable tfoot th.dt-head-left,table.dataTable tfoot td.dt-head-left{text-align:left}table.dataTable thead th.dt-head-center,table.dataTable thead td.dt-head-center,table.dataTable tfoot th.dt-head-center,table.dataTable tfoot td.dt-head-center{text-align:center}table.dataTable thead th.dt-head-right,table.dataTable thead td.dt-head-right,table.dataTable tfoot th.dt-head-right,table.dataTable tfoot td.dt-head-right{text-align:right}table.dataTable thead th.dt-head-justify,table.dataTable thead td.dt-head-justify,table.dataTable tfoot th.dt-head-justify,table.dataTable tfoot td.dt-head-justify{text-align:justify}table.dataTable thead th.dt-head-nowrap,table.dataTable thead td.dt-head-nowrap,table.dataTable tfoot th.dt-head-nowrap,table.dataTable tfoot td.dt-head-nowrap{white-space:nowrap}table.dataTable tbody th.dt-body-left,table.dataTable tbody td.dt-body-left{text-align:left}table.dataTable tbody th.dt-body-center,table.dataTable tbody td.dt-body-center{text-align:center}table.dataTable tbody th.dt-body-right,table.dataTable tbody td.dt-body-right{text-align:right}table.dataTable tbody th.dt-body-justify,table.dataTable tbody td.dt-body-justify{text-align:justify}table.dataTable tbody th.dt-body-nowrap,table.dataTable tbody td.dt-body-nowrap{white-space:nowrap}table.dataTable,table.dataTable th,table.dataTable td{box-sizing:content-box}.dataTables_wrapper{position:relative;clear:both;*zoom:1;zoom:1}.dataTables_wrapper .dataTables_length{float:left}.dataTables_wrapper .dataTables_filter{float:right;text-align:right}.dataTables_wrapper .dataTables_filter input{margin-left:0.5em}.dataTables_wrapper .dataTables_info{clear:both;float:left;padding-top:0.755em}.dataTables_wrapper .dataTables_paginate{float:right;text-align:right;padding-top:0.25em}.dataTables_wrapper .dataTables_paginate .paginate_button{box-sizing:border-box;display:inline-block;min-width:1.5em;padding:0.5em 1em;margin-left:2px;text-align:center;text-decoration:none !important;cursor:pointer;*cursor:hand;color:#333 !important;border:1px solid transparent;border-radius:2px}.dataTables_wrapper .dataTables_paginate .paginate_button.current,.dataTables_wrapper .dataTables_paginate .paginate_button.current:hover{color:#333 !important;border:1px solid #979797;background-color:white;background:-webkit-gradient(linear, left top, left bottom, color-stop(0%, #fff), color-stop(100%, #dcdcdc));background:-webkit-linear-gradient(top, #fff 0%, #dcdcdc 100%);background:-moz-linear-gradient(top, #fff 0%, #dcdcdc 100%);background:-ms-linear-gradient(top, #fff 0%, #dcdcdc 100%);background:-o-linear-gradient(top, #fff 0%, #dcdcdc 100%);background:linear-gradient(to bottom, #fff 0%, #dcdcdc 100%)}.dataTables_wrapper .dataTables_paginate .paginate_button.disabled,.dataTables_wrapper .dataTables_paginate .paginate_button.disabled:hover,.dataTables_wrapper .dataTables_paginate .paginate_button.disabled:active{cursor:default;color:#666 !important;border:1px solid transparent;background:transparent;box-shadow:none}.dataTables_wrapper .dataTables_paginate .paginate_button:hover{color:white !important;border:1px solid #111;background-color:#585858;background:-webkit-gradient(linear, left top, left bottom, color-stop(0%, #585858), color-stop(100%, #111));background:-webkit-linear-gradient(top, #585858 0%, #111 100%);background:-moz-linear-gradient(top, #585858 0%, #111 100%);background:-ms-linear-gradient(top, #585858 0%, #111 100%);background:-o-linear-gradient(top, #585858 0%, #111 100%);background:linear-gradient(to bottom, #585858 0%, #111 100%)}.dataTables_wrapper .dataTables_paginate .paginate_button:active{outline:none;background-color:#2b2b2b;background:-webkit-gradient(linear, left top, left bottom, color-stop(0%, #2b2b2b), color-stop(100%, #0c0c0c));background:-webkit-linear-gradient(top, #2b2b2b 0%, #0c0c0c 100%);background:-moz-linear-gradient(top, #2b2b2b 0%, #0c0c0c 100%);background:-ms-linear-gradient(top, #2b2b2b 0%, #0c0c0c 100%);background:-o-linear-gradient(top, #2b2b2b 0%, #0c0c0c 100%);background:linear-gradient(to bottom, #2b2b2b 0%, #0c0c0c 100%);box-shadow:inset 0 0 3px #111}.dataTables_wrapper .dataTables_paginate .ellipsis{padding:0 1em}.dataTables_wrapper .dataTables_processing{position:absolute;top:50%;left:50%;width:100%;height:40px;margin-left:-50%;margin-top:-25px;padding-top:20px;text-align:center;font-size:1.2em;background-color:white;background:-webkit-gradient(linear, left top, right top, color-stop(0%, rgba(255,255,255,0)), color-stop(25%, rgba(255,255,255,0.9)), color-stop(75%, rgba(255,255,255,0.9)), color-stop(100%, rgba(255,255,255,0)));background:-webkit-linear-gradient(left, rgba(255,255,255,0) 0%, rgba(255,255,255,0.9) 25%, rgba(255,255,255,0.9) 75%, rgba(255,255,255,0) 100%);background:-moz-linear-gradient(left, rgba(255,255,255,0) 0%, rgba(255,255,255,0.9) 25%, rgba(255,255,255,0.9) 75%, rgba(255,255,255,0) 100%);background:-ms-linear-gradient(left, rgba(255,255,255,0) 0%, rgba(255,255,255,0.9) 25%, rgba(255,255,255,0.9) 75%, rgba(255,255,255,0) 100%);background:-o-linear-gradient(left, rgba(255,255,255,0) 0%, rgba(255,255,255,0.9) 25%, rgba(255,255,255,0.9) 75%, rgba(255,255,255,0) 100%);background:linear-gradient(to right, rgba(255,255,255,0) 0%, rgba(255,255,255,0.9) 25%, rgba(255,255,255,0.9) 75%, rgba(255,255,255,0) 100%)}.dataTables_wrapper .dataTables_length,.dataTables_wrapper .dataTables_filter,.dataTables_wrapper .dataTables_info,.dataTables_wrapper .dataTables_processing,.dataTables_wrapper .dataTables_paginate{color:#333}.dataTables_wrapper .dataTables_scroll{clear:both}.dataTables_wrapper .dataTables_scroll div.dataTables_scrollBody{*margin-top:-1px;-webkit-overflow-scrolling:touch}.dataTables_wrapper .dataTables_scroll div.dataTables_scrollBody>table>thead>tr>th,.dataTables_wrapper .dataTables_scroll div.dataTables_scrollBody>table>thead>tr>td,.dataTables_wrapper .dataTables_scroll div.dataTables_scrollBody>table>tbody>tr>th,.dataTables_wrapper .dataTables_scroll div.dataTables_scrollBody>table>tbody>tr>td{vertical-align:middle}.dataTables_wrapper .dataTables_scroll div.dataTables_scrollBody>table>thead>tr>th>div.dataTables_sizing,.dataTables_wrapper .dataTables_scroll div.dataTables_scrollBody>table>thead>tr>td>div.dataTables_sizing,.dataTables_wrapper .dataTables_scroll div.dataTables_scrollBody>table>tbody>tr>th>div.dataTables_sizing,.dataTables_wrapper .dataTables_scroll div.dataTables_scrollBody>table>tbody>tr>td>div.dataTables_sizing{height:0;overflow:hidden;margin:0 !important;padding:0 !important}.dataTables_wrapper.no-footer .dataTables_scrollBody{border-bottom:1px solid #111}.dataTables_wrapper.no-footer div.dataTables_scrollHead table.dataTable,.dataTables_wrapper.no-footer div.dataTables_scrollBody>table{border-bottom:none}.dataTables_wrapper:after{visibility:hidden;display:block;content:"";clear:both;height:0}@media screen and (max-width: 767px){.dataTables_wrapper .dataTables_info,.dataTables_wrapper .dataTables_paginate{float:none;text-align:center}.dataTables_wrapper .dataTables_paginate{margin-top:0.5em}}@media screen and (max-width: 640px){.dataTables_wrapper .dataTables_length,.dataTables_wrapper .dataTables_filter{float:none;text-align:center}.dataTables_wrapper .dataTables_filter{margin-top:0.5em}}


    
    @charset "ISO-8859-1";
table.dataTable thead th,
table.dataTable thead td {
    padding: 3px 18px;
    border-bottom: 0px solid;
}

div.dt-buttons {
    position: relative;
    float: right;
    padding-top: 10px;
}

button.dt-button {
    padding: 3px !important;
    border-radius: 6px !important;
    line-height: normal !important;
    margin: 0px;
    background-color: #999880;
    border: 1px solid #cbbb7c;
    padding: 3px 4px 3px 4px;
    border-radius: 5px;
    font-weight: 600;
    font-size: 12px;
    cursor: pointer;
    vertical-align: middle;
    text-decoration: none;
}


/* Table Styles  */

table.dataTable {
    width: 100%;
    background: #F3F3EF;
    position: relative;
    line-height: 20px;
    border-right: 1px solid #cbbb7c;
    border-left: 1px solid #cbbb7c;
    border-bottom: 1px solid #cbbb7c;
    -moz-border-radius: 5px;
    -webkit-border-radius: 5px;
    -ms-border-radius: 5px;
    border-radius: 5px;
    -webkit-box-shadow: 6px 6px 6px #abb7b9;
    -moz-box-shadow: 6px 6px 6px #cbbb7c;
    box-shadow: 6px 6px 6px #abb7b9;
    border-radius: 20px 20px 0px 0px;
}

table.dataTable th {
    border-radius: 0px !important;
}

table.dataTable th:last-child {
    border-radius: 0px 20px 0px 0px !important;
}

table.dataTable th:first-child {
    border-radius: 20px 0px 0px 0px !important;
}

table.dataTable td {
    padding: 5px 5px 5px 5px;
    margin: 0;
}

table.dataTable td:last-child {
    border-bottom-right-radius: 5px;
}

.dataTables_paginate {
    padding-top: 15px !important;
}

table.dataTable.no-footer {
    border-bottom: 0px !important;
}

.dataTables_processing {
    z-index: 99;
    background: #b1b194 !important;
    color: white !important;
    left: 51% !important;
    width: 98% !important;
    height: 20px !important;
}

table.dataTable tbody th,
table.dataTable tbody td {
    padding: 2px 5px !important;
}

.dataTables_info {
    padding-top: 20px !important;
}

#table_id_paginate a {
    color: black;
    padding: 8px 16px;
    text-decoration: none;
    transition: background-color .3s;
    border: 1px solid #ddd;
    margin: 0 4px;
}

#table_id_paginate a.current {
    color: white;
    border: 1px solid #999880;
    background: linear-gradient(to bottom, #999880 0%, #999880 100%) !important;
    background-image: linear-gradient(rgb(153, 152, 128) 0%, rgb(153, 152, 128) 100%) !important;
}

.editedrowstyle {
    background-color: #CBDA76 !important;
}

table.searchTable {
    width: 100%;
    background: #F3F3EF;
    position: relative;
    border-right: 1px solid #cbbb7c;
    border-left: 1px solid #cbbb7c;
    border-bottom: 1px solid #cbbb7c;
    box-shadow: 6px 6px 6px #cbbb7c;
    -webkit-box-shadow: 6px 6px 6px #cbbb7c;
    -moz-box-shadow: 6px 6px 6px #cbbb7c;
}

table.searchTable td:last-child {
    padding-right: 10px;
}

.subHeaderText {
    -moz-border-radius: 20px 20px 0px 0px !important;
    -webkit-border-radius: 20px 20px 0px 0px !important;
    border-radius: 20px 20px 0px 0px !important;
}

.headerText {
    line-height: 30px !important;
}
    
    /*! jQuery UI - v1.9.2 - 2012-11-23
* http://jqueryui.com
* Includes: jquery.ui.core.css, jquery.ui.accordion.css, jquery.ui.autocomplete.css, jquery.ui.button.css, jquery.ui.datepicker.css, jquery.ui.dialog.css, jquery.ui.menu.css, jquery.ui.progressbar.css, jquery.ui.resizable.css, jquery.ui.selectable.css, jquery.ui.slider.css, jquery.ui.spinner.css, jquery.ui.tabs.css, jquery.ui.tooltip.css, jquery.ui.theme.css
* Copyright 2012 jQuery Foundation and other contributors; Licensed MIT */

/* Layout helpers
----------------------------------*/
.ui-helper-hidden { display: none; }
.ui-helper-hidden-accessible { border: 0; clip: rect(0 0 0 0); height: 1px; margin: -1px; overflow: hidden; padding: 0; position: absolute; width: 1px; }
.ui-helper-reset { margin: 0; padding: 0; border: 0; outline: 0; line-height: 1.3; text-decoration: none; font-size: 100%; list-style: none; }
.ui-helper-clearfix:before, .ui-helper-clearfix:after { content: ""; display: table; }
.ui-helper-clearfix:after { clear: both; }
.ui-helper-clearfix { zoom: 1; }
.ui-helper-zfix { width: 100%; height: 100%; top: 0; left: 0; position: absolute; opacity: 0; filter:Alpha(Opacity=0); }

/* Interaction Cues
----------------------------------*/
.ui-state-disabled { cursor: default ; }
.ui-datepicker-trigger{
	width:15px;
	height:15px;
	padding-left:5px;
	}

/* Icons
----------------------------------*/

/* states and ../images */
.ui-icon { display: block; text-indent: -99999px; overflow: hidden; background-repeat: no-repeat; }

.ui-button.ui-widget .ui-button-text{
    width:12px;
	height:12px;
	 }

/* Misc visuals
----------------------------------*/

/* Overlays */
.ui-widget-overlay { position: absolute; top: 0; left: 0; width: 50%; height: 100%; }

.ui-accordion .ui-accordion-header { display: block; cursor: pointer; position: relative; margin-top: 2px; padding: .5em .5em .5em .7em; zoom: 1; }
.ui-accordion .ui-accordion-icons { padding-left: 2.2em; }
.ui-accordion .ui-accordion-noicons { padding-left: .7em; }
.ui-accordion .ui-accordion-icons .ui-accordion-icons { padding-left: 2.2em; }
.ui-accordion .ui-accordion-header .ui-accordion-header-icon { position: absolute; left: .5em; top: 50%; margin-top: -8px; }
.ui-accordion .ui-accordion-content { padding: 1em 2.2em; border-top: 0; overflow: auto; zoom: 1; }

.ui-autocomplete {
	position: absolute;
	top: 0;
	left: 0;
	cursor: default;
}

/* workarounds */
* html .ui-autocomplete { width:1px; } /* without this, the menu expands to 100% in IE6 */

.ui-button { display: inline-block; position: relative; padding: 0; margin-right: .1em; cursor: pointer; text-align: center; zoom: 1; overflow: visible; } /* the overflow property removes extra width in IE */
.ui-button, .ui-button:link, .ui-button:visited, .ui-button:hover, .ui-button:active { text-decoration: none; }
.ui-button-icon-only { width: 2.2em; } /* to make room for the icon, a width needs to be set here */
button.ui-button-icon-only { width: 2.4em; } /* button elements seem to need a little more width */
.ui-button-icons-only { width: 3.4em; } 
button.ui-button-icons-only { width: 3.7em; } 

/*button text element */
.ui-button .ui-button-text { display: inline-block; line-height: 1.4;  }
.ui-button-text-only .ui-button-text { padding: .1em 1em; }
.ui-button-icon-only .ui-button-text, .ui-button-icons-only .ui-button-text { padding: .4em; text-indent:-9999999px; }
.ui-button-text-icon-primary .ui-button-text, .ui-button-text-icons .ui-button-text { padding: .4em 1em .4em 2.1em; }
.ui-button-text-icon-secondary .ui-button-text, .ui-button-text-icons .ui-button-text { padding: .4em 2.1em .4em 1em; }
.ui-button-text-icons .ui-button-text { padding-left: 2.1em; padding-right: 2.1em; }
/* no icon support for input elements, provide padding by default */
input.ui-button { padding: .4em 1em; }

/*button icon element(s) */
.ui-button-icon-only .ui-icon, .ui-button-text-icon-primary .ui-icon, .ui-button-text-icon-secondary .ui-icon, .ui-button-text-icons .ui-icon, .ui-button-icons-only .ui-icon { position: absolute; top: 50%; margin-top: -8px; }
.ui-button-icon-only .ui-icon { left: 50%; margin-left: -8px; }
.ui-button-text-icon-primary .ui-button-icon-primary, .ui-button-text-icons .ui-button-icon-primary, .ui-button-icons-only .ui-button-icon-primary { left: .5em; }
.ui-button-text-icon-secondary .ui-button-icon-secondary, .ui-button-text-icons .ui-button-icon-secondary, .ui-button-icons-only .ui-button-icon-secondary { right: .5em; }
.ui-button-text-icons .ui-button-icon-secondary, .ui-button-icons-only .ui-button-icon-secondary { right: .5em; }

/*button sets*/
.ui-buttonset { margin-right: 7px; }
.ui-buttonset .ui-button { margin-left: 0; margin-right: -.3em; }

/* workarounds */
button.ui-button::-moz-focus-inner { border: 0; padding: 0;  } /* reset extra padding in Firefox */

.ui-datepicker { width: 10em; padding: .1em .1em 0; display: none; ; }
.ui-datepicker .ui-datepicker-header { position:relative; padding:.0em 0; background-color:rgb(243, 243, 239);}
.ui-datepicker .ui-datepicker-prev, .ui-datepicker .ui-datepicker-next { position:absolute; top: 2px; width: 1.5em; height: 1.0em; }
.ui-datepicker .ui-datepicker-prev-hover, .ui-datepicker .ui-datepicker-next-hover { top: 1px;  }
.ui-datepicker .ui-datepicker-prev { left:2px;}
.ui-datepicker .ui-datepicker-next { right:2px; }
.ui-datepicker .ui-datepicker-prev-hover { left:2px; }
.ui-datepicker .ui-datepicker-next-hover { right:2px; }
.ui-datepicker .ui-datepicker-prev span, .ui-datepicker .ui-datepicker-next span { display: none; position: absolute; left: 50%; margin-left: -8px; top: 5%; margin-top: -8px;  }
.ui-datepicker .ui-datepicker-title { margin: 0 0.1em; line-height: 1.8em; text-align:center; }
.ui-datepicker .ui-datepicker-title select { font-size:1em; margin:1px 0;}
.ui-datepicker select.ui-datepicker-month-year {width: 50px; background-color:rgb(0,153,255); }
.ui-datepicker select.ui-datepicker-month {width:3%; font-family:Arial, Helvetica, sans-serif; font-size:12px ; width:auto; }
.ui-datepicker select.ui-datepicker-year { width:3%; font-family:Arial, Helvetica, sans-serif; font-size:12px; width:auto;}
.ui-datepicker table {width: 100%;
	font-size: .9em;
	border-collapse: collapse;
	margin: 0 0 .4em;
	line-height: 10px;
	}
	.ui-datepicker table thead { padding: .1em .1em; text-align: center; font-weight:normal; font-size:12px; border-radius:0 !important; height: 14px !important;}
.ui-datepicker table th { padding: .1em .1em; text-align: center; font-weight:normal; font-size:12px; border-radius:0 !important; height: 14px !important;}
/*anitha changed the bg color*/
.ui-datepicker table td { padding: 2px; background-color:#ffffff;}
.ui-datepicker table td span, .ui-datepicker table td a { display: block;
	padding: .2em;
	text-align: right;
	text-decoration: none; }
.ui-datepicker .ui-datepicker-buttonpane { background-image: none; margin: .7em 0 0 0; padding:0 .2em; border-left: 0; border-right: 0; border-bottom: 0; }
.ui-datepicker .ui-datepicker-buttonpane button { float: right; margin: .5em .2em .4em; cursor: pointer; padding: .2em .4em .3em .6em; width:auto; overflow:visible; }
.ui-datepicker .ui-datepicker-buttonpane button.ui-datepicker-current { float:left; color:rgb(0,153,153);  }

/* with multiple calendars */
.ui-datepicker.ui-datepicker-multi { width:10; }
.ui-datepicker-multi .ui-datepicker-group { float:right; }
.ui-datepicker-multi .ui-datepicker-group table { width:55%; margin:0 auto .0em; }
.ui-datepicker-multi-2 .ui-datepicker-group { width:50%; }
.ui-datepicker-multi-3 .ui-datepicker-group { width:33.3%; }
.ui-datepicker-multi-4 .ui-datepicker-group { width:25%; }
.ui-datepicker-multi .ui-datepicker-group-last .ui-datepicker-header { border-left-width:8px; }
.ui-datepicker-multi .ui-datepicker-group-middle .ui-datepicker-header { border-left-width:8px; }
.ui-datepicker-multi .ui-datepicker-buttonpane { clear:left; }
.ui-datepicker-row-break { clear:both; width:100%; font-size:0em; }

/* RTL support */
.ui-datepicker-rtl { direction: rtl;}
.ui-datepicker-rtl .ui-datepicker-prev { right: 2px; left: auto; }
.ui-datepicker-rtl .ui-datepicker-next { left: 2px; right: auto; }
.ui-datepicker-rtl .ui-datepicker-prev:hover { right: 1px; left: auto; }
.ui-datepicker-rtl .ui-datepicker-next:hover { left: 1px; right: auto; }

.ui-datepicker-rtl .ui-datepicker-buttonpane { clear:right; }
.ui-datepicker-rtl .ui-datepicker-buttonpane button { float: left; }
.ui-datepicker-rtl .ui-datepicker-buttonpane button.ui-datepicker-current { }
.ui-datepicker-rtl .ui-datepicker-group { float:right; }
.ui-datepicker-rtl .ui-datepicker-group-last .ui-datepicker-header { border-right-width:0; border-left-width:1px; }
.ui-datepicker-rtl .ui-datepicker-group-middle .ui-datepicker-header { border-right-width:0; border-left-width:1px; }

/* IE6 IFRAME FIX (taken from datepicker 1.5.3 */
.ui-datepicker-cover {
    position: absolute; /*must have*/
    z-index: -1; /*must have*/
    filter: mask(); /*must have*/
    top: -4px; /*must have*/
    left: -4px; /*must have*/
    width: 200px; /*must have*/
    height: 200px; /*must have*/
}
.ui-dialog { position: absolute; top: 0; left: 0; padding: .2em; width: 300px; overflow: hidden; }
.ui-dialog .ui-dialog-titlebar { padding: .4em 1em; position: relative;  }
.ui-dialog .ui-dialog-title { float: left; margin: .1em 16px .1em 0; }
.ui-dialog .ui-dialog-titlebar-close { position: absolute; right: .1em; top: 50%; width: 19px; margin: -10px 0 0 0; padding: 1px; height: 18px; }
.ui-dialog .ui-dialog-titlebar-close span { display: block; margin: 1px; }
.ui-dialog .ui-dialog-titlebar-close:hover, .ui-dialog .ui-dialog-titlebar-close:focus { padding: 0; }
.ui-dialog .ui-dialog-content { position: relative; border: 0; padding: .5em 1em; background: none;
 overflow: auto; zoom: 1; }
.ui-dialog .ui-dialog-buttonpane { text-align: left; border-width: 1px 0 0 0; background-image: none; margin: .5em 0 0 0; padding: .3em 1em .5em .4em; }
.ui-dialog .ui-dialog-buttonpane .ui-dialog-buttonset { float: right; }
.ui-dialog .ui-dialog-buttonpane button { margin: .5em .4em .5em 0; cursor: pointer; }
.ui-dialog .ui-resizable-se { width: 14px; height: 14px; right: 3px; bottom: 3px; }
.ui-draggable .ui-dialog-titlebar { cursor: move; }

.ui-menu { list-style:none; padding: 2px; margin: 0; display:block; outline: none; }
.ui-menu .ui-menu { margin-top: -3px; position: absolute; }
.ui-menu .ui-menu-item { margin: 0; padding: 0; zoom: 1; width: 100%; }
.ui-menu .ui-menu-divider { margin: 5px -2px 5px -2px; height: 0; font-size: 0; line-height: 0; border-width: 1px 0 0 0; }
.ui-menu .ui-menu-item a { text-decoration: none; display: block; padding: 2px .4em; line-height: 1.5; zoom: 1; font-weight: normal; }
.ui-menu .ui-menu-item a.ui-state-focus,
.ui-menu .ui-menu-item a.ui-state-active { font-weight: normal; margin: -1px; }

.ui-menu .ui-state-disabled { font-weight: normal; margin: .4em 0 .2em; line-height: 1.5; }
.ui-menu .ui-state-disabled a { cursor: default; }

/* icon support */
.ui-menu-icons { position: relative; }
.ui-menu-icons .ui-menu-item a { position: relative; padding-left: 2em; }

/* left-aligned */
.ui-menu .ui-icon { position: static; top: .2em; left: .2em; }

/* right-aligned */
.ui-menu .ui-menu-icon { position: static; float: right; }

.ui-progressbar { height:2em; text-align: left; overflow: hidden; }
.ui-progressbar .ui-progressbar-value {margin: -1px; height:100%; }
.ui-resizable { position: relative;}
.ui-resizable-handle { position: absolute;font-size: 0.1px; display: block; }
.ui-resizable-disabled .ui-resizable-handle, .ui-resizable-autohide .ui-resizable-handle { display: none; }
.ui-resizable-n { cursor: n-resize; height: 7px; width: 100%; top: -5px; left: 0; }
.ui-resizable-s { cursor: s-resize; height: 7px; width: 100%; bottom: -5px; left: 0; }
.ui-resizable-e { cursor: e-resize; width: 7px; right: -5px; top: 0; height: 100%; }
.ui-resizable-w { cursor: w-resize; width: 7px; left: -5px; top: 0; height: 100%; }
.ui-resizable-se { cursor: se-resize; width: 12px; height: 12px; right: 1px; bottom: 1px; }
.ui-resizable-sw { cursor: sw-resize; width: 9px; height: 9px; left: -5px; bottom: -5px; }
.ui-resizable-nw { cursor: nw-resize; width: 9px; height: 9px; left: -5px; top: -5px; }
.ui-resizable-ne { cursor: ne-resize; width: 9px; height: 9px; right: -5px; top: -5px;}
.ui-selectable-helper { position: absolute; z-index: 100; border:1px dotted black; }

.ui-slider { position: relative; text-align: left; }
.ui-slider .ui-slider-handle { position: absolute; z-index: 2; width: 1.2em; height: 1.2em; cursor: default; }
.ui-slider .ui-slider-range { position: absolute; z-index: 1; font-size: .7em; display: block; border: 0; background-position: 0 0; }

.ui-slider-horizontal { height: .8em; }
.ui-slider-horizontal .ui-slider-handle { top: -.3em; margin-left: -.6em; }
.ui-slider-horizontal .ui-slider-range { top: 0; height: 100%; }
.ui-slider-horizontal .ui-slider-range-min { left: 0; }
.ui-slider-horizontal .ui-slider-range-max { right: 0; }

.ui-slider-vertical { width: .8em; height: 100px; }
.ui-slider-vertical .ui-slider-handle { left: -.3em; margin-left: 0; margin-bottom: -.6em; }
.ui-slider-vertical .ui-slider-range { left: 0; width: 100%; }
.ui-slider-vertical .ui-slider-range-min { bottom: 0; }
.ui-slider-vertical .ui-slider-range-max { top: 0; }
.ui-spinner { position:relative; display: inline-block; overflow: hidden; padding: 0; vertical-align: middle; }
.ui-spinner-input { border: none; background: none; padding: 0; margin: .2em 0; vertical-align: middle; margin-left: .4em; margin-right: 22px; }
.ui-spinner-button { width: 16px; height: 50%; font-size: .5em; padding: 0; margin: 0; text-align: center; position: absolute; cursor: default; display: block; overflow: hidden; right: 0; }
.ui-spinner a.ui-spinner-button { border-top: none; border-bottom: none; border-right: none; } /* more specificity required here to overide default borders */
.ui-spinner .ui-icon { position: absolute; margin-top: -8px; top: 50%; left: 0; } /* vertical centre icon */
.ui-spinner-up { top: 0; }
.ui-spinner-down { bottom: 0; }

/* TR overrides */
.ui-spinner .ui-icon-triangle-1-s {
	/* need to fix icons sprite */
	background-position:-65px -16px;
}

.ui-tabs { position: relative; padding: .2em; zoom: 1; } /* position: relative prevents IE scroll bug (element with position: relative inside container with overflow: auto appear as "fixed") */
.ui-tabs .ui-tabs-nav { margin: 0; padding: .2em .2em 0; }
.ui-tabs .ui-tabs-nav li { list-style: none; float: left; position: relative; top: 0; margin: 1px .2em 0 0; border-bottom: 0; padding: 0; white-space: nowrap; }
.ui-tabs .ui-tabs-nav li a { float: left; padding: .1em 1em; text-decoration: none; }
.ui-tabs .ui-tabs-nav li.ui-tabs-active { margin-bottom: -1px; padding-bottom: 1px; }
.ui-tabs .ui-tabs-nav li.ui-tabs-active a, .ui-tabs .ui-tabs-nav td.ui-state-disabled a, .ui-tabs .ui-tabs-nav td.ui-tabs-loading a { cursor: text; }
.ui-tabs .ui-tabs-nav li a, .ui-tabs-collapsible .ui-tabs-nav li.ui-tabs-active a { cursor: pointer; } /* first selector in group seems obsolete, but required to overcome bug in Opera applying cursor: text overall if defined elsewhere... */
.ui-tabs .ui-tabs-panel { display: block; border-width: 0; padding: 1em 1.4em; background: none; }

.ui-tooltip {
	padding: 8px;
	position: absolute;
	z-index: 9999;
	max-width: 300px;
	-webkit-box-shadow: 0 0 5px #aaa;
	box-shadow: 0 0 5px #aaa;
}
/* Fades and background-../images don't work well together in IE6, drop the image */
* html .ui-tooltip {
	background-image: none;
}
body .ui-tooltip { border-width: 2px; }

/* Component containers
----------------------------------*/
.ui-widget {font-family: Verdana,Arial,sans-serif/*{ffDefault}*/; font-size: 1.2em/*{fsDefault}*/;}
.ui-widget .ui-widget { font-size: 1em; }
.ui-widget input, .ui-widget select, .ui-widget textarea, .ui-widget button { font-family: Verdana,Arial,sans-serif/*{ffDefault}*/; /*anitha changed*/font-size: 1.5em; }
.ui-widget-content {border: 1px solid #aaaaaa/*{borderColorContent}*/; background: #ffffff/*{bgColorContent}*/ url(../images/ui-bg_flat_75_ffffff_40x100.png) 50%/*{bgContentXPos}*/ 50%/*{bgContentYPos}*/ repeat-x/*{bgContentRepeat}*//*{bgContentRepeat}*/; color: #222222/*{fcContent}*/; }
.ui-widget-content a {color: #222222/*{fcContent}*/; }
.ui-widget-header { border: 1px solid #aaaaaa/*{borderColorHeader}*/; background: #cccccc/*{bgColorHeader}*/ url(../images/ui-bg_highlight-soft_75_cccccc_1x100.png) 50%/*{bgHeaderXPos}*/ 50%/*{bgHeaderYPos}*/ repeat-x/*{bgHeaderRepeat}*//*{bgHeaderRepeat}*/; color: #222222/*{fcHeader}*/; font-weight: bold; }
.ui-widget-header a {color: #222222/*{fcHeader}*/; }

/* Interaction states
----------------------------------*/
.ui-state-default, .ui-widget-content .ui-state-default, .ui-widget-header .ui-state-default { border: 1px solid #d3d3d3/*{borderColorDefault}*/; background: #e6e6e6/*{bgColorDefault}*/ url(../images/ui-bg_glass_75_e6e6e6_1x400.png) 50%/*{bgDefaultXPos}*/ 50%/*{bgDefaultYPos}*/ repeat-x/*{bgDefaultRepeat}*//*{bgDefaultRepeat}*/; font-weight: normal/*{fwDefault}*/; color: #656565/*{fcDefault}*/; /*anitha changed*/ font-size:0.6em; }
.ui-state-default a, .ui-state-default a:link, .ui-state-default a:visited { color: #555555/*{fcDefault}*/; text-decoration: none; }
.ui-state-hover, .ui-widget-content .ui-state-hover, .ui-widget-header .ui-state-hover, .ui-state-focus, .ui-widget-content .ui-state-focus, .ui-widget-header .ui-state-focus { border: 1px solid #999999/*{borderColorHover}*/; background: #dadada/*{bgColorHover}*/ url(../images/ui-bg_glass_75_dadada_1x400.png) 50%/*{bgHoverXPos}*/ 50%/*{bgHoverYPos}*/ repeat-x/*{bgHoverRepeat}*//*{bgHoverRepeat}*/; font-weight: normal/*{fwDefault}*/; color: #212121/*{fcHover}*/; }
.ui-state-hover a, .ui-state-hover a:hover, .ui-state-hover a:link, .ui-state-hover a:visited { color: #212121/*{fcHover}*/; text-decoration: none; }
.ui-state-active, .ui-widget-content .ui-state-active, .ui-widget-header .ui-state-active { border: 1px solid #aaaaaa/*{borderColorActive}*/; background: #ffffff/*{bgColorActive}*/ url(../images/ui-bg_glass_65_ffffff_1x400.png) 50%/*{bgActiveXPos}*/ 50%/*{bgActiveYPos}*/ repeat-x/*{bgActiveRepeat}*//*{bgActiveRepeat}*/; font-weight: normal/*{fwDefault}*/; color: #212121/*{fcActive}*/; }
.ui-state-active a, .ui-state-active a:link, .ui-state-active a:visited { color: #212121/*{fcActive}*/; text-decoration: none; }

/* Interaction Cues
----------------------------------*/
.ui-state-highlight, .ui-widget-content .ui-state-highlight, .ui-widget-header .ui-state-highlight  {border: 1px solid #fcefa1/*{borderColorHighlight}*/; background: #fbf9ee/*{bgColorHighlight}*/ url(../images/ui-bg_glass_55_fbf9ee_1x400.png) 50%/*{bgHighlightXPos}*/ 50%/*{bgHighlightYPos}*/ repeat-x/*{bgHighlightRepeat}*//*{bgHighlightRepeat}*/; color: #363636/*{fcHighlight}*/; }
.ui-state-highlight a, .ui-widget-content .ui-state-highlight a,.ui-widget-header .ui-state-highlight a { color: #363636/*{fcHighlight}*/; }
.ui-state-error, .ui-widget-content .ui-state-error, .ui-widget-header .ui-state-error {border: 1px solid #cd0a0a/*{borderColorError}*/; background: #fef1ec/*{bgColorError}*/ url(../images/ui-bg_glass_95_fef1ec_1x400.png) 50%/*{bgErrorXPos}*/ 50%/*{bgErrorYPos}*/ repeat-x/*{bgErrorRepeat}*//*{bgErrorRepeat}*/; color: #cd0a0a/*{fcError}*/; }
.ui-state-error a, .ui-widget-content .ui-state-error a, .ui-widget-header .ui-state-error a { color: #cd0a0a/*{fcError}*/; }
.ui-state-error-text, .ui-widget-content .ui-state-error-text, .ui-widget-header .ui-state-error-text { color: #cd0a0a/*{fcError}*/; }
.ui-priority-primary, .ui-widget-content .ui-priority-primary, .ui-widget-header .ui-priority-primary { font-weight: bold; }
.ui-priority-secondary, .ui-widget-content .ui-priority-secondary,  .ui-widget-header .ui-priority-secondary { opacity: .7; filter:Alpha(Opacity=70); font-weight: normal; }
.ui-state-disabled, .ui-widget-content .ui-state-disabled, .ui-widget-header .ui-state-disabled { opacity: .35; filter:Alpha(Opacity=35); background-image: none; }
.ui-state-disabled .ui-icon { filter:Alpha(Opacity=35); } /* For IE8 - See #6059 */

/* Icons
----------------------------------*/

/* states and ../images */
.ui-icon { width: 16px; height: 16px; background-image: url(../images/ui-icons_222222_256x240.png)/*{iconsContent}*/; }
.ui-widget-content .ui-icon {background-image: url(../images/ui-icons_222222_256x240.png)/*{iconsContent}*/; }
.ui-widget-header .ui-icon {background-image: url(../images/ui-icons_222222_256x240.png)/*{iconsHeader}*/; }
.ui-state-default .ui-icon { background-image: url(../images/ui-icons_888888_256x240.png)/*{iconsDefault}*/; }
.ui-state-hover .ui-icon, .ui-state-focus .ui-icon {background-image: url(../images/ui-icons_454545_256x240.png)/*{iconsHover}*/; }
.ui-state-active .ui-icon {background-image: url(../images/ui-icons_454545_256x240.png)/*{iconsActive}*/; }
.ui-state-highlight .ui-icon {background-image: url(../images/ui-icons_2e83ff_256x240.png)/*{iconsHighlight}*/; }
.ui-state-error .ui-icon, .ui-state-error-text .ui-icon {background-image: url(../images/ui-icons_cd0a0a_256x240.png)/*{iconsError}*/; }

/* positioning */
.ui-icon-carat-1-n { background-position: 0 0; }
.ui-icon-carat-1-ne { background-position: -16px 0; }
.ui-icon-carat-1-e { background-position: -32px 0; }
.ui-icon-carat-1-se { background-position: -48px 0; }
.ui-icon-carat-1-s { background-position: -64px 0; }
.ui-icon-carat-1-sw { background-position: -80px 0; }
.ui-icon-carat-1-w { background-position: -96px 0; }
.ui-icon-carat-1-nw { background-position: -112px 0; }
.ui-icon-carat-2-n-s { background-position: -128px 0; }
.ui-icon-carat-2-e-w { background-position: -144px 0; }
.ui-icon-triangle-1-n { background-position: 0 -16px; }
.ui-icon-triangle-1-ne { background-position: -16px -16px; }
.ui-icon-triangle-1-e { background-position: -32px -16px; }
.ui-icon-triangle-1-se { background-position: -48px -16px; }
.ui-icon-triangle-1-s { background-position: -64px -16px; }
.ui-icon-triangle-1-sw { background-position: -80px -16px; }
.ui-icon-triangle-1-w { background-position: -96px -16px; }
.ui-icon-triangle-1-nw { background-position: -112px -16px; }
.ui-icon-triangle-2-n-s { background-position: -128px -16px; }
.ui-icon-triangle-2-e-w { background-position: -144px -16px; }
.ui-icon-arrow-1-n { background-position: 0 -32px; }
.ui-icon-arrow-1-ne { background-position: -16px -32px; }
.ui-icon-arrow-1-e { background-position: -32px -32px; }
.ui-icon-arrow-1-se { background-position: -48px -32px; }
.ui-icon-arrow-1-s { background-position: -64px -32px; }
.ui-icon-arrow-1-sw { background-position: -80px -32px; }
.ui-icon-arrow-1-w { background-position: -96px -32px; }
.ui-icon-arrow-1-nw { background-position: -112px -32px; }
.ui-icon-arrow-2-n-s { background-position: -128px -32px; }
.ui-icon-arrow-2-ne-sw { background-position: -144px -32px; }
.ui-icon-arrow-2-e-w { background-position: -160px -32px; }
.ui-icon-arrow-2-se-nw { background-position: -176px -32px; }
.ui-icon-arrowstop-1-n { background-position: -192px -32px; }
.ui-icon-arrowstop-1-e { background-position: -208px -32px; }
.ui-icon-arrowstop-1-s { background-position: -224px -32px; }
.ui-icon-arrowstop-1-w { background-position: -240px -32px; }
.ui-icon-arrowthick-1-n { background-position: 0 -48px; }
.ui-icon-arrowthick-1-ne { background-position: -16px -48px; }
.ui-icon-arrowthick-1-e { background-position: -32px -48px; }
.ui-icon-arrowthick-1-se { background-position: -48px -48px; }
.ui-icon-arrowthick-1-s { background-position: -64px -48px; }
.ui-icon-arrowthick-1-sw { background-position: -80px -48px; }
.ui-icon-arrowthick-1-w { background-position: -96px -48px; }
.ui-icon-arrowthick-1-nw { background-position: -112px -48px; }
.ui-icon-arrowthick-2-n-s { background-position: -128px -48px; }
.ui-icon-arrowthick-2-ne-sw { background-position: -144px -48px; }
.ui-icon-arrowthick-2-e-w { background-position: -160px -48px; }
.ui-icon-arrowthick-2-se-nw { background-position: -176px -48px; }
.ui-icon-arrowthickstop-1-n { background-position: -192px -48px; }
.ui-icon-arrowthickstop-1-e { background-position: -208px -48px; }
.ui-icon-arrowthickstop-1-s { background-position: -224px -48px; }
.ui-icon-arrowthickstop-1-w { background-position: -240px -48px; }
.ui-icon-arrowreturnthick-1-w { background-position: 0 -64px; }
.ui-icon-arrowreturnthick-1-n { background-position: -16px -64px; }
.ui-icon-arrowreturnthick-1-e { background-position: -32px -64px; }
.ui-icon-arrowreturnthick-1-s { background-position: -48px -64px; }
.ui-icon-arrowreturn-1-w { background-position: -64px -64px; }
.ui-icon-arrowreturn-1-n { background-position: -80px -64px; }
.ui-icon-arrowreturn-1-e { background-position: -96px -64px; }
.ui-icon-arrowreturn-1-s { background-position: -112px -64px; }
.ui-icon-arrowrefresh-1-w { background-position: -128px -64px; }
.ui-icon-arrowrefresh-1-n { background-position: -144px -64px; }
.ui-icon-arrowrefresh-1-e { background-position: -160px -64px; }
.ui-icon-arrowrefresh-1-s { background-position: -176px -64px; }
.ui-icon-arrow-4 { background-position: 0 -80px; }
.ui-icon-arrow-4-diag { background-position: -16px -80px; }
.ui-icon-extlink { background-position: -32px -80px; }
.ui-icon-newwin { background-position: -48px -80px; }
.ui-icon-refresh { background-position: -64px -80px; }
.ui-icon-shuffle { background-position: -80px -80px; }
.ui-icon-transfer-e-w { background-position: -96px -80px; }
.ui-icon-transferthick-e-w { background-position: -112px -80px; }
.ui-icon-folder-collapsed { background-position: 0 -96px; }
.ui-icon-folder-open { background-position: -16px -96px; }
.ui-icon-document { background-position: -32px -96px; }
.ui-icon-document-b { background-position: -48px -96px; }
.ui-icon-note { background-position: -64px -96px; }
.ui-icon-mail-closed { background-position: -80px -96px; }
.ui-icon-mail-open { background-position: -96px -96px; }
.ui-icon-suitcase { background-position: -112px -96px; }
.ui-icon-comment { background-position: -128px -96px; }
.ui-icon-person { background-position: -144px -96px; }
.ui-icon-print { background-position: -160px -96px; }
.ui-icon-trash { background-position: -176px -96px; }
.ui-icon-locked { background-position: -192px -96px; }
.ui-icon-unlocked { background-position: -208px -96px; }
.ui-icon-bookmark { background-position: -224px -96px; }
.ui-icon-tag { background-position: -240px -96px; }
.ui-icon-home { background-position: 0 -112px; }
.ui-icon-flag { background-position: -16px -112px; }
.ui-icon-calendar { background-position: -32px -112px; }
.ui-icon-cart { background-position: -48px -112px; }
.ui-icon-pencil { background-position: -64px -112px; }
.ui-icon-clock { background-position: -80px -112px; }
.ui-icon-disk { background-position: -96px -112px; }
.ui-icon-calculator { background-position: -112px -112px; }
.ui-icon-zoomin { background-position: -128px -112px; }
.ui-icon-zoomout { background-position: -144px -112px; }
.ui-icon-search { background-position: -160px -112px; }
.ui-icon-wrench { background-position: -176px -112px; }
.ui-icon-gear { background-position: -192px -112px; }
.ui-icon-heart { background-position: -208px -112px; }
.ui-icon-star { background-position: -224px -112px; }
.ui-icon-link { background-position: -240px -112px; }
.ui-icon-cancel { background-position: 0 -128px; }
.ui-icon-plus { background-position: -16px -128px; }
.ui-icon-plusthick { background-position: -32px -128px; }
.ui-icon-minus { background-position: -48px -128px; }
.ui-icon-minusthick { background-position: -64px -128px; }
.ui-icon-close { background-position: -80px -128px; }
.ui-icon-closethick { background-position: -96px -128px; }
.ui-icon-key { background-position: -112px -128px; }
.ui-icon-lightbulb { background-position: -128px -128px; }
.ui-icon-scissors { background-position: -144px -128px; }
.ui-icon-clipboard { background-position: -160px -128px; }
.ui-icon-copy { background-position: -176px -128px; }
.ui-icon-contact { background-position: -192px -128px; }
.ui-icon-image { background-position: -208px -128px; }
.ui-icon-video { background-position: -224px -128px; }
.ui-icon-script { background-position: -240px -128px; }
.ui-icon-alert { background-position: 0 -144px; }
.ui-icon-info { background-position: -16px -144px; }
.ui-icon-notice { background-position: -32px -144px; }
.ui-icon-help { background-position: -48px -144px; }
.ui-icon-check { background-position: -64px -144px; }
.ui-icon-bullet { background-position: -80px -144px; }
.ui-icon-radio-on { background-position: -96px -144px; }
.ui-icon-radio-off { background-position: -112px -144px; }
.ui-icon-pin-w { background-position: -128px -144px; }
.ui-icon-pin-s { background-position: -144px -144px; }
.ui-icon-play { background-position: 0 -160px; }
.ui-icon-pause { background-position: -16px -160px; }
.ui-icon-seek-next { background-position: -32px -160px; }
.ui-icon-seek-prev { background-position: -48px -160px; }
.ui-icon-seek-end { background-position: -64px -160px; }
.ui-icon-seek-start { background-position: -80px -160px; }
/* ui-icon-seek-first is deprecated, use ui-icon-seek-start instead */
.ui-icon-seek-first { background-position: -80px -160px; }
.ui-icon-stop { background-position: -96px -160px; }
.ui-icon-eject { background-position: -112px -160px; }
.ui-icon-volume-off { background-position: -128px -160px; }
.ui-icon-volume-on { background-position: -144px -160px; }
.ui-icon-power { background-position: 0 -176px; }
.ui-icon-signal-diag { background-position: -16px -176px; }
.ui-icon-signal { background-position: -32px -176px; }
.ui-icon-battery-0 { background-position: -48px -176px; }
.ui-icon-battery-1 { background-position: -64px -176px; }
.ui-icon-battery-2 { background-position: -80px -176px; }
.ui-icon-battery-3 { background-position: -96px -176px; }
.ui-icon-circle-plus { background-position: 0 -192px; }
.ui-icon-circle-minus { background-position: -16px -192px; }
.ui-icon-circle-close { background-position: -32px -192px; }
.ui-icon-circle-triangle-e { background-position: -48px -192px; }
.ui-icon-circle-triangle-s { background-position: -64px -192px; }
.ui-icon-circle-triangle-w { background-position: -80px -192px; }
.ui-icon-circle-triangle-n { background-position: -96px -192px; }
.ui-icon-circle-arrow-e { background-position: -112px -192px; }
.ui-icon-circle-arrow-s { background-position: -128px -192px; }
.ui-icon-circle-arrow-w { background-position: -144px -192px; }
.ui-icon-circle-arrow-n { background-position: -160px -192px; }
.ui-icon-circle-zoomin { background-position: -176px -192px; }
.ui-icon-circle-zoomout { background-position: -192px -192px; }
.ui-icon-circle-check { background-position: -208px -192px; }
.ui-icon-circlesmall-plus { background-position: 0 -208px; }
.ui-icon-circlesmall-minus { background-position: -16px -208px; }
.ui-icon-circlesmall-close { background-position: -32px -208px; }
.ui-icon-squaresmall-plus { background-position: -48px -208px; }
.ui-icon-squaresmall-minus { background-position: -64px -208px; }
.ui-icon-squaresmall-close { background-position: -80px -208px; }
.ui-icon-grip-dotted-vertical { background-position: 0 -224px; }
.ui-icon-grip-dotted-horizontal { background-position: -16px -224px; }
.ui-icon-grip-solid-vertical { background-position: -32px -224px; }
.ui-icon-grip-solid-horizontal { background-position: -48px -224px; }
.ui-icon-gripsmall-diagonal-se { background-position: -64px -224px; }
.ui-icon-grip-diagonal-se { background-position: -80px -224px; }


/* Misc visuals
----------------------------------*/

/* Corner radius */
.ui-corner-all, .ui-corner-top, .ui-corner-left, .ui-corner-tl { -moz-border-radius-topleft: 4px/*{cornerRadius}*/; -webkit-border-top-left-radius: 4px/*{cornerRadius}*/; -khtml-border-top-left-radius: 4px/*{cornerRadius}*/; border-top-left-radius: 4px/*{cornerRadius}*/; }
.ui-corner-all, .ui-corner-top, .ui-corner-right, .ui-corner-tr { -moz-border-radius-topright: 4px/*{cornerRadius}*/; -webkit-border-top-right-radius: 4px/*{cornerRadius}*/; -khtml-border-top-right-radius: 4px/*{cornerRadius}*/; border-top-right-radius: 4px/*{cornerRadius}*/; }
.ui-corner-all, .ui-corner-bottom, .ui-corner-left, .ui-corner-bl { -moz-border-radius-bottomleft: 4px/*{cornerRadius}*/; -webkit-border-bottom-left-radius: 4px/*{cornerRadius}*/; -khtml-border-bottom-left-radius: 4px/*{cornerRadius}*/; border-bottom-left-radius: 4px/*{cornerRadius}*/; }
.ui-corner-all, .ui-corner-bottom, .ui-corner-right, .ui-corner-br { -moz-border-radius-bottomright: 4px/*{cornerRadius}*/; -webkit-border-bottom-right-radius: 4px/*{cornerRadius}*/; -khtml-border-bottom-right-radius: 4px/*{cornerRadius}*/; border-bottom-right-radius: 4px/*{cornerRadius}*/; }

/* Overlays */
.ui-widget-overlay { background: #aaaaaa/*{bgColorOverlay}*/ url(/../images/ui-bg_flat_0_aaaaaa_40x100.png) 50%/*{bgOverlayXPos}*/ 50%/*{bgOverlayYPos}*/ repeat-x/*{bgOverlayRepeat}*//*{bgOverlayRepeat}*/; opacity: .3;filter:Alpha(Opacity=30)/*{opacityOverlay}*/; }
.ui-widget-shadow { margin: -8px/*{offsetTopShadow}*/ 0 0 -8px/*{offsetLeftShadow}*/; padding: 8px/*{thicknessShadow}*/; background: #aaaaaa/*{bgColorShadow}*/ url(/../images/ui-bg_flat_0_aaaaaa_40x100.png) 50%/*{bgShadowXPos}*/ 50%/*{bgShadowYPos}*/ repeat-x/*{bgShadowRepeat}*//*{bgShadowRepeat}*/; opacity: .3;filter:Alpha(Opacity=30)/*{opacityShadow}*/; -moz-border-radius: 8px/*{cornerRadiusShadow}*/; -khtml-border-radius: 8px/*{cornerRadiusShadow}*/; -webkit-border-radius: 8px/*{cornerRadiusShadow}*/; border-radius: 8px/*{cornerRadiusShadow}*/; }

/*anitha added css*/
.ui-datepicker .ui-datepicker-prev span,
.ui-datepicker .ui-datepicker-next span {
	display: block;
	position: absolute;
	left: 50%;
	margin-left: -8px;
	top: 50%;
	margin-top: -8px;
}
.ui-state-default a,
.ui-state-default a:link,
.ui-state-default a:visited {
	color: #555555;
	text-decoration: none;
}
tr {
display: table-row;
vertical-align: inherit;
border-color: inherit;
}
    body {
    margin: 0;
    padding: 0;
    background-color: #FFFFFF;
    font-family: Calibri;
    font-size: 14px;
}

input[type='button'],
input[type='submit'],
input[type='text'],
select,
lable,
table tr td,
h1,
h2,
h3,
fieldset {
    font-family: Calibri;
}

input[type="text"] {
    color: #000000;
    height: 15px;
    font-size: 14px;
    margin-top: 1px;
    margin-bottom: 1px;
}

select {
    color: #000000;
    height: 19px;
    font-size: 14px;
    margin-top: 1px;
    margin-bottom: 1px;
    vertical-align: top;
}

a {
    text-decoration: none;
    color: inherit;
}

a:hover {
    text-decoration: underline;
}

fieldset {
    /* border: 1px solid #cbbb7c; */
    -moz-border-radius: 5px;
    -webkit-border-radius: 5px;
    border-radius: 5px;
    border: 1px solid #d5d7d8;
}

@-moz-document url-prefix() {
    input[type="text"] {
        color: #000000;
        font-size: 14px;
        height: 17px;
        margin-bottom: 1px;
    }
    select {
        color: #000000;
        height: 20px;
        font-size: 14px;
        margin-top: 1px;
        margin-bottom: 1px;
    }
    .dropdown_Fixed {
        font-weight: normal;
        color: #000000;
        width: 90px;
    }
    .dropdown_Free {
        font-weight: normal;
        color: #000000;
    }
    .scrollit {
        height: 70px;
        overflow: scroll;
    }
}


/*footer css*/

.footer {
    background-image: url(../images/nav/repeat.jpg);
    background-position: top;
    height: 20px;
}

.footertxt {
    font-family: Calibri;
    font-size: 11px;
    color: #FFFFFF;
    text-align: center;
}


/*button style general*/

input[type='button'],
input[type='submit'] {
    background-color: #8c9192;
    border: 1px solid #8c9192;
    padding: 3px 4px 3px 4px;
    border-radius: 5px;
    color: #fff;
    font-weight: 600;
    font-size: 12px;
    cursor: pointer;
    vertical-align: middle;
    text-decoration: none;
}

input[type='button']:hover,
input[type='submit']:hover {
    border-color: #cbbb7c;
    background-color: #28597a;
    color: #ccc;
}

input[type='button']:active,
input[type='submit']:active {
    border-color: #cbbb7c;
    background-color: : #28597a;
    color: #FFF;
}

#divbtns {
    float: right;
    vertical-align: central;
}

#divbtns:first-child input {
    margin-right: 5px;
}

#divbtnsQuestionnaire {
    float: left;
    vertical-align: central;
}

#divbtnsQuestionnaire:first-child input {
    margin-right: 5px;
}


/*button style end*/


/*button style normal(img)*/

.AddBtn {
    padding-right: 5px;
    text-decoration: none;
    color: #333333;
    float: right;
    font-weight: 800;
    line-height: 12px;
}


/*button style normal(img end*/


/*labels, text fields, dropdowns style*/

.dropDownNonEdit {
    color: #999;
    width: inherit;
    background-color: #cbd0da !important;
    opacity: 1;
}

.textStyleNonEdit_130 {
    color: #999;
    padding-left: 5px;
    padding-right: 5px;
    width: 130px;
    height: 15px;
    background-color: #cbd0da;
    opacity: 1;
}

.textStyleNonEdit_80 {
    color: #999;
    padding-left: 5px;
    padding-right: 5px;
    width: 80px;
    height: 15px;
    background-color: #cbd0da;
}

.textStyleNonEdit_200 {
    color: #999;
    padding-left: 5px;
    padding-right: 5px;
    width: 200px;
    height: 15px;
    background-color: #cbd0da;
}

.textStyleNonEdit_30 {
    color: #999;
    padding-left: 5px;
    padding-right: 5px;
    width: 30px;
    height: 15px;
    background-color: #cbd0da;
}

.labelTextSearch {
    color: #000000;
    text-align: right;
    text-decoration: none;
    padding-left: 4px;
    padding-bottom: 0px !important;
    padding-top: 0px !important;
    WIDTH: 13%;
    line-height: 20px;
    word-wrap: break-word;
}

td:first-child.labelTextSearch {
    color: #000000;
    text-align: left;
    text-decoration: none;
    padding-left: 4px;
    padding-bottom: 0px !important;
    padding-top: 0px !important;
    WIDTH: 7% !important;
    line-height: 20px !important;
    word-wrap: break-word;
}

.labelTextSearchWidth10 {
    color: #000000;
    text-align: left;
    text-decoration: none;
    padding-left: 4px;
    padding-bottom: 0px !important;
    padding-top: 0px !important;
    WIDTH: 10%;
    line-height: 20px;
    word-wrap: break-word;
}

.fieldTextSearch {
    color: #000000;
    text-align: left;
    text-decoration: none;
    padding-bottom: 1px !important;
    padding-top: 1px !important;
    padding-left: 4px;
    line-height: 20px;
    width: 20%;
}

td:labelTextDetails {
    color: #000000;
    text-align: left;
    text-decoration: none;
    padding-bottom: 0px !important;
    padding-top: 0px !important;
    vertical-align: bottom;
}

td.fieldText {
    color: #000000;
    text-align: left;
    text-decoration: none;
    padding-top: 0px !important;
    width: 20%;
    vertical-align: top;
}

td.fieldTextwidth15 {
    color: #000000;
    text-align: left;
    text-decoration: none;
    padding-top: 0px !important;
    width: 15%;
    vertical-align: top;
}

td.fieldTextwidth12 {
    color: #000000;
    text-align: left;
    text-decoration: none;
    padding-top: 0px !important;
    width: 12%;
    vertical-align: top;
}

td.fieldTextwidth10 {
    color: #000000;
    text-align: left;
    text-decoration: none;
    padding-top: 0px !important;
    width: 10%;
    vertical-align: top;
}

td.fieldTextwidth6 {
    color: #000000;
    text-align: left;
    text-decoration: none;
    padding-top: 0px !important;
    width: 4%;
    vertical-align: top;
}

td.fieldTextwidth8 {
    color: #000000;
    text-align: left;
    text-decoration: none;
    padding-top: 0px !important;
    width: 8%;
    vertical-align: top;
}

td.fieldTextwidth18 {
    color: #000000;
    text-align: left;
    text-decoration: none;
    padding-top: 0px !important;
    width: 18%;
    vertical-align: top;
}

.fieldText_Small {
    color: #000000;
    text-align: left;
    text-decoration: none;
    padding-top: 0px !important;
    width: auto;
    vertical-align: top;
}

.textStyle_30 {
    color: #000000;
    padding-left: 5px;
    padding-right: 5px;
    width: 30px;
}

.textStyle_80 {
    color: #000000;
    padding-left: 5px;
    padding-right: 5px;
    width: 80px;
}

.textStyle_65 {
    color: #000000;
    padding-left: 5px;
    padding-right: 5px;
    width: 65px;
}


/*this has to be removed*/

.textStyle_50 {
    color: #000000;
    padding-left: 5px;
    padding-right: 5px;
    width: 50px;
}

.textStyle_110 {
    color: #000000;
    padding-left: 5px;
    padding-right: 5px;
    width: 108px;
}

.dropdown_Fixed200 {
    font-weight: normal;
    color: #000000;
    width: 214px;
}

.dropdown_Fixed140 {
    font-weight: normal;
    color: #000000;
    width: 140px;
}

.dropdown_Fixed180 {
    font-weight: normal;
    color: #000000;
    width: 186px;
}

.textStyle_350 {
    color: #000000;
    padding-left: 5px;
    padding-right: 5px;
    width: 350px;
}

.textStyle_130 {
    color: #000000;
    padding-left: 5px;
    padding-right: 5px;
    width: 130px;
}

.textStyle_200 {
    color: #000000;
    padding-left: 5px;
    padding-right: 5px;
    width: 200px;
}

.dropdown_Fixed {
    font-weight: normal;
    color: #000000;
    width: 92px;
}

.dropdown_Free {
    font-weight: normal;
    color: #000000;
    width: 92px;
}

legend {
    font-weight: bold;
    left: 5px;
}

.noborder {
    position: relative;
    width: 100%;
    padding-left: 10px;
    padding-right: 10px;
    alignment-adjust: central;
}


/* textArea Style */

.textAreaStyle {
    width: 99.5% !important;
    height: 48px !important;
    vertical-align: middle;
    border: 1px solid #cfcfcf;
    color: #000000;
}

.textAreaStyle30 {
    width: 49.5% !important;
    height: 30px !important;
    vertical-align: middle;
    border: 1px solid #cfcfcf;
    color: #000000;
}


/* end textArea Style */


/* end labels, text fields, dropdowns style*/


/*  PAgination Styles */

.whitearrow {
    float: right;
    /*padding-right: 15px;*/
    padding-top: 3px;
    padding-right: 15px;
}

span.empty {
    font-size: 13px;
    color: #656565;
    padding-left: 50%;
}

.export {
    padding-right: 3px;
    padding-left: 3px;
    padding-top: 3px;
    display: inline-block;
    cursor: pointer;
    color: #FFF;
    font-weight: bold;
    font-size: 12px;
    height: 18px;
    background-color: #999880;
}

.exportlinks {
    color: #002800;
    text-align: right;
    border-top: none;
    margin-bottom: 10px;
    font-size: 13px;
    padding-top: 8px;
    padding-right: 2px;
    font-weight: bold;
}

span.pagebanner {
    text-align: right;
    margin-top: 20px;
    margin-bottom: 5px;
    display: block;
    border-bottom: none;
    font-size: 13px;
    color: #002800;
    font-weight: bold;
    padding-right: 5px;
    padding-top: 4px;
}

span.pagelinks {
    color: #002800;
    text-align: right;
    display: block;
    border-top: none;
    font-size: 13px;
    font-weight: bold;
    padding-right: 2px;
    word-spacing: 4px;
    line-height: 20px;
}

a.icon {
    color: #5a5959;
    text-decoration: none;
}

th.sortable a {
    background-image: url(../images/display_img/arrow_off.png);
    background-repeat: no-repeat;
}

th.order1 a {
    background-image: url(../images/display_img/arrow_down.png);
}

th.order2 a {
    background-image: url(../images/display_img/arrow_up.png);
    width: fixed;
}

th.sorted a,
th.sortable a {
    background-position: right;
    padding-right: 15px;
    position: static;
    text-decoration: none;
    color: #FFFFFF;
    text-align: left;
    width: fixed;
    text-align: right;
}

.next {
    font-size: 12px;
    color: #000000;
    text-decoration: none;
}

.deleteicon {
    padding-right: 8px;
}


/* end PAgination Styles */


/* All Messages Styles */


/* .error {
	color: #ff0000;
} */


/* .errorblock {
	padding: 8px;

	
	color: #FF0000;
	line-height: 20px;
} */

.highlightTable {
    z-index: 100;
    background-position: top;
}

.loginerrormsg {
    font-weight: normal;
    color: #ff0000;
    text-decoration: none;
}

.successmsg {
    /*color: #009900;
	text-align: center;

	
	font-weight: bold;*/
    color: #009900;
    /* text-align: center;	 */
    font-weight: bold;
}

.info,
.success,
.warning,
.errorBlock,
.validation {
    /*border: 1px solid;
	margin: 10px 0px;
	margin-left: 100px;
	margin-right: 100px;
	margin-top: 10px;
	padding: 5px 5px 5px 50px;
	background-repeat: no-repeat;
	background-position: 10px center;
    line-height: 20px;
	font-size: 14px;
	*/
    border: 1px solid;
    margin: 10px 0px;
    text-align: left;
    margin-left: 20%;
    margin-right: 20%;
    margin-top: 10px;
    padding: 5px 5px 5px 50px;
    background-repeat: no-repeat;
    background-position: 10px center;
    line-height: 20px;
    font-size: 14px;
    list-style: none;
}

.info {
    color: #00529B;
    background-color: #BDE5F8;
    background-image: url("../images/info.png");
}

.success {
    color: #4F8A10;
    background-color: #DFF2BF;
    background-image: url(../images/success.png);
    /*width: 33%;*/
}

.errorBlock {
    color: #D8000C;
    background-color: #FFBABA;
    background-image: url("../images/error.png");
}

.warning {
    color: #9F6000;
    background-color: #FEEFB3;
    background-image: url("../images/warning.png");
}

.validation {
    color: #D63301;
    background-color: #FFCCBA;
    background-image: url("../images/validation.png");
}

.Proposal {
    float: right;
    padding-top: 15px;
    padding-right: 3px;
}

.mandatoryField {
    color: red;
    font-size: 15px;
    padding-left: 2px;
    vertical-align: middle;
}

.mandatory {
    color: red;
    padding-left: 3px;
}


/* end All Messages Styles */


/* All Header classes  */

.subHeaderText {
    font-size: 14px;
    color: #000000 !important;
    font-weight: bold;
    background-color: #aab7b9;
    line-height: 18px;
    -moz-border-radius: 5px;
    -webkit-border-radius: 5px;
    border-radius: 5px;
    right: 6px;
    padding: 3px;
    margin: 5px 10px 3px 10px;
    /* text-align: left; */
}

.subHeaderTextSub {
    font-size: 14px;
    color: #FFFFFF;
    font-weight: bold;
    background-color: #b7b6a1;
    line-height: 18px;
    -moz-border-radius: 5px;
    -webkit-border-radius: 5px;
    border-radius: 5px;
    right: 6px;
}

.subHeadertable {
    font-size: 14px;
    color: #FFFFFF;
    font-weight: bold;
    padding-left: 5px;
    background-color: #999880;
    line-height: 18px;
    height: 30px;
    -moz-border-radius: 5px;
    -webkit-border-radius: 5px;
    border-radius: 5px;
    width: 100%;
}

.headerText {
    font-size: 18px;
    font-weight: bold;
    color: #002800;
    padding-left: 2px;
    vertical-align: middle;
    line-height: 45px;
}

.headerText span {
    font-size: 14px;
    font-weight: bold;
    color: #002800;
    vertical-align: middle;
    line-height: 40px;
}

.subHeaderText h3 {
    color: #f2f2f2;
    float: left;
    width: auto;
    margin: 5px 5px 5px 5px;
}

.subHeaderText a {
    color: #f2f2f2;
}

.subBlock {
    font-size: 13px;
    color: #333333;
    font-weight: bold;
    /*background-color: #D3D3D3;*/
    background-color: #d1d0b3;
    line-height: 18px;
    padding-left: 5px;
    -moz-border-radius: 5px;
    -webkit-border-radius: 5px;
    border-radius: 5px;
}


/* End of All Header classes  */


/* Login Page */

.loginbtmbg {
    background-image: url(../images/Login_06.jpg);
    background-repeat: no-repeat;
    background-position: center;
    height: 137px;
    width: 598px;
}

.btmspace {
    padding-top: 20px;
}

.loginbtn {
    height: 53px;
    float: left;
    padding-right: 20px;
    padding-left: 135px;
    padding-top: 16px;
}


/*End of Login Page */


/* Table Styles  */

table.innerTable {
    width: 100%;
    background: #F3F3EF;
    position: relative;
    line-height: 20px;
    border-right: 1px solid #dde3e8;
    border-left: 1px solid #dde3e8;
    border-bottom: 1px solid #dde3e8;
    -moz-border-radius: 5px;
    -webkit-border-radius: 5px;
    -ms-border-radius: 5px;
    border-radius: 5px;
    /* -webkit-box-shadow: 6px 6px 6px #cbbb7c;
    -moz-box-shadow: 6px 6px 6px #cbbb7c;
    box-shadow: 6px 6px 6px #cbbb7c; */
}

table.innerTable td {
    padding: 5px 5px 5px 5px;
    margin: 0;
}

table.innerTable td:last-child {
    border-bottom-right-radius: 5px;
}

tr.odd {
    background: #F3F3EF;
    height: 20px;
}

tr.odd:hover {
    height: 20px;
    text-decoration: none;
    color: #950000;
    background-color: #AAB7B9;
}

tr.even {
    background: #E9E9D1;
    height: 20px;
}

td.even {
    background-color: #E9E9D1;
    -moz-border-radius: 5px;
    -webkit-border-radius: 5px;
}

tr.even:hover {
    height: 20px;
    text-decoration: none;
    color: #950000;
    background-color: #AAB7B9;
}

.mainTable {
    width: 100%;
    position: relative;
    padding-left: 12px;
    padding-right: 12px;
    overflow-x: scroll;
}


/*USED IN CURRENCY CONVERTER*/

.subTable {
    border-right: 1px solid #CCCCCC;
    border-left: 1px solid #CCCCCC;
    border-bottom: 1px solid #CCCCCC;
    border-top: 1px solid #CCCCCC;
    background-color: #FFFAF0;
    float: left;
    padding-left: 50px;
    padding-right: 50px;
}


/* End of Table Styles  */


/* Header Page Styles(top.jsp)  */

.header {
    background-position: top;
    background-repeat: repeat-x;
    height: 30px;
    width: 100%;
}

.helptxt {
    text-decoration: none;
    color: #002800;
}

.helptxt:hover {
    text-decoration: none;
    color: #CC6600;
}

.username {
    font-weight: bold;
    color: #002800;
    margin-top: 5px;
    width: 350px;
    text-decoration: none;
    float: right;
    text-align: left;
}

.username table {
    width: 100%;
}

.username table td:first-child {
    text-align: left !important;
}

.username table td {
    vertical-align: text-bottom;
    text-align: left;
}

.container {
    width: 100%;
}

.logo {
    background-image: url("../images/chegus-infotech.png");
    background-repeat: no-repeat;
    height: 40px;
    width: 164px;
    vertical-align: bottom;
    margin-top: 10px;
    float: left;
    padding: 5px;
}


/* End Header Page Styles  */


/* Home Page (Dashboard)  */

.leftsecstyle {
    border: 1px solid #cfcfcf;
    width: 200px;
    padding-left: 12px;
    padding-right: 12px;
    height: 434px;
    vertical-align: top;
    padding-top: 10px;
}

.dashboardsec {
    border: 1px solid #cfcfcf;
    width: 750px;
    height: 434px;
    vertical-align: top;
}

.vertcaldvdr {
    width: 6px;
}

.dashboardbg {
    background-image: url(../images/dashboard-bg.gif);
    background-repeat: repeat-x;
    background-position: top;
    height: 66px;
    width: 750px;
}

.welcometxt {
    font-size: 20px;
    font-weight: bold;
    color: #5a5959;
    padding-left: 10px;
    vertical-align: top;
    line-height: 50px;
}

.dashboardcolumn {
    background-image: url(../images/dashboard-column.gif);
    width: 720px;
    height: 164px;
    background-repeat: no-repeat;
    background-position: top;
    vertical-align: top;
}

.dashboardtxt {
    line-height: 19px;
    color: #000000;
    padding-left: 12px;
    padding-right: 12px;
    padding-top: 10px;
}

.moretxt {
    float: right;
    padding-right: 20px;
    text-decoration: none;
    font-weight: bold;
    color: #003a69;
    line-height: 19px;
    padding-top: 10px;
}

.moretxt:hover {
    float: right;
    padding-right: 20px;
    text-decoration: none;
    font-weight: bold;
    color: #CC6600;
    line-height: 19px;
    padding-top: 10px;
}

.mastertable {
    padding-left: 17px;
    padding-top: 20px;
}

.masterslide1 {
    width: 238px;
}

.masterslide2 {
    padding-top: 20px;
    padding-left: 1px;
    width: 235px;
}

.mastertxt {
    text-transform: uppercase;
    font-size: 14px;
    font-weight: bold;
    color: #535353;
    padding-left: 10px;
}


/* End of Home Page (Dashboard)  */


/* General Classes */

.Space {
    padding-top: 15px;
}

.rowSpace {
    padding-top: 8px;
}

.gray {
    border-top: 1px solid #cbbb7c;
}

.grayline {
    border-top: 1px solid #cbbb7c;
}

th,
thead {
    border-bottom: 1px solid #999880;
    text-align: left;
    padding-right: 15px;
    border-radius: 5px;
}

thead th {
    font-size: 14px;
    color: #FFFFFF;
    font-weight: bold;
    height: 25px;
    text-align: left;
    padding-left: 5px;
    position: relative;
    background-color: #999880;
    -moz-border-radius: 5px;
    -webkit-border-radius: 5px;
    border-radius: 5px;
}

thead th:hover {
    background-color: #999880 !important;
    -moz-border-radius: 5px;
    -webkit-border-radius: 5px;
    border-radius: 5px;
}

.wordwrap {
    word-wrap: break-word;
}

#checkedvalues {
    line-height: 20px;
}

.imgBlur {
    resize: none !important;
    opacity: .5 !important;
}


/*  Feature Description page styles */

.title span {
    color: #333333;
}

.title {
    font-size: 24px;
    font-weight: normal;
    line-height: 100%;
    color: #438521;
    margin-top: 0px;
    margin-bottom: 0px;
    /* margin-left: 150px; */
    float: inherit;
}

.data {
    margin-left: 150px;
    font-size: 18px;
    line-height: 30px;
}

.page {
    width: 650px;
    float: left;
    padding-top: 8px;
}

.left-out {
    background-image: url(../images/desimg/body-rept.jpg);
    background-repeat: repeat-y;
    background-position: right top;
    width: 570px;
    float: left;
}

.left-in {
    background-image: url(../images/desimg/body-top.jpg);
    background-repeat: no-repeat;
    background-position: right top;
    width: 570px;
    float: left;
}

.left-panel {
    background-image: url(../images/desimg/body-bottom.jpg);
    background-repeat: no-repeat;
    background-position: right bottom;
    width: 520px;
    height: 300px;
    float: left;
    padding: 0px 40px 0px 10px;
}


/*.footer 
{
	background-image: url(../images/desimg/footer-img.jpg);
	background-repeat: no-repeat;
	background-position: left top;
	width: 899px;
	height: 111px;
	float: left;
	padding: 0px 20px;
}*/

.right-out {
    background-image: url(../images/desimg/right-rept.jpg);
    background-repeat: repeat-y;
    background-position: left top;
    width: 314px;
    float: left;
}

.right-in {
    background-image: url(../images/desimg/right-top.jpg);
    background-repeat: no-repeat;
    background-position: left top;
    width: 314px;
    float: left;
}

.right-panel {
    background-image: url(../images/desimg/right-bottom.jpg);
    background-repeat: no-repeat;
    background-position: left bottom;
    width: 238px;
    float: left;
    padding: 5px 20px 2px 37px;
}

.right-block {
    background-color: #f1f1f1;
    clear: both;
    border: 2px solid #3f68a8;
    margin-top: 0px;
}

.right-block h2 {
    font-size: 26px;
    line-height: 47px;
    color: #FFFFFF;
    background-color: #999999;
    height: 40px;
    padding-left: 15px;
}

.right-block ul {
    padding-bottom: 5px;
    margin-right: 0px;
    margin-left: 0px;
    list-style-type: none;
}

.right-block ul li {
    border-bottom-width: 1px;
    border-bottom-style: dotted;
    border-bottom-color: #333333;
}

.right-block ul li a {
    font-size: 14px;
    line-height: 27px;
    color: #333333;
    text-decoration: none;
    background-image: url(../images/desimg/right-bullet.jpg);
    background-repeat: no-repeat;
    background-position: 7px center;
    text-align: left;
    display: block;
    height: 22px;
    padding-left: 35px;
}

.right-block ul li a:hover {
    text-decoration: underline;
}

.sections {
    width: 1200px;
    height: 184px;
    float: left;
    padding-top: 10px;
    margin-left: 80px;
}

.section1 {
    font-size: 12px;
    background-image: url(../images/desimg/sec1bg.jpg);
    background-repeat: no-repeat;
    background-position: left top;
    width: 171px;
    height: 111px;
    float: left;
    padding: 18px;
    margin-left: 60px;
}

.section2 {
    font-size: 12px;
    background-image: url(../images/desimg/sec2bg.jpg);
    background-repeat: no-repeat;
    background-position: left top;
    width: 180px;
    height: 111px;
    float: left;
    padding: 18px;
    margin-left: 11px;
}

.section2 h3 {
    font-size: 13px;
    color: #1f5aa0;
}

.section3 {
    font-size: 12px;
    background-image: url(../images/desimg/sec3bg.jpg);
    background-repeat: no-repeat;
    background-position: left top;
    width: 180px;
    height: 111px;
    float: left;
    padding: 18px;
    margin-left: 4px;
}

.section3 h3 {
    font-size: 13px;
    color: #2d680c;
}

.section4 {
    font-size: 12px;
    background-image: url(../images/desimg/sec4bg.jpg);
    background-repeat: no-repeat;
    background-position: left top;
    width: 180px;
    height: 111px;
    float: left;
    padding: 18px;
    margin-left: 2px;
}

.section5 {
    font-size: 12px;
    background-image: url(../images/desimg/sec5bg.png);
    background-repeat: no-repeat;
    background-position: left top;
    width: 180px;
    height: 111px;
    float: left;
    padding: 18px;
    margin-top: 10px;
    margin-left: 60px;
}

.section6 {
    font-size: 12px;
    background-image: url(../images/desimg/sec6bg.png);
    background-repeat: no-repeat;
    background-position: left top;
    width: 180px;
    height: 111px;
    float: left;
    padding: 18px;
    margin-left: 5px;
    margin-top: 10px;
}

.section7 {
    font-size: 12px;
    background-image: url(../images/desimg/sec7bg.png);
    background-repeat: no-repeat;
    background-position: left top;
    width: 180px;
    height: 111px;
    float: left;
    padding: 18px;
    margin-top: 10px;
}

.section8 {
    font-size: 12px;
    background-image: url(../images/desimg/sec8bg.png);
    background-repeat: no-repeat;
    background-position: left top;
    width: 180px;
    height: 111px;
    float: left;
    padding: 18px;
    margin-left: 2px;
    margin-top: 10px;
}

.section9 {
    font-size: 12px;
    background-image: url(../images/desimg/sec9bg.png);
    background-repeat: no-repeat;
    background-position: left top;
    width: 180px;
    height: 111px;
    float: left;
    padding: 18px;
    margin-left: 8px;
    margin-top: 10px;
}

.section1 p,
.section2 p,
.section3 p,
.section4 p,
.section5 p,
.section6 p,
.section7 p,
.section8 p,
.section9 p {
    line-height: 15px;
    margin-top: 40px;
    height: 45px;
    overflow: hidden;
}


/*a.more
 {
	font-size: 12px;
	font-weight: bold;
	color: #333333;
	text-decoration: none;
}
a.more:hover {
	color: #FFFFFF;
}*/

.wrapper {
    margin: 0px auto;
    padding: 0px;
    width: 903px;
    overflow: hidden;
}

.warpper-top {
    margin: 0px;
    padding: 0px;
    width: 903px;
    float: left;
}

.top-sh1 {
    margin: 0px;
    padding: 0px;
    height: 75px;
    background-image: url(../images/desimg/header.jpg);
    width: 890px;
    float: center;
    border-radius: 10px;
}

.warpper-mid {
    margin: 0px;
    padding: 0px 0px 20px 0px;
    width: 890px;
    height: 320px;
    float: left;
    border-radius: 10px;
    /*background:url(../images/desimg/mid-bg1.png) repeat-y center top;*/
    background-color: #EEEEEE;
}

.mid-gap {
    margin: 0px;
    padding: 0px;
    width: 9px;
    float: left;
    font-size: 0px;
    line-height: 0px;
}

.mid-left {
    margin: 0px;
    padding: 0px;
    width: 597px;
    float: left;
}

.mid-right {
    margin: 0px;
    padding: 0px;
    width: 288px;
    float: left;
}

.descData {
    margin-left: 26px;
    font-size: 18px;
    /*height:210px;*/
    line-height: 0px;
}

.descDataIn {
    margin-left: 26px;
    font-size: 18px;
    height: 230px;
    line-height: 20px;
}


/*.footer-right {
	float: right;
	padding-top: 29px;
}*/


/*.footer {
	background-image: url(../images/desimg/footer-img.jpg);
	background-repeat: no-repeat;
	background-position: left top;
	width: 899px;
	height: 111px;
	float: left;
	padding: 0px 20px;
}
.footer-left {
	font-size: 11px;
	color: #FFFFFF;
	width: 200px;
	float: left;
}*/

.topImage {
    background-image: url(../images/desimg/stWare.jpg);
}

.space {
    padding-top: 20px;
}

.modBorder {
    border-bottom: 1px solid #333;
    border-top: 1px solid #333;
    border-left: 1px solid #333;
    border-right: 1px solid #333;
    border-radius: 5px;
}

.welcometxt {
    font-size: 20px;
    font-weight: bold;
    color: #5a5959;
    padding-left: 60px;
    vertical-align: top;
    line-height: 50px;
}

.dashboardcolumn {
    background-image: url(../images/desimg/dashboard-column.gif);
    width: 720px;
    height: 164px;
    background-repeat: no-repeat;
    background-position: top;
    vertical-align: top;
}

.moretxt {
    float: right;
    padding-right: 20px;
    text-decoration: none;
    font-weight: bold;
    /*color:#003a69;*/
    color: #333;
    font-size: 12px;
    line-height: 19px;
    margin-bottom: 1px;
    vertical-align: bottom
}

.head {
    font-size: 15px;
    margin-left: 2px;
    margin-bottom: 8px;
    color: #666;
    font-weight: bold;
}

.mainHead {
    margin-left: 200px;
    width: 1000px;
    border-bottom: 1px solid #cfcfcf;
    border-top: 1px solid #cfcfcf;
    border-left: 1px solid #cfcfcf;
    border-right: 1px solid #cfcfcf;
    border-radius: 10px;
    padding-bottom: 10px;
    height: 400px;
    box-shadow: 8px 8px 8px #cfcfcf;
}

.arrowred li {
    list-style-image: url(../images/desimg/right-bullet.jpg);
    list-style-position: outside;
    line-height: 20px;
    background-color: #EEEEEE;
}

@-webkit-keyframes blink {
    0% {
        opacity: 1;
    }
    50% {
        opacity: 0;
    }
    100% {
        opacity: 1;
    }
}

@-moz-keyframes blink {
    0% {
        opacity: 1;
    }
    50% {
        opacity: 0;
    }
    100% {
        opacity: 1;
    }
}

@-o-keyframes blink {
    0% {
        opacity: 1;
    }
    50% {
        opacity: 0;
    }
    100% {
        opacity: 1;
    }
}

.ImgBlink {
    -webkit-animation: blink 1s;
    -webkit-animation-iteration-count: infinite;
    -moz-animation: blink 1s;
    -moz-animation-iteration-count: infinite;
    -o-animation: blink 1s;
    -o-animation-iteration-count: infinite;
}


/*Class used in Tariff Details page to get right border for tariff type block*/

.borderR {
    border-right: 1px solid #cbbb7c;
}
    
        table td {
            vertical-align: top
        }
        
        dd {
            padding-bottom: 15px
        }
        
        .fieldLable {
            line-height: 39px;
        }
        
        .field {
            margin-top: 7px
        }
        
        .vieweditIcon {
            width: 3%;
        }
    </style>

</head>

<body>
<form:form action="search.html?action=search" method="post" modelAttribute="companymo">

    <table cellpadding="0" cellspacing="0" class="mainTable" width="100%">
        <tbody>
            <tr>
                <td class="subHeaderText">
                    Company Search 
                    
                </td>
            </tr>
            <tr>
                <td>
                    <table class="innerTable" cellpadding="0" cellspacing="0">
                        <tr>
                            <td width="7%">Company ID </td>
                            <td width="23%"><form:input path="cid" type="text" class="textStyle_130"/></td>
                            <td width="8%">Company Name </td>  
                            <td width="27%"><form:input path="cname" type="text" class="textStyle_200"/></td>
                            
                            <td width="5%">Location</td>
                            <td width="30%"><form:input path="clocation" type="text" class="textStyle_200"/></td>

                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td class="Space "></td>
            </tr>
            <tr>
                <td align="right">
                   <!-- <a href="./search.html?action=search"> --> <input id="myInput" type="submit" value="search" /><!-- </a> -->
                   <a href="./resetindex.html"><input type="button" value="Reset" /></a>
                    
                </td>
            </tr>
            <tr>
                <td class="Space "></td>
            </tr>
            <tr>
                <td>
                    <table id="table_id" class="customTable dataTable display" style="width: 100%">
                        <thead class="subHeaderText">
                            <tr style="text-align: center">
                                <td width="11%"><strong>Company ID</strong></td>
                                <td width="22%"><strong>Company Name</strong></td>
                                <td width="25%">Location </td>
                                 <td width="22%"><strong>Employee</strong></td>
                                 <td width="22%"><strong>Edit</strong></td>
                                 <td width="22%"><strong>Delete</strong></td>
                                
                            </tr>
                        </thead>
                        <tbody class="">
                           
                            <c:forEach items="${listCompany}" var="data">
                            <tr style="text-align: center">
                                <td width="11%" >${data.cid}
                     				<div align="center"> </div>
                                </td>
                                <td  width="22%">${data.cname}
                                    <div align="center"> </div>
                                </td>
                                <td  width="25%">${data.clocation}
                                    <div align="center"> </div>
                                </td>
                                <td width="22%">${data.employee.ename}
                                 <div align="center"> </div>
                                </td>
                                <td width="10%"><a href="./createCompany.html?action=edit&cid=${data.cid}">Edit</a></td>
                                 <td width="10%"><a href="./deleteCompany.html?cid=${data.cid}">Delete</a></td>
                                </tr>
                                </c:forEach>
                              
                          
                        </tbody>
						
                    </table> <br>
					<tr>
                <td align="right">
                    <a href="./createEmployee.html"> <input type="button" value="Create Employee" /></a>
                    <a href="./createCompany.html"> <input type="button" value="Create Company" /></a>
                </td>
            </tr>
            <tr>
                <td class="Space "></td>
            </tr>
        </tbody>
    </table>
    </form:form>
</body>

<script language="javascript" src="../../Javascript/jquery-1.8.3.js"></script>
<script language="javascript" src="../../Javascript/datatables.min.js"></script>
<script language="javascript" src="../../Javascript/jquery-ui.js"></script>
<script language="javascript" src="../../Javascript/SG_Validation.js"></script>
<script language="javascript" src="../../Javascript/ui.dropdownchecklist.js"></script>

<script type="text/javascript">
    $(document).ready(function() {
        $(".datepicker").datepicker({
            changeMonth: true,
            changeYear: true,
            showOn: 'both',
            buttonText: 'Show Date',
            buttonImageOnly: true,
            buttonImage: '../../images/calendicon.jpg'
        });
        $('.customTable').DataTable({
            searching: false,
            "bLengthChange": false
        });
    });
</script>

</html>