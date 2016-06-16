<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs"%>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="col-lg-12" >

    
           <nav>
               <a href="GameDetails.aspx" class="btn btn-success btn-sm"><i class="fa fa-plus"></i> ADD Game</a>
  <ul class="pager">
    <li class="previous"><a href="#"><span aria-hidden="true">&larr;</span> Older</a></li>
    <li class="next"><a href="#">Newer <span aria-hidden="true">&rarr;</span></a></li>
  </ul>
</nav>
     <div class="col-md-4">
        <div class="well">
          

            <h3> <img src="https://upload.wikimedia.org/wikipedia/commons/6/6b/Liga_BBVA.svg" class="img-rounded" alt="Cinque Terre" width="180" height="40"><span class="label label-default"></span></h3>
            <div class="row">
 
<table class="table">
  <thead>
    <tr>
      <th>Weeks</th>
      <th>Real Madrid</th>
      <th>FC Barcelona</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">1</th>
      <td>0 <span class="label label-danger pull-right">- 1%</span></td>
      <td>1 <span class="label label-success pull-right">+ 1%</span></td>
      </tr>
   
    <tr>
      <th scope="row">2</th>
      <th>Bayen Munich</th>
      <th>BVB</th>
    </tr>
       <tr>
      <th scope="row"></th>
      <td>0 <span class="label label-danger pull-right">- 1%</span></td>
      <td>1 <span class="label label-success pull-right">+ 1%</span></td>
      </tr>
       <tr>
      <th scope="row">3</th>
      <th>Liverpool</th>
      <th>Man Unt</th>
    </tr>
       <tr>
      <th scope="row"></th>
      <td>0 <span class="label label-danger pull-right">- 1%</span></td>
      <td>1 <span class="label label-success pull-right">+ 1%</span></td>
      </tr>
  </tbody>
</table>
        </div>
      </div>
      
    
   
    </div>
    <div class="col-lg-12" >
                     
        <div class="col-md-offset-2 col-lg-8">
           <asp:GridView runat="server" CssClass="table table-bordered table-striped table-hover"
                    ID="GameGridView" AutoGenerateColumns="False" DataKeyNames="GameID"
                       PagerStyle-CssClass="pagination-ys" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
                    <AlternatingRowStyle BackColor="#CCCCCC" />
                    <Columns>
                   
                       
                        <asp:BoundField DataField="TeamA" HeaderText="Team A" Visible="true" SortExpression="TeamA" />
                        <asp:BoundField DataField="TeamB" HeaderText="Team B" Visible="true" SortExpression="TeamB" />
                        <asp:BoundField DataField="TeamAScore" HeaderText="Team A Score" Visible="true" SortExpression="TeamAScore" />
                        <asp:BoundField DataField="TeamBScore" HeaderText="Team B Score" Visible="true" SortExpression="TeamBScore" />
                       
                                            </Columns>
                    <FooterStyle BackColor="#CCCCCC" />
                    <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />

<PagerStyle CssClass="pagination-ys" BackColor="#999999" ForeColor="Black" HorizontalAlign="Center"></PagerStyle>
                    <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#808080" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#383838" />
                </asp:GridView>
        </div> 
    </div>   
        </div>                                
</asp:Content>