<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.teachMng.onlineTeach.model.*" %>

<!DOCTYPE html>
<html id="createWork">
<head>
<meta charset="utf-8">
<title>课堂练习创建</title>
<link rel="icon" href="favicon.ico" type="image/x-icon" />
<link rel="shortcut icon" href="favicon.ico" type="image/x-icon" />
<link rel="stylesheet" href="css/style.css" />
<base href='http://<%=request.getServerName()+":"+request.getLocalPort()+request.getContextPath()+request.getServletPath()%>' />
</head>

<body>

<jsp:include page="include/header.jsp" />
<div class="container">
	<div class="subMainNav">
		<div class="currentLocation">
			<a href="main.jsp">在线教学</a>&gt; <a href="#">教学排课</a>&gt; <a href="#">学期课表生成</a>
		</div>
		<jsp:include page="include/menu2.jsp"></jsp:include>
	</div>
</div>
<div class="site">
    <div class="container">
        <div class="courseTimeLabel">
            <div class="courseTimeLabelItem pullleft courseTimeLabelItemOne">上一次课：2013-4-12 星期三 上午 3-4节</div>
            <h4 class="courseTimeLabelItem pullleft courseTimeLabelItemTwo">毛泽东思想</h4>
            <div class="courseTimeLabelItem pullright courseTimeLabelItemThree">下一次课：2013-4-14 星期五 下午 7-8节</div>
        </div>
         <div class="quickLook mainbox pullleft">  
		  </div>
		<div class="firstLR">
		  <div class="mainbox LRleft pullleft">
		    <div class="cwCoursingTitle">
            	<div class="cwCoursingTitleTxt">正在进行的课堂练习</div>
            </div>
		    <div class="cwCoursing">
            	<ul id="cwCoursing">
            	</ul>
            </div>
		  </div><!-- End of LRleft -->
		  <div class="mainbox LRRight pullright">
		    <div class="workLabelUp">
            	<div class="pullleft cacbDiv">
	                <input type="checkbox" name="checkAllCheckbox" class="checkAllCheckbox" id="checkAllCheckbox" onMouseOver="pmt('checkAllCheckbox', '全选/取消全选');" onMouseOut="erasePmt();" onChange="slctChange();">
                </div>
                <div class="pullleft flatbtn wluBtn" id="returnToList" style="display:none;">
                	<div class="returnToListImg" id="returnToListImg"></div>
                </div>
                <div class="pullleft flatbtn wluBtn" id="createCourseButton" onMouseOver="pmt('createCourseButton', '创建新的练习');" onMouseOut="erasePmt();" onClick="showCreateWork();">
                	<div class="createCourseButtonImg" onClick="showCreateWork();"></div>
                </div>
                <div class="pullleft flatbtn wluBtn" id="archiveButton" onMouseOver="pmt('archiveButton', '存档');" onMouseOut="erasePmt();">
                	<div class="archiveButtonImg"></div>
                </div>
                <div class="pullleft flatbtn wluBtn" id="delButton" onMouseOver="pmt('delButton', '删除');" onMouseOut="erasePmt();">
                	<div class="delButtonImg"></div>
                </div>
                <div class="pullleft flatbtn wluBtn shareButton" id="shareButton" onMouseOver="pmt('shareButton', '分发题目');" onMouseOut="erasePmt();">
                	<div class="shareButtonImg"></div>
                </div>
                <div id="selectClassPos">
                	<select id="selectClass">
                		<option>将此题目分发给</option>
                	</select>
                </div>	
                <div class="clearboth"></div>
            </div>
            <div class="workLabelDown">
            	<div class="workLabelDownTit" id="workLabelDownTit">我的题库</div>
                <div class="workLabelDownContainer">
 					<jsp:include page="include/newExerciseSnippet.jsp" />
                    <div class="wldcListBox" id="wldcListBox">
                        <ul id="wldcListBoxUl">
                        </ul>
                    </div><!-- End of wldcListBox -->
                </div><!-- End of workLabelDownContainer -->
            </div>
		  </div><!-- End of LRRight -->          
		</div><!-- End of firstLR -->
        <div class="dynamicAnswer" id="dynamicAnswer" style="display:block;">
        	<div class="daTit tbHead" id="daTit">答题动态</div>
			<div class="mainbox container dynamicAnswerItem">
                <div class="daInfo divInfo">
                  <div class="daInfoName">张丽莉</div>
                  <div class="daInfoTime">14:57</div>
                  <div class="daInfoDate">4月22日</div>
                </div>
                <div class="single_question_answer">
                    <div class="single_question">
                        1、在交互命令外壳里显示在交互命令外壳里显示 WMI 信息在交互命令外壳里显示 WMI 信息在交互命令外壳里显示 WMI 信息在交互命令外壳里显示 WMI 信息。
                    </div>
                    <div class="singleSelect">
                        <ul style=" list-style:upper-latin;">
                            <li>在交互命令外壳里显外壳里显外壳里显外壳里显外壳里显示在</li>
                            <li>在交互命令外壳里外壳里显外壳里显显示在</li>
                            <li>在交互命令外壳里显外壳里显外壳里显外壳里显外壳里显外壳里显示在</li>
                            <li>在交互命令外壳里外壳里显外壳里显在</li>
                        </ul>
                    </div>
                </div>
                
                <div class="sel-select-box">
					<input type="hidden" name="sel-tpl-val" value="" id="sel-tpl-val" />
					<div class="sel-sb-opt sel-sb-a sel-opt-tpl pullleft" id="sel-a-tpl">A<div class="sel-tpl-ed" id="sel-a-tpl-ed"></div></div>
					<div class="sel-sb-opt sel-sb-b sel-opt-tpl pullleft" id="sel-b-tpl">B<div class="sel-tpl-ed" id="sel-b-tpl-ed"></div></div>
					<div class="sel-sb-opt sel-sb-c sel-opt-tpl pullleft" id="sel-c-tpl">C<div class="sel-tpl-ed" id="sel-c-tpl-ed"></div></div>
					<div class="sel-sb-opt sel-sb-d sel-opt-tpl pullleft" id="sel-d-tpl">D<div class="sel-tpl-ed" id="sel-d-tpl-ed"></div></div>
					<div class="clearboth"></div>
				</div>
			</div>
            <div class="mainbox container dynamicAnswerItem">
                <div class="daInfo divInfo">
                  <div class="daInfoName">李玲</div>
                  <div class="daInfoTime">14:53</div>
                  <div class="daInfoDate">4月22日</div>
                </div>
                <div class="answer_question">
                    <div class="a_question">
                        2、在交互命令外壳里显示在交互命令外壳里显示 WMI、在交互命令外壳里显示在交互命令外壳里显示 WMI、在交互命令外壳里显示在交互命令外壳里显示 WMI、在交互命令外壳里显示在交互命令外壳里显示 WMI 信息在交互命令外壳里显示 WMI 信息在交互命令外壳里显示 WMI 信息在交互命令外壳里显示 WMI 信息。
                    </div>
                    <div class="inputArea">
                        <div class="a_txt">答：</div>
                        <textarea rows="10" cols="131" class="a_answer inputField sslote disabledIF" name="answer1" disabled >节点也可以拥有后代，
                        后代指某个节点的所有子节点，或者这些子节点的子节点，以此类推。
                        比方说，所有的文本节点都是节点的后代，而第一个文本节点的后代
