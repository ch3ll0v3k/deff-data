using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading;

namespace SpartacusRun
{
    class Program
    {
        // ===========================================================================
        static int threadSleepTime              = 40;
        static int total_min                    = 0;
        static int total_sec                    = 0;

        static ConsoleKeyInfo _key;
        static DateTime RACE_START_TIME;
        static DateTime RACE_END_TIME;

        static int changeSpeedEachSecs          = 120;
        static int changeSpeedCounter           = 0;
        static int OBSTAKELS_CORRECTION_DIST    = 2;
        // -------------------------------------------------
        // Jelle 
        static string Jelle                     = "Jelle";
        static int[] JelleMinMaxSpeed           = { 9, (13+1) };
        static int JelleCurrentSpeed            = 0;
        static int JelleCurrentMeterStand       = 0;
        static Random JelleRND;
        static float JelleObstakelKans          = 0.6F;
        static int JelleMeterPerSec             = 0; 
        static bool isJelleOnObstakel           = false;
        static int JelleCurrentObstacelNum      = 0;
        static bool Jelle_FINISHED              = false;
        static DateTime JELLE_RACE_START_TIME;
        static DateTime JELLE_RACE_END_TIME;
        static TimeSpan JelleRaceTime;

        // Lotte 
        static string Lotte                     = "Lotte";
        static int[] LotteMinMaxSpeed           = { 7, (11+1) };
        static int LotteCurrentSpeed            = 0;
        static int LotteCurrentMeterStand       = 0;
        static Random LotteRND;
        static float LotteObstakelKans          = 1.0F;
        static int LotteMeterPerSec             = 0;
        static bool isLotteOnObstakel           = false;
        static int LotteCurrentObstacelNum      = 0;
        static bool Lotte_FINISHED              = false;
        static DateTime LOTTE_RACE_START_TIME;
        static DateTime LOTTE_RACE_END_TIME;
        static TimeSpan LotteRaceTime;

        // -------------------------------------------------
        // Obstakels
        /*
        Afstand in meter Naam obstakel
        100 The Wall
        1100 Fallen Mikado
        1500 Muddylicious
        1900 Waterfest
        2100 Terrilifying
        2400 Tobogaaaaan!
        2700 Tyre mania
        3600 Foooorza!
        4000 Itsy bitsy spider
        */
        static string[] OBSTAKELS_NAME = {
            "The Wall", "Fallen Mikado", "Muddylicious", "Waterfest",
            "Terrilifying", "Tyre mania", "Foooorza!", "Itsy bitsy spider"
        };
        static int[] OBSTAKELS_DIST = {
            100, 1100, 1500, 1900, 2100, 2400, 2700, 3600, 4000
        };

