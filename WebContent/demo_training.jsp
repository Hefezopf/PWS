<jsp:useBean id="Const" class="de.hopfit.util.Const" scope="session" />
<html>
<head>
  <link rel="Shortcut ICON" href="http://www.publicwebshop.com/favicon.ico" type="image/ico">
  <title>Demo Training</title>
	
  <script language="JavaScript">
<!--	  

function MM_findObj(n, d) { //v4.0
  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
  if(!x && document.getElementById) x=document.getElementById(n); return x;
}
 

function MM_showHideLayers() { //v3.0
  var i,p,v,obj,args=MM_showHideLayers.arguments;
  for (i=0; i<(args.length-2); i+=3) if ((obj=MM_findObj(args[i]))!=null) { v=args[i+2];
    if (obj.style) 
	{ 
		obj=obj.style; 
		v=(v=='show')?'visible':(v='hide')?'hidden':v; 
	}
    obj.visibility=v; 	
	if(args[i]=='haupt_oj')
		{
		obj.visibility='hidden';
		obj.position='absolute';
		obj.top=-200;
		obj.left=1;
		}
  }
}

function versteckeLayers()
{
 	MM_showHideLayers('MService','','hide');	
	MM_showHideLayers('MStandorte','','hide');	
	MM_showHideLayers('MUeberuns','','hide');	
	MM_showHideLayers('MKontakt','','hide');	
	MM_showHideLayers('MAnmelden','','hide');	
	MM_showHideLayers('MLastMinute','','hide');
	MM_showHideLayers('MZertifizierung','','hide');	
	MM_showHideLayers('MSeminare','','hide');			 
	
}

function MM_changeProp(objName,x,theProp,theValue) { //v3.0
  var obj = MM_findObj(objName);
  if (obj && (theProp.indexOf("style.")==-1 || obj.style)) eval("obj."+theProp+"='"+theValue+"'");
}	
//-->
  </script><!-- www.kastro.de end-->

	

	
	
  <link rel="STYLESHEET" type="text/css" href="training_files/main.css">

	
  <link rel="stylesheet" href="training_files/ccs_staedte.css" type="text/css">

  <style>
							<!--
								input {
									border:none;
									background-color:#ffffff;
									width:100px;
									font-size:11px;
									cursor:hand;
									color:#666666;
								}
							-->
  </style>
</head>
<body leftmargin="0" topmargin="0" bgcolor="#ffffff" marginheight="0" marginwidth="0" text="#000000">

<table align="center" border="0" cellpadding="0" cellspacing="0" width="980">
  <tbody>
    <tr>
      <td>
      <map name="welcome">
      <area shape="rect" coords="308,36,384,55" href="http://www.pc-college.de/home_frz.php" alt="Bienvenue" title="Bienvenue">
      <area shape="rect" coords="405,20,478,39" href="http://www.pc-college.de/home_engl.php" alt="Welcome" title="Welcome">
<!-- www.kastro.de - anf--><area shape="rect" coords="0,0,631,78" href="http://www.pc-college.de/" alt="Willkommen" title="Willkommen">
<!-- www.kastro.de - end--></map>

<!-- www.kastro.de - anf-->
        <map name="welcome2">
          <area shape="rect" coords="79,29,879,107" href="http://www.pc-college.de/" alt="Zur&uuml;ck zur Startseite" title="">
      </map>

<!-- www.kastro.de - end-->
      <script language="JavaScript">
<!--
function MM_goToURL() { //v3.0
  var i, args=MM_goToURL.arguments; document.MM_returnValue = false;
  for (i=0; i<(args.length-1); i+=2) eval(args[i]+".location='"+args[i+1]+"'");
}
//-->
      </script>
