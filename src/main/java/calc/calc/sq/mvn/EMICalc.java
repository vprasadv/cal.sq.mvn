package calc.calc.sq.mvn;
import java.math.BigDecimal;
import java.math.RoundingMode;

/*
 * This code is for EMI calculation for the given tenure and loan amount
 */

public class EMICalc {
	public static double emi;
	public double emiInstance;
	static {
		emi = 100;
	}
	public static double calculateEMI(double amount,int installments, double roi) {
		double r= roi / (12 * 100); /*one month interest*/
		emi= (amount*r*Math.pow(1+r,installments))/(Math.pow(1+r,installments)-1);
		BigDecimal bd = new java.math.BigDecimal(emi);
		bd = bd.setScale(2, RoundingMode.HALF_UP);
		emi = bd.doubleValue();
		return emi;
	}
	public String toString() {
		return null;
	}
	public boolean equals(EMICalc obj){
		return true;
	}
}