        static int FINISH = 4500;
        // ===========================================================================
        static void Main(string[] args)
        {
            // ------------------------------------------------------

            do
            {
                Console.Clear();
                Console.WriteLine(" Druk op <enter> om race te starten! ");
                _key = Console.ReadKey();

            } while (_key.Key != ConsoleKey.Enter);
            // ------------------------------------------------------
            SpartaRun();
            // ------------------------------------------------------
        }
        // ===========================================================================
        static void SpartaRun()
        {
            // ------------------------------------------------------
            RACE_START_TIME = DateTime.Now;

            LOTTE_RACE_START_TIME = DateTime.Now;
            JELLE_RACE_START_TIME = DateTime.Now;

            JelleRND = new Random();
            LotteRND = new Random();
            GetNieweRunSpeed();
            // ------------------------------------------------------
            while (true)
            {
                // -------------------------------------
                // Time Tracker
                total_sec++;
                if (total_sec == 60)
                {
                    total_min++; total_sec = 0;
                }
                // -------------------------------------
                // Change speed each (changeSpeedEachSecs == 120)
                changeSpeedCounter++;
                if (changeSpeedCounter == changeSpeedEachSecs)
                {
                    changeSpeedCounter = 0; GetNieweRunSpeed();
                }
                //::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
                //::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
                //::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
                // Calculation for runner JELLE
                if (JelleCurrentMeterStand < FINISH) {

                    JelleMeterPerSec = (JelleCurrentSpeed * 1000) / 60 / 60;

                    if (!isJelleOnObstakel)
                    {
                        for (int i = 0; i < OBSTAKELS_DIST.Length - 1; i++)
                        {
                            if (JelleCurrentMeterStand + OBSTAKELS_CORRECTION_DIST >= OBSTAKELS_DIST[i]
                                &&
                                JelleCurrentMeterStand - OBSTAKELS_CORRECTION_DIST <= OBSTAKELS_DIST[i])
                            {
                                isJelleOnObstakel = true;
                                JelleCurrentObstacelNum = i;
                                break;
                            }
                        }

                        JelleCurrentMeterStand += JelleMeterPerSec;
                    }
                    else
                    {
                        int rnd_A = JelleRND.Next(0, 38);
                        int rnd_B = JelleRND.Next(0, 38);

                        if (rnd_A == rnd_B)
                        {
                            JelleCurrentMeterStand += JelleMeterPerSec + 4;
                            isJelleOnObstakel = false;
                        }
                    }
                }
                else
                {
                    if (!Jelle_FINISHED)
                    {
                        Jelle_FINISHED = true;
                        JELLE_RACE_END_TIME = DateTime.Now;
                        JelleRaceTime = (JELLE_RACE_END_TIME.AddSeconds((total_min * 60) + total_sec)) - JELLE_RACE_START_TIME;
                    }

                }
                //::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
                //::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
                //::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
                // Calculation for runner LOTTE
                if (LotteCurrentMeterStand < FINISH)
                {
                    LotteMeterPerSec = (LotteCurrentSpeed * 1000) / 60 / 60;

                    if (!isLotteOnObstakel)
                    {
                        for (int i = 0; i < OBSTAKELS_DIST.Length - 1; i++)
                        {
                            if (LotteCurrentMeterStand + OBSTAKELS_CORRECTION_DIST >= OBSTAKELS_DIST[i]
                                &&
                               LotteCurrentMeterStand - OBSTAKELS_CORRECTION_DIST <= OBSTAKELS_DIST[i])
                            {
                                isLotteOnObstakel = true;
                                LotteCurrentObstacelNum = i;
                                break;
                            }
                        }

                        LotteCurrentMeterStand += LotteMeterPerSec;
                    }
                    else
                    {
                        int rnd_A = LotteRND.Next(0, 25);
                        int rnd_B = LotteRND.Next(0, 25);

                        if (rnd_A == rnd_B)
                        {
                            LotteCurrentMeterStand += LotteMeterPerSec + 4;
                            isLotteOnObstakel = false;
                        }
                    }
                }
                else
                {
                    if (!Lotte_FINISHED)
                    {
                        Lotte_FINISHED = true;
                        LOTTE_RACE_END_TIME = DateTime.Now;
                        LotteRaceTime = (LOTTE_RACE_END_TIME.AddSeconds((total_min*60)+total_sec)) - LOTTE_RACE_START_TIME;
                    }

                }
                //::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
                //::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
                //::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
                // Display current status of each runner
                Console.Clear();
                Console.WriteLine(" ***** {0} Min.  {1} Sec. aan het lopen! ***** ", total_min, total_sec);
                Console.WriteLine(" ------------------------------------------------------------- ");
                if (JelleCurrentMeterStand > LotteCurrentMeterStand)
                {
                    // ----------------------------
                    if (!Jelle_FINISHED)
                    {

                        if (!isJelleOnObstakel)
                            WriteColoredLine(" " + Jelle + " : Snelheid: " + JelleCurrentSpeed + " km/h \n\t afstand: " + JelleCurrentMeterStand, "green");
                        else
                            WriteColoredLine(" " + Jelle + " : Zit vast in obstakel  ('" + OBSTAKELS_NAME[JelleCurrentObstacelNum] + "') | \n\tAFSTAND: " + JelleCurrentMeterStand, "green");
                    }
                    else
                    {
                        WriteColoredLine(" " + Jelle + " : Finished in: \n\t" + JelleRaceTime.Hours + ":" + JelleRaceTime.Minutes + ":" + JelleRaceTime.Seconds, "green");
                    }
                    // ----------------------------
                    if (!Lotte_FINISHED)
                    {
                        if (!isLotteOnObstakel)
                            WriteColoredLine(" " + Lotte + " : Snelheid: " + LotteCurrentSpeed + " km/h \n\t afstand: " + LotteCurrentMeterStand, "red");
                        else
                            WriteColoredLine(" " + Lotte + " : Zit vast in obstakel  ('" + OBSTAKELS_NAME[LotteCurrentObstacelNum] + "') | \n\tAFSTAND: " + LotteCurrentMeterStand, "red");
                    }
                    else
                    {
                        WriteColoredLine(" " + Lotte + " : Finished in: \n\t" + LotteRaceTime.Hours + ":" + LotteRaceTime.Minutes + ":" + LotteRaceTime.Seconds, "green");
                    }
                    // ----------------------------
                }
                else
                {
                    // ----------------------------
                    if (!Jelle_FINISHED)
                    {
                        if (!isJelleOnObstakel)
                            WriteColoredLine(" " + Jelle + " : Snelheid: " + JelleCurrentSpeed + " km/h \n\t afstand: " + JelleCurrentMeterStand, "red");
                        else
                            WriteColoredLine(" " + Jelle + " : Zit vast in obstakel  ('" + OBSTAKELS_NAME[JelleCurrentObstacelNum] + "') |\n\t AFSTAND: " + JelleCurrentMeterStand, "red");
                    }
                    else
                    {
                        WriteColoredLine(" " + Jelle + " : Finished in: \n\t" + JelleRaceTime.Hours + ":" + JelleRaceTime.Minutes + ":" + JelleRaceTime.Seconds, "green");
                    }
                    // ----------------------------
                    if (!Lotte_FINISHED)
                    {
                        if (!isLotteOnObstakel)
                            WriteColoredLine(" " + Lotte + " : Snelheid: " + LotteCurrentSpeed + " km/h \n\t afstand: " + LotteCurrentMeterStand, "green");
                        else
                            WriteColoredLine(" " + Lotte + " : Zit vast in obstakel  ('" + OBSTAKELS_NAME[LotteCurrentObstacelNum] + "') | \n\tAFSTAND: " + LotteCurrentMeterStand, "green");
                    }
                    else
                    {
                        WriteColoredLine(" " + Lotte + " : Finished in: \n\t" + LotteRaceTime.Hours + ":" + LotteRaceTime.Minutes + ":" + LotteRaceTime.Seconds, "green");
                    }
                    // ----------------------------
                }

                Console.WriteLine(" ------------------------------------------------------------- ");
                Thread.Sleep(threadSleepTime);
                // -------------------------------------
                if (Jelle_FINISHED && Lotte_FINISHED) break;
                // -------------------------------------
            }
            // ------------------------------------------------------
            RACE_END_TIME = DateTime.Now;

            int ADDING = (total_min * 60) + total_sec;

            RACE_END_TIME = RACE_END_TIME.AddSeconds(ADDING);

            JELLE_RACE_END_TIME = JELLE_RACE_END_TIME.AddSeconds(ADDING);
            LOTTE_RACE_END_TIME = LOTTE_RACE_END_TIME.AddSeconds(ADDING);


            if (JelleRaceTime < LotteRaceTime) {
                WriteColoredLine(" ***** " + Jelle + " ***** : Is the winner of the race\n", "green");
                WriteColoredLine(" " + Jelle + " : Finished in: " + JelleRaceTime.Hours + ":" + JelleRaceTime.Minutes + ":" + JelleRaceTime.Seconds, "green");
                WriteColoredLine(" " + Lotte + " : Finished in: " + LotteRaceTime.Hours + ":" + LotteRaceTime.Minutes + ":" + LotteRaceTime.Seconds, "red");
            }
            else
            {
                WriteColoredLine(" ***** " + Lotte + " ***** : Is the winner of the race\n", "green");
                WriteColoredLine(" " + Lotte + " : Finished in: " + LotteRaceTime.Hours + ":" + LotteRaceTime.Minutes + ":" + LotteRaceTime.Seconds, "green");
                WriteColoredLine(" " + Jelle + " : Finished in: " + JelleRaceTime.Hours + ":" + JelleRaceTime.Minutes + ":" + JelleRaceTime.Seconds, "red");
            }
            Console.WriteLine(" ------------------------------------------------------------- ");
            Console.WriteLine("Race Time:");
            Console.WriteLine("\n\t Start  : \t" + RACE_START_TIME.ToString());
            Console.WriteLine("\n\t End    : \t" + RACE_END_TIME.ToString());
            Console.WriteLine(" ------------------------------------------------------------- ");

            // ------------------------------------------------------
            Console.WriteLine("\n\n\t Press any <key> to quit! \n");
            Console.ReadKey();

            // ------------------------------------------------------
        }

        // ===========================================================================
        static void GetNieweRunSpeed()
        {
            // ------------------------------------------------------
            if(JelleCurrentMeterStand < FINISH)
                JelleCurrentSpeed = JelleRND.Next(JelleMinMaxSpeed[0], JelleMinMaxSpeed[1]);
            if (JelleCurrentMeterStand < FINISH)
                LotteCurrentSpeed = LotteRND.Next(LotteMinMaxSpeed[0], LotteMinMaxSpeed[1]);
            // ------------------------------------------------------
        }
        // ===========================================================================
        static void WriteColoredLine(string line, string _color)
        {
            // ------------------------------------------------------
            //Console.BackgroundColor = ConsoleColor.Green;
            if (_color == "red")
                Console.ForegroundColor = ConsoleColor.Red;
            else
                Console.ForegroundColor = ConsoleColor.Green;

            Console.WriteLine(line); Console.ResetColor();
            // ------------------------------------------------------

        }
        // ===========================================================================
        // ===========================================================================
        // ===========================================================================

    }
}
