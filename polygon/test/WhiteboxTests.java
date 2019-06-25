import org.junit.*;

public class WhiteboxTests
{
  private Poly whiteBox = new Poly();

  @Before public void setup()
  {
    System.out.println("\nTest starting...");
  }

  @After public void teardown()
  {
    System.out.println("\nTest finished.");
  }

  @Test public void testMain()
  {
    String[] args = new String[] {"1", "1", "2", "2", "3", "1"};
    whiteBox.main(args);
    args = new String[] {"1", "1"};
    whiteBox.main(args);
    args = new String[] {"1", "c"};
    whiteBox.main(args);
    args = null;
    whiteBox.main(args);
  }

}
