using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Versaler
{
    public static class CapitalCounter
    {

        public static int CountCapitals (string textInput)
        {
            int capitalNumber = 0;

            foreach (char a in textInput)
            {
                if (char.IsUpper(a))
                {
                    capitalNumber++;
                }
            }
            return capitalNumber;
        }
    }
}