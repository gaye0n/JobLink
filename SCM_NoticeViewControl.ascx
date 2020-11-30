<%@ Control Language="C#" AutoEventWireup="true" CodeFile="SCM_NoticeViewControl.ascx.cs" Inherits="Admin_SCM_NoticeViewControl" %>

 
<table style="border: 1px solid #d7d7d7">
    <asp:Label ID="lblNoticeError" runat="server" ForeColor="Red"></asp:Label>
</table>   

   
<table width="98%" style="border: 1px solid #d7d7d7">
    <tr height="30px" bgcolor="#5D7B9D">
        <td colspan="8" align="center"><font color="#FFFFFF"><b>담당자별 판매실적 현황 확인</b></td>
    </tr> 

    <tr height="30px">
        <td bgcolor="#efefef" width="10%" align="center"><b> 품명 및 규격 </b></td>
        <td width="30%" align="center"><b><asp:Label ID="lblTitle" runat="server"></asp:Label></b></td>

        <td bgcolor="#efefef" width="10%" align="center"><b> 품목 </b></td>
        <td width="10%" align="center"><b><asp:Label ID="lblitem1" runat="server"></asp:Label></b></td>

        <td bgcolor="#efefef" width="10%" align="center"><b> 담당자 </b></td>
        <td width="10%" align="center"><b><asp:Label ID="lblsalesman1" runat="server"></asp:Label></b></td>

        <td bgcolor="#efefef" width="10%" align="center"><b> 일자 </b></td>
        <td width="10%" align="center"><b><asp:Label ID="lblsalesdate1" runat="server"></asp:Label></b></td>
    </tr>
</table>
<br/> 			
			


			
<% if (lblsalesman1.Text != "")  { %>
<table width="98%" border="1px" bordercolor="#d7d7d7">
    <tr height="30px">
        <td bgcolor="#efefef" width="10%" align="center"><b> 판매처 </b></td>
        <td width="30%" align="left"> &nbsp <b><asp:Label ID="lblcompany1" runat="server"></asp:Label></b></td>

        <td bgcolor="#efefef" width="10%" align="center" rowspan="8"><b> 이미지 </b></td>
        <td align="center" rowspan="8">
            <% if (lblFileName.Text != "")  { %>
            <img src ="../../fileUpload/notice/<%= lblFileName.Text %>" width="35%" height="250px">
            <%} else { %> 
            <%} %>
            <!--<asp:Label ID="lblFileName" runat="server"></asp:Label><asp:Button ID="btnFile"  runat="server" onclick="btnFile_Click" Text="download" />-->
        </td>
    </tr>

    <tr height="30px">
        <td bgcolor="#efefef" width="10%" align="center"><b> 수량 </b></td><td align="left"> &nbsp <b><asp:Label ID="lblea1" runat="server"></asp:Label> ea </b></td>
    </tr>

    <tr height="30px">
        <td bgcolor="#efefef" width="10%" align="center"><b> 단가 </b></td><td align="left"> &nbsp <b><asp:Label ID="lblprice1" runat="server"></asp:Label> 원 </b></td>
    </tr>

    <tr height="30px">
        <td bgcolor="#efefef" width="10%" align="center"><b> 공급가액 </b></td><td align="left"> &nbsp <b><asp:Label ID="lblsupply1" runat="server"></asp:Label> 원 </b></td>
    </tr>

    <tr height="30px">
        <td bgcolor="#efefef" width="10%" align="center"><b> 부가세(VAT) </b></td><td align="left"> &nbsp <b><asp:Label ID="lblvat1" runat="server"></asp:Label> 원 </b></td>
    </tr>

    <tr height="30px">
        <td bgcolor="#efefef" width="10%" align="center"><b> 합계 </b></td>
        <td align="left"> &nbsp <b><asp:Label ID="lbltotal1" runat="server"></asp:Label> 원 </b></td>
    </tr>    

</table>
<%} else { %> 
<%} %>
<br/>
  
 
 




<table width="98%" border="0" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF" height="20px">
    <tr>
        <td width="80px" align="center"><font color="#FFFFFF"><b>작성자</b></td>
        <td width="5px"></td>

        <td width="160px" align="left"><font color="#FFFFFF">관리자</td>
        <td width="80px"><font color="#FFFFFF"><b>작성일</b></td>
        
        <td width="5px"></td>
        <td width="150px" align="left"><font color="#FFFFFF"> 
		<asp:Label ID="lblPostDate" runat="server"></asp:Label></td>
        
        <td width="80px"><font color="#FFFFFF"><b>조회수</b></td>
        <td width="5px"> </td>
        
        <td width="100px" align="left"><font color="#FFFFFF">
        <asp:Label ID="lblReadCount" runat="server"></asp:Label>
        </td>
    </tr>
</table>     


<table width="98%" border="0">
	<tr><td><HR SIZE="1"></td></tr>
                
    <tr>
        <td align="right">
            <asp:ImageButton ID="btnList" runat="server" ImageUrl="~/Images/list_bt.gif" OnClick="btnList_Click" />
            <asp:ImageButton ID="btnmodify" runat="server" ImageUrl="~/Images/re_bt.gif" OnClick="btnmodify_Click" />
            <asp:ImageButton ID="btnDelete" runat="server" ImageUrl="~/Images/delete_bt.gif" 
                             OnClick="btnDelete_Click" style="height: 24px" />
        </td>
    </tr>
</table>
   

<!--
<asp:Label ID="lblFileName2" runat="server"></asp:Label><asp:Button  ID="btnFile2"  runat="server" onclick="btnFile_Click" Text="download" />
<asp:Label ID="lblFileName3" runat="server"></asp:Label><asp:Button  ID="btnFile3"  runat="server" onclick="btnFile_Click" Text="download" />
<asp:Label ID="lblFileName4" runat="server"></asp:Label><asp:Button  ID="btnFile4"  runat="server" onclick="btnFile_Click" Text="download" />
<asp:Label ID="lblFileName5" runat="server"></asp:Label><asp:Button  ID="btnFile5"  runat="server" onclick="btnFile_Click" Text="download" />-->