<!-- www.kastro.de anf-->
      <table onmouseover="versteckeLayers();" border="0" cellpadding="0" cellspacing="0" width="980">

	<tbody>
          <tr>

		      <td width="108"> <a href='<%=Const.URL_WEB_APP%>/list_items.do?partner_id=3&language=de'> 
                </a><a href='<%=Const.URL_WEB_APP%>/list_items.do?partner_id=3&language=de'><img src="images/demo_training.gif" width="100" height="100"></a> 
              </td>
              <td align="right" background="training_files/tastatur_streifen.gif" valign="top" width="851">&nbsp;</td>

		      <td width="21">&nbsp;</td>

	</tr>

	<tr>

		<td colspan="3" height="1"><img src="training_files/leer.gif" alt="" onmouseover="versteckeLayers();" border="0" height="1"></td>

	</tr>

        </tbody>
      </table>

<!-- www.kastro.de end-->
      <div id="haupt" style="visibility: visible;"><br>
      </div>

<!-- Navi ohne JavaScript -->
      <div id="haupt_oj" style="visibility: hidden; position: absolute; top: -200px; left: 1px;">
      <table align="center" border="0" cellpadding="0" cellspacing="0" height="14" width="980">

  
  <tbody>
          <tr>
            <td colspan="2" height="1"></td>
            <td><img src="training_files/blaue_linie.gif" alt="" border="0" height="1" width="100%"></td>
          </tr>

  <tr>

  </tr>
          <tr>

    <td bgcolor="#000081">&nbsp;<a href="http://www.pc-college.de/index.php" class="angebote">Home</a></td>

	<td bgcolor="#000081"></td>

	<td></td>

  </tr>

  <tr>
            <td colspan="2" height="1"></td>
            <td><img src="training_files/blaue_linie.gif" alt="" border="0" height="1" width="100%"></td>
          </tr>

  <tr>
	
    <td bgcolor="#000081">&nbsp;<a href="http://www.pc-college.de/themen.php" class="angebote">Seminare</a></td>

	<td class="angebote" bgcolor="#000081">&nbsp;:&nbsp;</td>

	<td>
		
            <table border="0" cellpadding="0" cellspacing="0">

			<tbody>
                <tr valign="middle">

				<td><a href="http://www.pc-college.de/themen.php" class="menuetext10">&nbsp;[&nbsp;Seminar&uuml;bersicht&nbsp;]&nbsp;</a></td>
                  <td><a href="http://www.pc-college.de/suche.php" class="menuetext10">&nbsp;[&nbsp;Suchmaschine&nbsp;]&nbsp;</a></td>
                  <td><a href="http://www.pc-college.de/seminar_offen.php" class="menuetext10">&nbsp;[&nbsp;Offene&nbsp;Seminare&nbsp;]&nbsp;</a></td>
                  <td><a href="http://www.pc-college.de/seminar_firmenschulung.php" class="menuetext10">&nbsp;[&nbsp;Firmenschulungen&nbsp;]&nbsp;</a></td>
                  <td><a href="http://www.pc-college.de/seminar_einzelschulung.php" class="menuetext10">&nbsp;[&nbsp;Einzelschulungen&nbsp;]&nbsp;</a></td>
                  <td><a href="http://www.pc-college.de/seminar_workshops.php" class="menuetext10">&nbsp;[&nbsp;Workshops&nbsp;]&nbsp;</a></td>

			</tr>

		
              </tbody>
            </table>

	</td>

  </tr>

  <tr>
            <td colspan="2" height="1"></td>
            <td><img src="training_files/blaue_linie.gif" alt="" border="0" height="1" width="100%"></td>
          </tr>

  <tr>
	
	<td bgcolor="#000081">&nbsp;<a href="http://www.pc-college.de/lastminuteanzeige.php?Standort=1" class="angebote">Aktionsangebote</a></td>

	<td class="angebote" bgcolor="#000081">&nbsp;:&nbsp;</td>

	<td>
		
            <table border="0" cellpadding="0" cellspacing="0">

			<tbody>
                <tr valign="middle">

			    <td><a href="http://www.pc-college.de/lastminuteanzeige.php?Standort=1" class="menuetext10">&nbsp;[&nbsp;Berlin&nbsp;]&nbsp;</a></td>
                  <td><a href="http://www.pc-college.de/lastminuteanzeige.php?Standort=7" class="menuetext10">&nbsp;[&nbsp;Frankfurt&nbsp;]&nbsp;</a></td>
                  <td><a href="http://www.pc-college.de/lastminuteanzeige.php?Standort=4" class="menuetext10">&nbsp;[&nbsp;Hamburg&nbsp;]&nbsp;</a></td>
                  <td><a href="http://www.pc-college.de/lastminuteanzeige.php?Standort=5" class="menuetext10">&nbsp;[&nbsp;Hannover&nbsp;]&nbsp;</a></td>
                  <td><a href="http://www.pc-college.de/lastminuteanzeige.php?Standort=6" class="menuetext10">&nbsp;[&nbsp;Leipzig&nbsp;]&nbsp;</a></td>
                  <td><a href="http://www.pc-college.de/lastminuteanzeige.php?Standort=8" class="menuetext10">&nbsp;[&nbsp;M&uuml;nchen&nbsp;]&nbsp;</a></td>
                  <td><a href="http://www.pc-college.de/lastminuteanzeige.php?Standort=2" class="menuetext10">&nbsp;[&nbsp;Potsdam/Kleinmachnow&nbsp;]&nbsp;</a></td>
                  <td><a href="http://www.pc-college.de/lastminuteanzeige.php?Standort=3" class="menuetext10">&nbsp;[&nbsp;Stuttgart&nbsp;]&nbsp;</a></td>

			</tr>

		
              </tbody>
            </table>

	</td>

  </tr>

  <tr>
            <td colspan="2" height="1"></td>
            <td><img src="training_files/blaue_linie.gif" alt="" border="0" height="1" width="100%"></td>
          </tr>

  <tr>

    <td bgcolor="#000081">&nbsp;<a href="http://www.pc-college.de/sofort_buchen.php" class="angebote">Anmelden</a></td>

	<td class="angebote" bgcolor="#000081">&nbsp;:&nbsp;</td>

	<td>
		
            <table border="0" cellpadding="0" cellspacing="0">

			<tbody>
                <tr valign="middle">

            	<td><a href="http://www.pc-college.de/sofort_buchen.php" class="menuetext10">&nbsp;[&nbsp;Seminar&nbsp;]&nbsp;</a></td>
                  <td><a href="http://www.pc-college.de/zertifiziert_anmeldung.php" class="menuetext10">&nbsp;[&nbsp;Test&nbsp;]&nbsp;</a></td>

			</tr>

		
              </tbody>
            </table>

	</td>

  </tr>

  <tr>
            <td colspan="2" height="1"></td>
            <td><img src="training_files/blaue_linie.gif" alt="" border="0" height="1" width="100%"></td>
          </tr>

  <tr>

    <td bgcolor="#000081">&nbsp;<a href="http://www.pc-college.de/zertifiziert.php" class="angebote">Zertifizierung</a></td>

	<td class="angebote" bgcolor="#000081">&nbsp;:&nbsp;</td>

	<td>
		
            <table border="0" cellpadding="0" cellspacing="0">

			<tbody>
                <tr valign="middle">

	            <td><a href="http://www.pc-college.de/zertifiziert.php" class="menuetext10">&nbsp;[&nbsp;Allgemeines&nbsp;]&nbsp;</a></td>
                  <td><a href="http://www.pc-college.de/zertifiziert2.php" class="menuetext10">&nbsp;[&nbsp;MCP/MCSE/MCSA/MCSD/MCDBA&nbsp;]&nbsp;</a></td>
                  <td><a href="http://www.pc-college.de/zertifiziert1.php" class="menuetext10">&nbsp;[&nbsp;MS Office Specialist-Tests&nbsp;]&nbsp;</a></td>
                  <td><a href="http://www.pc-college.de/zertifiziert3.php" class="menuetext10">&nbsp;[&nbsp;VUE-Tests&nbsp;]&nbsp;</a></td>

			</tr>

		
              </tbody>
            </table>

	</td>

  </tr>

  <tr>
            <td colspan="2" height="1"></td>
            <td><img src="training_files/blaue_linie.gif" alt="" border="0" height="1" width="100%"></td>
          </tr>

  <tr>

	<td bgcolor="#000081">&nbsp;<a href="http://www.pc-college.de/ueberuns.php" class="angebote">&Uuml;ber&nbsp;uns</a></td>

	<td class="angebote" bgcolor="#000081">&nbsp;:&nbsp;</td>

	<td>
		
            <table border="0" cellpadding="0" cellspacing="0">

			<tbody>
                <tr valign="middle">

	            <td><a href="http://www.pc-college.de/ueberuns.php" class="menuetext10">&nbsp;[&nbsp;Wir von PC&middot;COLLEGE&nbsp;]&nbsp;</a></td>
                  <td><a href="http://www.pc-college.de/ueberuns_autorisierung.php" class="menuetext10">&nbsp;[&nbsp;Autorisierungen&nbsp;]&nbsp;</a></td>
                  <td><a href="http://www.pc-college.de/ueberuns_partner.php" class="menuetext10">&nbsp;[&nbsp;Wie werde ich Partner?&nbsp;]&nbsp;</a></td>
                  <td><a href="http://www.pc-college.de/ueberuns_jobs.php" class="menuetext10">&nbsp;[&nbsp;Jobs&nbsp;]&nbsp;</a></td>
                  <td><a href="http://www.pc-college.de/referenzen.php" class="menuetext10">&nbsp;[&nbsp;Referenzen&nbsp;]&nbsp;</a></td>
                  <td><a href="http://www.pc-college.de/ueberuns_agb.php" class="menuetext10">&nbsp;[&nbsp;AGB&nbsp;]&nbsp;</a></td>

			</tr>

		
              </tbody>
            </table>

	</td>

  </tr>

  <tr>
            <td colspan="2" height="1"></td>
            <td><img src="training_files/blaue_linie.gif" alt="" border="0" height="1" width="100%"></td>
          </tr>

  <tr>

    <td bgcolor="#000081" valign="top">&nbsp;<a href="http://www.pc-college.de/service_internet.php" class="angebote" style="vertical-align: top;">IT-Leistungen</a></td>

	<td class="angebote" bgcolor="#000081" valign="top">&nbsp;:&nbsp;</td>

	<td>
		
            <table border="0" cellpadding="0" cellspacing="0">

			<tbody>
                <tr valign="middle">

	            <td><a href="http://www.pc-college.de/service_internet.php" class="menuetext10">&nbsp;[&nbsp;Internet-Dienstleistungen&nbsp;]&nbsp;</a></td>
                  <td><a href="http://www.pc-college.de/service_programmierung.php" class="menuetext10">&nbsp;[&nbsp;Programmierung&nbsp;]&nbsp;</a></td>
                  <td><a href="http://www.pc-college.de/service_standardsoftware.php" class="menuetext10">&nbsp;[&nbsp;Software-Anpassung&nbsp;]&nbsp;</a></td>
                  <td><a href="http://www.pc-college.de/service_datenbanken.php" class="menuetext10">&nbsp;[&nbsp;Datenbank-Entwicklung&nbsp;]&nbsp;</a></td>
                  <td><a href="http://www.pc-college.de/service_beratungedv.php" class="menuetext10">&nbsp;[&nbsp;IT-Beratung&nbsp;]&nbsp;</a></td>
                  <td><a href="http://www.pc-college.de/service_netzwerke.php" class="menuetext10">&nbsp;[&nbsp;Netzwerke&nbsp;]&nbsp;</a></td>

			</tr>

			<tr>

	            <td><a href="http://www.pc-college.de/service_workshops.php" class="menuetext10">&nbsp;[&nbsp;Workshops&nbsp;]&nbsp;</a></td>
                  <td><a href="http://www.pc-college.de/service_projektmanagement.php" class="menuetext10">&nbsp;[&nbsp;Projektmanagement&nbsp;]&nbsp;</a></td>
                  <td><a href="http://www.pc-college.de/service_tipps.php" class="menuetext10">&nbsp;[&nbsp;PC-Tipps&nbsp;]&nbsp;</a></td>
                  <td><a href="http://www.pc-college.de/service_links.php" class="menuetext10">&nbsp;[&nbsp;Special-Links&nbsp;]&nbsp;</a></td>
                  <td><a href="http://www.pc-college.de/service_raummiete.php" class="menuetext10">&nbsp;[&nbsp;Raumvermietung&nbsp;]&nbsp;</a></td>

				<td></td>

			</tr>

		
              </tbody>
            </table>

	</td>

  </tr>

  <tr>
            <td colspan="2" height="1"></td>
            <td><img src="training_files/blaue_linie.gif" alt="" border="0" height="1" width="100%"></td>
          </tr>

  <tr>

    <td bgcolor="#000081">&nbsp;<a href="http://www.pc-college.de/kontakt.php" class="angebote">Kontakt</a></td>

	<td class="angebote" bgcolor="#000081">&nbsp;:&nbsp;</td>

	<td>
		
            <table border="0" cellpadding="0" cellspacing="0">

			<tbody>
                <tr valign="middle">

            <td><a href="http://www.pc-college.de/kontakt.php" class="menuetext10">&nbsp;[&nbsp;Anfrage&nbsp;]&nbsp;</a></td>
                  <td><a href="http://www.pc-college.de/impressumpc.php" class="menuetext10">&nbsp;[&nbsp;Impressum&nbsp;]&nbsp;</a></td>

			</tr>

		
              </tbody>
            </table>

	</td>

  </tr>

  <tr>
            <td colspan="2" height="1"></td>
            <td><img src="training_files/blaue_linie.gif" alt="" border="0" height="1" width="100%"></td>
          </tr>

  <tr>

    <td bgcolor="#000081">&nbsp;<a href="http://www.pc-college.de/standort_berlin.php" class="angebote">Standorte</a></td>

	<td class="angebote" bgcolor="#000081">&nbsp;:&nbsp;</td>

	<td>
		
            <table border="0" cellpadding="0" cellspacing="0">

			<tbody>
                <tr valign="middle">

            <td><a href="http://www.pc-college.de/standort_berlin.php" class="menuetext10">&nbsp;[&nbsp;Berlin&nbsp;]&nbsp;</a></td>
                  <td><a href="http://www.pc-college.de/standort_hamburg.php" class="menuetext10">&nbsp;[&nbsp;Hamburg&nbsp;]&nbsp;</a></td>
                  <td><a href="http://www.pc-college.de/standort_hannover.php" class="menuetext10">&nbsp;[&nbsp;Hannover&nbsp;]&nbsp;</a></td>
                  <td><a href="http://www.pc-college.de/standort_potsdam.php" class="menuetext10">&nbsp;[&nbsp;Potsdam/Kleinmachnow&nbsp;]&nbsp;</a></td>
                  <td><a href="http://www.pc-college.de/standort_leipzig.php" class="menuetext10">&nbsp;[&nbsp;Leipzig&nbsp;]&nbsp;</a></td>
                  <td><a href="http://www.pc-college.de/standort_stuttgart.php" class="menuetext10">&nbsp;[&nbsp;Stuttgart&nbsp;]&nbsp;</a></td>
                  <td><a href="http://www.pc-college.de/standort_frankfurt.php" class="menuetext10">&nbsp;[&nbsp;Frankfurt&nbsp;]&nbsp;</a></td>
                  <td><a href="http://www.pc-college.de/standort_muenchen.php" class="menuetext10">&nbsp;[&nbsp;M&uuml;nchen&nbsp;]&nbsp;</a></td>
                  <td><a href="http://www.pc-college.de/standort_andere.php" class="menuetext10">&nbsp;[&nbsp;Andere&nbsp;]&nbsp;</a></td>

			</tr>

		
              </tbody>
            </table>

	</td>

  </tr>

  <tr>
            <td colspan="2" height="1"></td>
            <td><img src="training_files/blaue_linie.gif" alt="" border="0" height="1" width="100%"></td>
          </tr>

  <tr>

    <td bgcolor="#000081" width="15">&nbsp;<a href="http://www.pc-college.de/merkzettel.php" class="angebote">&nbsp;M&nbsp;</a></td>

	<td class="angebote" bgcolor="#000081"></td>

	<td>
		
            <table border="0" cellpadding="0" cellspacing="0">

			<tbody>
                <tr valign="middle">

				<td></td>

			</tr>

		
              </tbody>
            </table>

	</td>

  </tr>

  
  <tr>
            <td colspan="2" height="1"></td>
            <td><img src="training_files/blaue_linie.gif" alt="" border="0" height="1" width="100%"></td>
          </tr>

  <tr>

          </tr>
        </tbody>
      </table>

      </div>

      <script language="JavaScript">
