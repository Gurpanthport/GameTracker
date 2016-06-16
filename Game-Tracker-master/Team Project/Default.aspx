<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs"%>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="container-fluid">
    <div>
    <a href="GameDetails.aspx">Add a game</a>
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar">
          <nav>
  <ul class="pager">
    <li class="previous"><a href="#"><span aria-hidden="true">&larr;</span> Older</a></li>
    <li class="next"><a href="#">Newer <span aria-hidden="true">&rarr;</span></a></li>
  </ul>
</nav>
             <div class="pagination pagination-success" style="float:right">
        </div>
       
    </div>

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
    </div>
</asp:Content>
