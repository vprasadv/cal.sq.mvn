package calc.calc.sq.mvn;

import static org.junit.Assert.assertTrue;
import static org.junit.Assert.assertFalse;
import org.junit.Test;

import calc.calc.sq.mvn.*;

public class CalcTest 
{
   public Calc calcObj = new Calc(); 
   
   
   @Test
   public void testDoAdd1(){
	   assertTrue((calcObj.doAdd(10, 20)) == 30.0);
   }
   
   @Test
   public void testDoAdd2(){
	   assertFalse((calcObj.doAdd(10, 20)) == -30.0);
   }
   
   @Test
   public void testDoSub(){
	  assertTrue((calcObj.doSub(10, 20)) == -10.0);
   }
   
   @Test
   public void testDoMul1(){
	   assertTrue((calcObj.doMul(10, 20)) == 200.0);
   }
   
   @Test
   public void testDoMul2(){
	   assertTrue((calcObj.doMul(10, 0.2)) == 2.0);
   }
   
   @Test
   public void testDoDiv2() throws Exception{
	   assertTrue((calcObj.doDiv(10, 2)) == 5.0);
   }
   
   @Test(expected = Exception.class)
   public void testDoDiv1() throws Exception{
	   calcObj.doDiv(10, 0);
   }   
}
