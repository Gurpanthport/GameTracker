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
                //this.GetGame();
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
                Game updatedGame = (from Games in db.Games
                                                where Games.gameID == GameID
                                                select Games).FirstOrDefault();

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
            using (GameData db = new GameData())
            {
                // use the Student model to create a new student object and
                // save a new record
                Game newGame = new Game();

                int GameID = 0;

                if (Request.QueryString.Count > 0) // our URL has a StudentID in it
                {
                    // get the id from the URL
                    GameID = Convert.ToInt32(Request.QueryString["GameID"]);

                    // get the current student from EF DB
                    newGame = (from game in db.Games
                               where game.gameID == GameID
                               select game).FirstOrDefault();
                }

                // add form data to the new student record
                newGame.teamA = teamATextBox.Text;
               

                // use LINQ to ADO.NET to add / insert new student into the database

                if (GameID == 0)
                {
                    db.Games.Add(newGame);
                }


                // save our changes - also updates and inserts
                db.SaveChanges();

                // Redirect back to the updated students page
                Response.Redirect("~/Default.aspx");
            }
        }
    }
}