<!--
MM_showHideLayers('haupt_oj','','hide');
//-->
      </script><br>

      <table bgcolor="#ffffff" border="0" cellpadding="0" cellspacing="0" width="980">

	<tbody>
          <tr>

	    <td rowspan="2" width="11"><img src="training_files/leer.gif" height="1" width="11"></td>

	    <td width="150"><img src="training_files/leer.gif" height="1" width="150"></td>

	    <td rowspan="2" width="19"><img src="training_files/leer.gif" height="1" width="19"></td>

	    <td rowspan="2" bgcolor="#000081" width="1"><img src="training_files/leer.gif" height="1" width="1"></td>

	    <td rowspan="2" width="19"><img src="training_files/leer.gif" height="1" width="19"></td>

		<td width="580"><img src="training_files/leer.gif" height="1" width="580"></td>

		<td rowspan="2" width="19"><img src="training_files/leer.gif" height="1" width="19"></td>

	    <td rowspan="2" bgcolor="#000081" width="1"><img src="training_files/leer.gif" height="1" width="1"></td>

	    <td rowspan="2" width="19"><img src="training_files/leer.gif" height="1" width="19"></td>

	    <td width="150"><img src="training_files/leer.gif" height="1" width="150"></td>

		<td rowspan="2" width="11"><img src="training_files/leer.gif" height="1" width="11"></td>

	</tr>

	<tr valign="top">

	<td align="center">
		<!-- Anfang Linke Spalte -->
			<img src="training_files/ms_logo.gif" alt="" border="0" height="72" vspace="4" width="120"><br>

			<img src="training_files/adobe_logo.gif" alt="" border="0" height="34" vspace="4" width="87"><br>

			<img src="training_files/corel_logo.jpe" alt="" border="0" height="39" vspace="4" width="120"><br>

			<img src="training_files/inprise_logo.jpe" alt="" border="0" vspace="4" width="80"><br>

			<img src="training_files/lotus_logo.jpe" alt="" border="0" height="50" vspace="4" width="100"><br>

			<img src="training_files/cobra_logo.jpe" alt="" border="0" height="30" vspace="4" width="85"><br>

			<img src="training_files/chilli_logo.gif" alt="" border="0" height="25" vspace="4" width="100"><br>

			<img src="training_files/vue_logo.gif" alt="" border="0" height="72" vspace="4" width="80"><br>

			<img src="training_files/mos_logo.jpe" alt="" border="0" height="60" vspace="4" width="80">
		<!-- Ende Linke Spalte -->
		</td>

		<td>
		<!-- Anfang Haupt Spalte -->
			
            <table border="0" cellpadding="0" cellspacing="0" width="580">

								<tbody>
                <tr>

					  <td class="kurstitel">Trainings:</td>

				</tr>
					
				<tr>

					  <td class="kurstext"> <br>

						
                  <script language="JavaScript">
							<!--
								function termine_ein_aus(kid){
									if(document.getElementById(kid).style.display=='block'){
										document.getElementById(kid).style.display='none';
										document.getElementById(kid+'_input').value='Termine Einblenden!';
									}else{
										document.getElementById(kid).style.display='block';
										document.getElementById(kid+'_input').value='Termine Ausblenden!';
									}
								}
							//-->
							</script>
                        <br>

                  <ul>

							<li>
							    <a href='<%=Const.URL_WEB_APP%>/list_items.do?partner_id=3&language=de'>
	  Java - Java / Eclipse
    </a>

							
								
                            <div style="height: 20px; display: block;" id="JA8_button" align="right"> 
                              <br>
                            </div>

								
                      </li>

							<li>
								 <a href='<%=Const.URL_WEB_APP%>/list_items.do?partner_id=3&language=de'>
									Java - Beginner
								</a>
								
                            <div style="height: 20px; display: block;" id="JAG_button" align="right"> 
                            </div>      
                            <div id="JAG" style="display: none;"> </div>

							</li>

							<li>
								 <a href='<%=Const.URL_WEB_APP%>/list_items.do?partner_id=3&language=de'>
									Java - Expert
								</a>
								
                            <div style="height: 20px; display: block;" id="JA7_button" align="right"> 
                              <br>
                            </div>

								 
                      </li>

						
                  </ul>

						
                  <script language="JavaScript">
						<!--
							var ktyp_arr=new Array("JA8","JAG","JAP","JAA","JSP","JAD","JAE","JA1","JA2","JA3","JA4","JA5","JA6","JA7");
							for(lauf=0;lauf<ktyp_arr.length;lauf++){
								document.getElementById(ktyp_arr[lauf]+"_button").style.display="block";
							}
						//-->
						</script>
					</td>

				</tr>
		
				<tr>

					<td>&nbsp;</td>

				</tr>
										
			
              </tbody>
            </table>

		        <!-- Ende Haupt Spalte -->
                <a href='<%=Const.URL_WEB_APP%>/list_items.do?partner_id=3&language=de'><img src="images/demo_training.gif" width="100" height="100"></a>	
              </td>

	<td align="center">
		<!-- Anfang Linke Spalte -->
			<img src="training_files/ms_logo.gif" alt="" border="0" height="72" vspace="4" width="120"><br>

			<img src="training_files/adobe_logo.gif" alt="" border="0" height="34" vspace="4" width="87"><br>

			<img src="training_files/corel_logo.jpe" alt="" border="0" height="39" vspace="4" width="120"><br>

			<img src="training_files/inprise_logo.jpe" alt="" border="0" vspace="4" width="80"><br>

			<img src="training_files/lotus_logo.jpe" alt="" border="0" height="50" vspace="4" width="100"><br>

			<img src="training_files/cobra_logo.jpe" alt="" border="0" height="30" vspace="4" width="85"><br>

			<img src="training_files/chilli_logo.gif" alt="" border="0" height="25" vspace="4" width="100"><br>

			<img src="training_files/vue_logo.gif" alt="" border="0" height="72" vspace="4" width="80"><br>

			<img src="training_files/mos_logo.jpe" alt="" border="0" height="60" vspace="4" width="80">
		<!-- Ende Linke Spalte -->
		</td>

	</tr>

        </tbody>
      </table>

      <br>

      <table align="center" border="0" cellpadding="0" cellspacing="0" width="980">


        <tbody>
          <tr>

	<td width="10%"><img src="training_files/leer.gif" alt="" border="0" height="1" width="100%"></td>

	<td width="80%"><img src="training_files/leer.gif" alt="" border="0" height="1" width="100%"></td>

	<td width="10%"><img src="training_files/leer.gif" alt="" border="0" height="1" width="100%"></td>

          </tr>



          <tr>

	<td colspan="3" bgcolor="#000081" height="7"><img src="training_files/leer.gif" alt="" border="0" height="7" width="0"></td>

          </tr>

        </tbody>
      </table>

      <script language="JavaScript">
<!--
MM_showHideLayers('haupt','','show');
//-->
      </script>
      </td>
    </tr>
  </tbody>
</table>

</body>
</html>
