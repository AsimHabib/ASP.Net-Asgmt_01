using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Asgmt_01
{
    public partial class _default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCalculate_Click(object sender, EventArgs e)
        {
            // get the Numeric values from the text box
            // Since values are entered as TEXT, so convert them into integer value
            // get the value for Game 1
            int nScored1 = int.Parse(txtScored1.Text);
            int nAgainst1 = int.Parse(txtAgainst1.Text);
            int nSpectators1 = int.Parse(txtSpectators1.Text);

            // get the value for Game 2
            int nScored2 = int.Parse(txtScored2.Text);
            int nAgainst2 = int.Parse(txtAgainst2.Text);
            int nSpectators2 = int.Parse(txtSpectators2.Text);

            // get the value for Game 3
            int nScored3 = int.Parse(txtScored3.Text);
            int nAgainst3 = int.Parse(txtAgainst3.Text);
            int nSpectators3 = int.Parse(txtSpectators3.Text);

            // get the value for Game 4
            int nScored4 = int.Parse(txtScored4.Text);
            int nAgainst4 = int.Parse(txtAgainst4.Text);
            int nSpectators4 = int.Parse(txtSpectators4.Text);

            // Sum up the Score, Against and spectaors
            int nTotalScore = nScored1 + nScored2 + nScored3 + nScored4;
            int nTotalAgainst = nAgainst1 + nAgainst2 + nAgainst3 + nAgainst4;
            int nTotalSpectator = nSpectators1 + nSpectators2 + nSpectators3 + nSpectators4;

            // Calculate the difference between points won and lost
            int nPointsDiff = nTotalScore - nTotalAgainst;

            // Calculate the Average Attendance
            int nAvgAttendance = nTotalSpectator/4;


            //Games wins and lost Result (Radio Button List)

            int gamesWon = 0;
            int gamesLost = 0;

            var radioButtons = new List<RadioButtonList>()
                {                    
                    rblResult1,
                    rblResult2,
                    rblResult3,
                    rblResult4,
                };
            foreach (RadioButtonList rbl in radioButtons)
            {
                if (rbl.SelectedValue == "1")
                {
                    gamesWon++;
                }
                else if (rbl.SelectedValue == "0")
                {
                    gamesLost++;
                }
            }

           
            // Calculate the Percentage
           int winPct = (gamesWon * 100) / 4;

            //Display the values as String
            showResult.Visible = true; // Make Bootstrap Well visible
            lblWon.Text = "Wins: " + gamesWon.ToString();
            lblLost.Text = "Losses: " + gamesLost.ToString();
            lblWinPct.Text = "Winning %: " + winPct.ToString();
            lblTotalScored.Text = "Points Scored: " + nTotalScore.ToString();
            lblTotalAgainst.Text = "Points Against: " + nTotalAgainst.ToString();
            lblPointDiff.Text = "Point Differential: " + nPointsDiff.ToString();
            lblTotalSpectators.Text = "Total Attendance: " + nTotalSpectator.ToString();
            lblAvgAttendance.Text = "Average Attendance: " + nAvgAttendance.ToString();
            
        }
    }
}