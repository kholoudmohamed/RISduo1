<%@ taglib prefix="s" uri="/struts-tags" %>
<head>
<script type='text/javascript' src='/RIS/static/js/cookie'></script>
<link rel= "stylesheet" href="/RIS/static/css/tablestyle" >

</head>
<div class="Table-format" >
<table>
	<tr> 
		
		<td>First Name </td>
		<td>Middle Name </td>
		<td>Last Name </td>
		<td>Exam Time</td>
		<td>Attendance Time</td>
		<td>Status</td>
		<td>Room</td> 
		<td></td>
	</tr>
   <s:iterator value="%{procedures}" var="procedure">
      <tr>
         <td><s:property value="%{patientFName}"/></td>
         <td><s:property value="%{patientMName}"/></td>
         <td><s:property value="%{patientLName}"/></td>
         <td><s:property value="%{reservationExamTime}"/></td>
         <td><s:property value="%{reservationAttendanceTime}"/></td>
         <td><s:property value="%{reservationPatientStatus}"/></td>
         <td><s:property value="%{roomName}"/></td>
         <%-- <td><s:a href="/RIS/schedule/view" onclick="$.cookie('patientId', '%{patientId}', {path: '/' });
      	$.cookie('patientFName', '%{PatientFName}', {path: '/' }); 
      	$.cookie('patientLName', '%{PatientLName}', {path: '/' });">
      	Reserve</s:a> </td>	 --%>
      </tr>
   </s:iterator>
</table>
</div> <!-- end table-format -->