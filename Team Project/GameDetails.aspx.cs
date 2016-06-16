using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


// using statements required for EF DB access
using Team_Project.Models;
using System.Web.ModelBinding;
namespace Team_Project
{
    public partial class GameDetails : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((!IsPostBack) && (Request.QueryString.Count > 0))
            {
                this.GetGame();
            }
        }

        protected void GetGame()
        {
            // populate the form with existing department data from the db
            int GameID = Convert.ToInt32(Request.QueryString["GameID"]);

            // connect to the EF DB
            using (GameData db = new GameData())
            {
                // populate a department instance with the departmentID from the URL parameter
                Game updatedGame = (from Game in db.Games
                                                where Game.gameID == GameID
                                                select Game).FirstOrDefault();

                // map the Department properties to the form controls
                if (updatedGame != null)
                {
                    teamATextBox.Text = updatedGame.teamA;
                    teamBTextBox.Text = updatedGame.TeamB;
                }
            }
        }


        protected void CancelButton_Click(object sender, EventArgs e)
        {
            // Redirect back to Students page
            Response.Redirect("~/Default.aspx");
        }

        protected void SaveButton_Click(object sender, EventArgs e)
        {
            // Use EF to connect to the server
            using (GameData db = new GameData())
            {
                // use the Department model to create a new Department object and
                // save a new record
                Game newGame = new Game();

                int GameID = 0;

                if (Request.QueryString.Count > 0)
                {
                    // get the id from url
                    GameID = Convert.ToInt32(Request.QueryString["GameID"]);

                    // get the current Department from EF DB
                    newGame = (from Game in db.Games
                                     where Game.gameID == GameID
                                     select Game).FirstOrDefault();
                }

                // add form data to the new Department record
                newGame.teamA = teamATextBox.Text;
                newGame.TeamB = teamATextBox.Text;

                //  Budget.Text =  updatedDepartment.Budget.ToString("{0:C}");

                // use LINQ to ADO.NET to add / insert new Department into the database

                // check to see if a new Department is being added
                if (GameID == 0)
                {
                    db.Games.Add(newGame);
                }

                // save our changes - run an update
                db.SaveChanges();

                // Redirect back to the updated Department page
                Response.Redirect("~/Default.aspx");
            }
        }
    }
}