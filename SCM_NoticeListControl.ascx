<%@ Control Language="C#" AutoEventWireup="true" CodeFile="SCM_NoticeListControl.ascx.cs" Inherits="Admin_SCM_NoticeListControl" %>
<asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>

<style type="text/css">


/*담당자별 합계 행 스타일*/
.sum_line .val1 {
    background-color: #efefef;
    color: #000;
    font-weight: 600;
    text-align: center;
    height: 18px;
}
.sum_line .val2 {
    background-color: #efefef;
    color: #000;
    font-weight: 600;
    text-align: right;
    height: 18px;
}


</style>


                    <table width="98%"  border="0" cellpadding="0" cellspacing="0"> 
                      
                        <tr>
                            <td height="30" colspan="10" align="center" bgcolor="#5D7B9D"><font color="#ffffff"><b>담당자별 판매실적 현황</b></font></td>
                        </tr>
                        
                        <tr>
                            <td height="40" align="center">


                                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                                    <ContentTemplate>
                                        <asp:GridView ID="ctlNoticeList" runat="server" AutoGenerateColumns="False" AllowPaging="True"
                                                      Width="100%" Font-Size="11px" CellPadding="4" ForeColor="#333333"  PageSize="50"
                                                      OnPageIndexChanging="ctlNoticeList_PageIndexChanging">

                                    <Columns>
                                        
                                        <asp:BoundField DataField="SCM_SalesID" HeaderText="번호" ItemStyle-Width="70px" ItemStyle-HorizontalAlign="Center"
                                                        HeaderStyle-Width="5%" HeaderStyle-HorizontalAlign="Center" />
                                      
                                        
                                        <asp:BoundField DataField="salesdate1" HeaderText="일자" HtmlEncode="False" DataFormatString="{0:yyyy-MM-dd}">
                                            <ItemStyle HorizontalAlign="Center" Width="10%" />
                                        </asp:BoundField>


                                       
										<asp:TemplateField HeaderText ="담당자명">
                                            <ItemTemplate>    
                                                <div class="salesman">                                  
                                                    <%#FuncCutStrng(Eval("salesman1"))%>	                                 
                                                </div>
                                            </ItemTemplate>
                                            <ItemStyle Width ="8%" HorizontalAlign ="center" />
                                        </asp:TemplateField> 


                                        
					                    <asp:TemplateField HeaderText="품명 및 규격">
                                            <ItemTemplate>
                                                <a href='SCM_NoticeView.aspx?SCM_SalesID=<%#Eval("SCM_SalesID") %>'>
                                                    <%#FuncCutStrng(Eval("Title"))%>
                                                    &nbsp;
                                                    <%#FuncNew(Eval("PostDate")) %>
                                                 </a>
                                            </ItemTemplate>
                                            <ItemStyle Width="20%" HorizontalAlign="center" />
                                        </asp:TemplateField>


                                        <asp:TemplateField HeaderText="품목">
                                            <ItemTemplate> 
                                                &nbsp;<b><%#FuncCutStrng(Eval("item1"))%></b>											   
                                            </ItemTemplate>
                                            <ItemStyle Width="8%" HorizontalAlign="center" />
                                        </asp:TemplateField>
										

                                         
                                        <asp:TemplateField HeaderText ="수량">
                                            <ItemTemplate>
                                                <div class="ea">                                    
                                                    <%#FuncCutStrng(Eval("ea1"))%>   
                                                </div>                             
                                            </ItemTemplate>
                                            <ItemStyle Width ="5%" HorizontalAlign ="center" />
                                        </asp:TemplateField>


                                         
                                        <asp:TemplateField HeaderText ="단가">
                                            <ItemTemplate>   
                                                <div class="price">                                   
                                                    <%#FuncCutStrng(Eval("price1"))%>   
                                                </div>                             
                                            </ItemTemplate>
                                            <ItemStyle Width ="8%" HorizontalAlign ="center" />
                                        </asp:TemplateField>


                                             
                                        <asp:TemplateField HeaderText ="공급가액">
                                            <ItemTemplate> 
                                                <div class="supply">                                     
                                                    <%#FuncCutStrng(Eval("supply1"))%>	
                                                </div>                                 
                                            </ItemTemplate>
                                            <ItemStyle Width ="8%" HorizontalAlign ="center" />
                                        </asp:TemplateField>


                                        <asp:TemplateField HeaderText ="부가세">
                                            <ItemTemplate>                    
                                                <div class="vat">                  
                                                    <%#FuncCutStrng(Eval("vat1"))%>	
                                                </div>                                 
                                            </ItemTemplate>
                                            <ItemStyle Width ="8%" HorizontalAlign ="center" />
                                        </asp:TemplateField> 

										
										<asp:TemplateField HeaderText ="합계">
                                            <ItemTemplate>
                                                <div class="total">                                      
                                                    <%#FuncCutStrng(Eval("total1"))%>
                                                </div>	                                 
                                            </ItemTemplate>
                                            <ItemStyle Width ="8%" HorizontalAlign ="center" />
                                        </asp:TemplateField> 
                                        
                                       
                                        <asp:TemplateField HeaderText ="판매처명">
                                            <ItemTemplate>                                     
                                                <%#FuncCutStrng(Eval("company1"))%>	                                 
                                            </ItemTemplate>
                                            <ItemStyle Width ="15%" HorizontalAlign ="center" />
                                        </asp:TemplateField>


                                        <asp:BoundField DataField="ReadCount" HeaderText="조회">
                                            <ItemStyle HorizontalAlign="Center"  Width="5%" />
                                        </asp:BoundField>


                                        
                                        


                                                        
                                                        
                                        <asp:TemplateField>
                                            <HeaderTemplate>
                                                <asp:CheckBox ID="chkAll" runat="server" AutoPostBack="true" OnCheckedChanged="chkAll_CheckedChanged" />
                                            </HeaderTemplate>
                                                <ItemTemplate>
                                                    <asp:CheckBox ID="chk" runat="server" />
                                                </ItemTemplate>
                                                <ItemStyle HorizontalAlign="center"   />
                                        </asp:TemplateField>
                                                        
                                                        
                                                        
                                                        
                                                
										
										
										
										
										
										
										
										
										
										
                                    </Columns>
                                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                                    <EditRowStyle BackColor="#999999" />
                                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                                    <HeaderStyle BackColor="#d7d7d7" Font-Bold="True" ForeColor="black" />
                                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                                </asp:GridView>
                                <asp:Label ID="lblError" runat="server" ForeColor="Red"></asp:Label>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </td>
                </tr>
                <tr>
                    <td height="1" bgcolor="#cccccc">
                    </td>
                </tr>
