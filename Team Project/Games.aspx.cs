﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Team_Project.Models;
using System.Web.ModelBinding;
namespace Team_Project
{
    public partial class Games : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        { 
        //Populate the Games
            if (!IsPostBack)
            {
                //get the student data
                this.GetGames();
    }
}
protected void GetGames()
{
    using (GameConnection db = new GameConnection())
    {
        var Games = (from allGames in db.games
                     select allGames);

        //Bind the result
        GamesGridView.DataSource = Games.ToList();
        GamesGridView.DataBind();
    }
}
    }
}