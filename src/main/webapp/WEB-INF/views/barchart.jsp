<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <title>jQuery Circle Charts Plugin Demos</title>
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
    <script src="<%=request.getContextPath()%>/resources/js/jquery.circlechart.js"></script>
    <style>
.demo {
  max-width: 960px;
  margin: 150px auto;
}

.demo > div {
  float: left;
  margin: 20px;
}
</style>
<link href="http://www.jqueryscript.net/css/jquerysctipttop.css" rel="stylesheet" type="text/css">
    </head>
    <body>
    <div id="jquery-script-menu">
<div class="jquery-script-center">
<ul>
<li><a href="http://www.jqueryscript.net/chart-graph/Smooth-Circle-Chart-Plugin-with-jQuery-CSS3-Circle-Charts.html">Download This Plugin</a></li>
<li><a href="http://www.jqueryscript.net/">Back To jQueryScript.Net</a></li>
</ul>
<div class="jquery-script-ads"><script type="text/javascript"><!--
google_ad_client = "ca-pub-2783044520727903";
/* jQuery_demo */
google_ad_slot = "2780937993";
google_ad_width = 728;
google_ad_height = 90;
//-->
</script>
<script type="text/javascript"
src="http://pagead2.googlesyndication.com/pagead/show_ads.js">
</script></div>
<div class="jquery-script-clear"></div>
</div>
</div>
<div class="demo">
<h1>jQuery Circle Charts Plugin Demos</h1>
      <div class="demo-1" data-percent="65"></div>
      <div class="demo-2" data-percent="55"></div>
      <div class="demo-3" data-percent="85"></div>


      <div class="demo-4" data-percent="75"></div>
      <div class="demo-5" data-percent="65"></div>
      <div class="demo-6" data-percent="65"></div>
    </div>
<script>
$('.demo-1').percentcircle();

$('.demo-2').percentcircle({
animate : false,
diameter : 100,
guage: 3,
coverBg: '#fff',
bgColor: '#efefef',
fillColor: '#E95546',
percentSize: '15px',
percentWeight: 'normal'
});

$('.demo-3').percentcircle({
animate : false,
diameter : 100,
guage: 3,
coverBg: '#fff',
bgColor: '#efefef',
fillColor: '#DA4453',
percentSize: '18px',
percentWeight: 'normal'
});
$('.demo-4').percentcircle({
animate : true,
diameter : 100,
guage: 3,
coverBg: '#fff',
bgColor: '#efefef',
fillColor: '#46CFB0',
percentSize: '18px',
percentWeight: 'normal'
});		
$('.demo-5').percentcircle({
animate : true,
diameter : 100,
guage: 3,
coverBg: '#fff',
bgColor: '#efefef',
fillColor: '#8BC163',
percentSize: '18px',
percentWeight: '20px'
});	
$('.demo-6').percentcircle({
animate : true,
diameter : 100,
guage: 10,
coverBg: '#fff',
bgColor: '#efefef',
fillColor: '#D870A9',
percentSize: '18px',
percentWeight: 'normal'
});		
			
	</script><script type="text/javascript">

  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-36251023-1']);
  _gaq.push(['_setDomainName', 'jqueryscript.net']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();

</script>

</body>
</html>