<tr><td colspan="3" align="right">
				

<table border="0" cellpadding="1" cellspacing="1" align="right">
                <tr>
                    <td height="40" align="right" valign="top">
                         <asp:Panel ID="Panel1" runat="server" Width="100%" DefaultButton="btnSearch">
                             <asp:DropDownList ID="lstField" runat="server" CssClass="DropList">
                                 <asp:ListItem Selected="True" Value="Title">제목</asp:ListItem> 
                                  <asp:ListItem Value="salesman1">내용</asp:ListItem>
                             </asp:DropDownList></td>                        
                             
			                  <td height="40" align="left" valign="top">
			                     <asp:TextBox ID="txtQuery" runat="server" CssClass="txt"></asp:TextBox>
			                  </td>
                              <td height="40" align="left" valign="top"><nobr><asp:ImageButton ID="btnSearch" runat="server" ImageUrl="~/Images/find_bt.gif" OnClick="btnSearch_Click" />
                                 <asp:ImageButton ID="btnWrite" runat="server" ImageUrl="~/Images/write_bt.gif" OnClick="btnWrite_Click" />
                                 <asp:ImageButton ID="btnDelete" runat="server" ImageUrl="~/Images/delete_bt.gif" OnClick="btnDelete_Click" />
                                 <!--<asp:ImageButton ID="btnPush" runat="server" ImageUrl="~/Images/Push_bt.gif" OnClick="btnPush_Click" />-->
                              </td>
                         </asp:Panel>

<!--<td   align="center" valign="middle" width=100 bgcolor="red"><a href="./PushNotice.ashx?aaa=12345"><font color="#ffffff"><b>PushNotice</b></font></TD>-->
                </tr>
</table> 





</tr></table> 

 
       
 </td></tr></table> 
 </td></tr></table> 


  <script src="./build/func1.js" type="text/javascript" charset="utf-8"></script>


                    