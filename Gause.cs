using System;

namespace Knikker
{
    class Program
    {
        // =========================================================================
        // =========================================================================
        static void Main(string[] args)
        {
            // ---------------------------------------------------------------------
            Random RND = new Random();
            Console.WriteLine(" Geef het aantal pogingen in:");
            int pogingen = int.Parse(Console.ReadLine());
            int result = 0;
            int rnd = 0;

            while (true)
            {
                for (int C_T = 0; C_T < pogingen; C_T++)
                {
                    rnd = RND.Next(0, 2);
                    // if(rnd == 1) Console.WriteLine("FOUND: {0}", rnd);
                    result += rnd;

                }
                // ---------------------------------------------------------------------
                //Console.WriteLine(" FOUND_TIMES: {0}", FOUND_TIMES);

                Console.WriteLine(" Persentage: {0} R: {1}", (100 / (float)pogingen ) * result / 0.8, result);
                rnd = 0;
                result = 0;
                if (Console.ReadLine() == "q") break;
            }

            // ---------------------------------------------------------------------
            Console.ReadKey();
            // ---------------------------------------------------------------------
        }
        // =========================================================================
        // =========================================================================
        // =========================================================================

    }
}
