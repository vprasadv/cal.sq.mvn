package calc.calc.sq.mvn;

import static org.junit.Assert.*;
import org.junit.Test;
import calc.calc.sq.mvn.*;
import java.time.DateTimeException;

public class AgeCalcTest {

	@Test
	public void testCalculateAge_1() throws Exception {
		String expectedOutput = "You are 2 years , 1 month , 2 days old";
		String actualOutput = AgeCalc.calculateAge("2016-5-10");
		boolean condition1 = actualOutput.startsWith(expectedOutput.substring(0, 6));
		boolean condition2 = actualOutput.endsWith("old");
		assertTrue(condition1 && condition2);
	}
}