大部分元素节点都有子节点。比方说， 节点有一个子节点：
	节点 节点也有一个子节点：
    文本节点 "DOM Tutorial"</textarea>
                    </div>
                </div>
            </div>
            <div class="mainbox container dynamicAnswerItem">
                <div class="daInfo divInfo">
                  <div class="daInfoName">张毅</div>
                  <div class="daInfoTime">14:50</div>
                  <div class="daInfoDate">4月22日</div>
                </div>
                <div class="judge_question">
                    <div class="j_question">
                        3、在交互命令外壳里显示在交互命令外壳里显示 WMI、在交互命令外壳里显示在交互命令外壳里显示 WMI、在交互命令外壳里显示在交互命令外壳里显示 WMI、在交互命令外壳里显示在交互命令外壳里显示 WMI 信息在交互命令外壳里显示 WMI 信息在交互命令外壳里显示 WMI 信息在交互命令外壳里显示 WMI 信息。
                    </div>
                </div>
                <div class="j_answer_box">
                    <label for="T1"><div class="j_true j_answer" onMouseUp="return setJudgeActive('j1', 'j2');">√<span id="j1" class="selectActive" /></div></label>
                    <label for="F1"><div class="j_false j_answer" onMouseUp="return setJudgeActive('j2', 'j1');">x<span id="j2" class="selectActive" /></div></label>
                    <input type="radio" name="judge1" value="T" id="T1" />
                    <input type="radio" name="judge1" value="F" id="F1" />            
                </div>
            </div>
            <div class="mainbox container dynamicAnswerItem">
                <div class="daInfo divInfo">
                  <div class="daInfoName">李刚</div>
                  <div class="daInfoTime">14:45</div>
                  <div class="daInfoDate">4月22日</div>
                </div>
                <div class="fill_vacant_question">
                    <div class="fv_question">
                        4、在交互命令外壳里显示在交互命令外壳里显示 WMI、在交互命令外壳里显示在交互命令外壳里显示 WMI、在交互命令外壳里显示在交互命令外壳里显示 WMI、在交互命令外壳里显示在交互命令外壳里显示 WMI 信息在<input type="text" name="fv_answer" class="fv_input" disabled="disabled" value="哈哈"/>交互命令外壳里显示 WMI 信息在交互命令外壳里显示 WMI 信息在交互命令外壳里显示 WMI 信息。
                    </div>
                </div>
            </div>        
        </div>
    </div>
</div>

<jsp:include page="include/footer.jsp" />
<script src="script/newExercise.js"></script>
<script type="text/javascript">
	$("#createWork").ready(function() {
		$.getAllExercise();
	});
</script>
</body>
</html>