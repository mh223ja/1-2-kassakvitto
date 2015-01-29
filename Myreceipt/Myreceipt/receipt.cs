using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Myreceipt
{
    public class receipt
    {
        private double _subTotal;

        public double Subtotal
        {
            get;
            set;

            /*get
            {
                return _subTotal;
            }

            set
            {
                if (value <= 0)
                {
                    throw new ArgumentOutOfRangeException("Error! You must enter a number greater than 0");
                }
                _subTotal = value;
            }*/
        }

        public double DiscountRate { get; private set;}

        public double MoneyOff {get; private set;}

        public double Total {get; private set;}

        public receipt(double subtotal)
        {
            
            Calculate(subtotal);
              
        }
        
        public void Calculate(double subtotal)
        {
            Subtotal = subtotal;
            if (Subtotal <500) {
                DiscountRate = 0;
            }

            else if (Subtotal < 1000)
            {
                DiscountRate = .05;
            }

            else if (Subtotal < 5000)
            {
                DiscountRate = .1;

            }

            else
            {
                DiscountRate = .15;
            }
            MoneyOff = Subtotal * DiscountRate;
            Total = Subtotal - MoneyOff;
        }

    }
}