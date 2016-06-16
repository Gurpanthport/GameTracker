<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="GameDetails.aspx.cs" Inherits="Team_Project.GameDetails" %>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-offset-1 col-md-5">
                <h5>Add the Game Scores</h5>
                <br />
                <div class="form-group">
                 <asp:TextBox runat="server" CssClass="form-control" ID="teamATextBox" placeholder="Team A Name" required="true"></asp:TextBox>
                </div>
                
                <div class="form-group">
                   <asp:TextBox runat="server" CssClass="form-control" ID="teamBTextBox" placeholder="Team B Name" required="true"></asp:TextBox>
                </div>
                 <div class="form-group">
                    
                   <asp:TextBox runat="server" CssClass="form-control" ID="teamAScore" placeholder="Team A Score" required="true"></asp:TextBox>
                </div>
                 <div class="form-group">
                    
                   <asp:TextBox runat="server" CssClass="form-control" ID="teamBScore" placeholder="Score B Score" required="true"></asp:TextBox>
                </div>
                 <div class="form-group">
                            
                    
                    <asp:Button Text="Cancel" ID="CancelButton" CssClass="btn btn-warning btn-lg" runat="server" 
                        UseSubmitBehavior="false" CausesValidation="false" OnClick="CancelButton_Click" />
                  <asp:Button Text="Save" ID="SaveButton" CssClass="btn btn-primary btn-lg" runat="server" OnClick="SaveButton_Click" />
                 
                
               </div>
                </div>
                
              </div>
       
        </div>
        
    
</asp:Content>
