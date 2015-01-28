﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Myreceipt
{
    public class receipt
    {
        double _subTotal;

        public double DiscountRate {get; set;}

        public double MoneyOff {get; set;}

        public double Subtotal {
            get {
                return _subTotal;
                }

            set {
                if (value <= 0){
                    throw new ArgumentOutOfRangeException("Error! You must enter a number greter than 0");
                }
                _subTotal = value;
            }
        }

        public double Total {get; set;}

        public receipt(double subtotal)
        {
            
            Calculate(subtotal);
        }
        
        public void Calculate(double subtotal)
        {
            Subtotal = subtotal;
            if (Subtotal <500) {
                return;
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
        }
    }
}