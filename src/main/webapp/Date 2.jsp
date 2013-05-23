<SCRIPT Language="JavaScript"> 
function ClockTimeZone() { 
  var TimezoneOffset = 9
  var localTime = new Date(); 
  var ms = localTime.getTime() + (localTime.getTimezoneOffset() * 60000) + TimezoneOffset * 3600000; 
  var time = new Date(ms);  
  var hour = time.getHours();  
  var minute = time.getMinutes(); 
  var second = time.getSeconds(); 
  var temp = "" + ((hour < 10) ? "0" : "") + hour; 
  temp += ((minute < 10) ? ":0" : ":") + minute; 
  temp += ((second < 10) ? ":0" : ":") + second; 
  document.getElementById('clock').innerHTML = temp; 
  setTimeout("ClockTimeZone()",1000); 
} 
onload = ClockTimeZone; 
</SCRIPT> 
<div id="clock"></div> 
