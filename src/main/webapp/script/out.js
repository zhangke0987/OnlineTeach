$("document").ready(function(){$(".sel-opt-tpl").click(function(){var c=$(this).attr("id")+"-ed",d="";0<c.indexOf("a")?d="a":0<c.indexOf("b")?d="b":0<c.indexOf("c")?d="c":0<c.indexOf("d")?d="d":msgerror("\u4e25\u91cd\u9519\u8bef\uff01\u7cfb\u7edf\u65e0\u6cd5\u83b7\u53d6\u4f60\u70b9\u51fb\u7684\u9009\u9879\uff01");$("#sel-tpl-val").val(d);$(".sel-tpl-ed").removeClass("sel-sb-opt-ed");$("#"+c).addClass("sel-sb-opt-ed")});$(".jug-tpl-opt").click(function(){var c=$(this).attr("id")+"-ed",d="0";0<c.indexOf("a")?
d="1":0<c.indexOf("b")?d="2":msgerror("\u4e25\u91cd\u9519\u8bef\uff01\u7cfb\u7edf\u65e0\u6cd5\u83b7\u53d6\u4f60\u7684\u5224\u65ad\u7ed3\u679c\uff01");$("#jug-tpl-val").val(d);$(".jug-tpl-ed").removeClass("sel-sb-opt-ed");$("#"+c).addClass("sel-sb-opt-ed")});var b="ei/getExss?sid="+$("#sid").text();$.getJSON(b,function(c){$.each(c,function(c,b){var e;e='<tr><td style="width:10%;">@NO@</td><td style="width:30%;"><a href="#">@HOLD@</a></td><td style="width:45%;">@TI@</td><td style="width:15%;"><a href="#question_begin" onclick="return setExercise(@esId@,@HOLD@,@TI@);" class="beginAnswer" id="ba-@esId@">\u5f00\u59cb\u7b54\u9898</a></td></tr>'.replace(/@HOLD@/g,
b.founder).replace(/@TI@/g,b.cdate).replace(/@NO@/,c+1).replace(/@esId@/g,b.esId);$("#exList").append(e);0==c&&setExercise(b.esId,b.founder,b.cdate)})})});
var selectionTpl='    <div class="mainbox container replyItem" id="sel-tpl">    \t<h3 class="itemCount divInfo" id="itemCount-tpl">\u7b2c@idx@\u9898</h3>        <div class="single_question_answer">            <div class="single_question" id="selQes-tpl">@ctn@</div>        </div>        <div class="sel-select-box">        \t<input type="hidden" name="sel-tpl-val" value="" id="sel-tpl-val" />\t\t\t<div class="sel-sb-opt sel-sb-a sel-opt-tpl pullleft" id="sel-a-tpl">A<div class="sel-tpl-ed" id="sel-a-tpl-ed"></div></div>\t\t\t<div class="sel-sb-opt sel-sb-b sel-opt-tpl pullleft" id="sel-b-tpl">B<div class="sel-tpl-ed" id="sel-b-tpl-ed"></div></div>\t\t\t<div class="sel-sb-opt sel-sb-c sel-opt-tpl pullleft" id="sel-c-tpl">C<div class="sel-tpl-ed" id="sel-c-tpl-ed"></div></div>\t\t\t<div class="sel-sb-opt sel-sb-d sel-opt-tpl pullleft" id="sel-d-tpl">D<div class="sel-tpl-ed" id="sel-d-tpl-ed"></div></div>\t\t\t<div class="clearboth"></div>        </div>    </div>',questionTpl=
'    <div class="mainbox container replyItem" id="ans-tpl">    \t<h3 class="itemCount divInfo" id="itemCount-tpl">\u7b2c@idx@\u9898</h3>        <div class="answer_question">            <div class="a_question" id="ans-tpl">@ctn@</div>            <div class="inputArea">                <div class="a_txt">\u7b54\uff1a</div>                <textarea rows="10" cols="131" class="a_answer inputField sslote" name="answer1" id="ans-tpl-val" ></textarea>            </div>        </div>    </div>',judgeTpl='    <div class="mainbox container replyItem" id="jug-tpl">    \t<h3 class="itemCount divInfo" id="itemCount-tpl">\u7b2c@idx@\u9898</h3>        <div class="judge_question">            <div class="j_question">@ctn@</div>        </div>        <div class="j_answer_box">        \t<input type="hidden" name="jug-tpl-val" value="" id="jug-tpl-val" />\t\t\t<div class="j_true j_answer jug-tpl-opt pullleft" id="jug-tpl-opt-a">\u221a<div class="jug-tpl-ed" id="jug-tpl-opt-a-ed"></div></div>\t\t\t<div class="j_false j_answer jug-tpl-opt pullleft" id="jug-tpl-opt-b">x<div class="jug-tpl-ed" id="jug-tpl-opt-b-ed"></div></div>\t\t\t<div class="clearboth"></div>        </div>    </div>',
completionTpl='    <div class="mainbox container replyItem" id="cpl-tpl" >    \t<h3 class="itemCount divInfo" id="itemCount-tpl">\u7b2c@idx@\u9898</h3>        <div class="fill_vacant_question">            <div class="fv_question" id="cpl-ctn-tpl">@ctn@</div>        </div>    </div>',completionSpaceTpl='<input type="text" name="fv_answer" class="fv_input cpl-tpl-vals" />',COUNTER=0;$.extend({TplPlus:function(){COUNTER++}});
function setExercise(b,c,d){$.getJSON("ei/getExs?esId="+b,function(f){$("#exNo").text(b);$("#exFounder").text(c);$("#exCTime").text(d);$.each(f,function(c,b){var a=b.type;if(null!=a&&""!=a&&"selection"==a)$.TplPlus(),a=selectionTpl,a=a.replace(/tpl/g,COUNTER).replace(/@idx@/,COUNTER).replace(/@ctn@/g,b.selCtn).replace(/@br@/g,"<br>").replace(/@hr@/g,"<hr>"),$("#daTit").append(a);else if(null!=a&&""!=a&&"judge"==a)$.TplPlus(),a=judgeTpl,a=a.replace(/tpl/g,COUNTER).replace(/@idx@/,COUNTER).replace(/@ctn@/g,
b.jugCtn).replace(/@br@/g,"<br>").replace(/@hr@/g,"<hr>"),$("#daTit").append(a);else if(null!=a&&""!=a&&"completion"==a){$.TplPlus();var a=completionTpl,d=completionSpaceTpl,d=d.replace(/tpl/g,COUNTER),a=a.replace(/tpl/g,COUNTER).replace(/@idx@/,COUNTER).replace(/@ctn@/g,b.cplCtn).replace(/@br@/g,"<br>").replace(/@hr@/g,"<hr>").replace(/@space@/g,d);$("#daTit").append(a)}else null!=a&&(""!=a&&"question"==a)&&($.TplPlus(),a=questionTpl,a=a.replace(/tpl/g,COUNTER).replace(/@idx@/,COUNTER).replace(/@ctn@/g,
b.qesCtn).replace(/@br@/g,"<br>").replace(/@hr@/g,"<hr>"),$("#daTit").append(a));$(".sel-opt-"+COUNTER).click(function(){var a=$(this).attr("id")+"-ed",c=$(this).attr("id").match(/[\d]+/),b="";0<a.indexOf("a")?b="a":0<a.indexOf("b")?b="b":0<a.indexOf("c")?b="c":0<a.indexOf("d")?b="d":msgerror("\u4e25\u91cd\u9519\u8bef\uff01\u7cfb\u7edf\u65e0\u6cd5\u83b7\u53d6\u4f60\u70b9\u51fb\u7684\u9009\u9879\uff01");$("#sel-"+c+"-val").val(b);$(".sel-"+c+"-ed").removeClass("sel-sb-opt-ed");$("#"+a).addClass("sel-sb-opt-ed")});
$(".jug-"+COUNTER+"-opt").click(function(){var a=$(this).attr("id").match(/[\d]+/),b=$(this).attr("id")+"-ed",c="0";0<b.indexOf("a")?c="1":0<b.indexOf("b")?c="2":msgerror("\u4e25\u91cd\u9519\u8bef\uff01\u7cfb\u7edf\u65e0\u6cd5\u83b7\u53d6\u4f60\u7684\u5224\u65ad\u7ed3\u679c\uff01");$("#jug-"+a+"-val").val(c);$(".jug-"+a+"-ed").removeClass("sel-sb-opt-ed");$("#"+b).addClass("sel-sb-opt-ed")})});$("#daTit").css("display","block")});return!0}
function getSelRplAns(b){return $("#sel-"+b+"-val").val()}function getAnsRplAns(b){return $("#ans-"+b+"-val").val()}function getJugRplAns(b){return $("#jug-"+b+"-val").val()}function getCplRplAns(b){var c="[";$(".cpl-tpl-vals").each(function(){c+='"'+$(this).val()+'",'});c=c.substring(0,c.length-1);return c+="]"};