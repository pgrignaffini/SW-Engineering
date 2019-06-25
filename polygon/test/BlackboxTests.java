
import org.junit.*;

public class BlackboxTests
{
   // Data you need for each test case
   private Polygon triangle;
   private Polygon polygon;
   private int a[] = {2,5,7,2,3};

//
// Stuff you want to do before each test case
//
@Before public void setup()
{
   Point p1, p2, p3;
   p1 = new Point(1,2);
   p2 = new Point(3,5); //changed this point to make a triangle
   p3 = new Point(5,2); //changed this point to make a triangle
   System.out.println("\nTest starting...");
   triangle = new Polygon(p1,p2,p3);
}

//
// Stuff you want to do after each test case
//
@After public void teardown()
{
   System.out.println("\nTest finished.");
}

/**
* In this test case I analyze the expected behavior of the addVertex function in two cases,
* one represents the good usage of the function, namely the after point is already contained in
* the polygon (afterIn), and therefore the function must add it to the polygon and return a true
* value, while the second case represents a bad usage of the function, namely the after point
* is not included in the vertices of the polygon (afterOut), and therefore the function must return
* a false value and not add it to the list of vertices.
**/
@Test public void testAddVertex()
{
   boolean s;
   Point afterIn = new Point(1,2);
   Point toAdd = new Point(2,5);
   s = triangle.addVertex(toAdd, afterIn);
   Assert.assertTrue(s);
   Point afterOut = new Point(4,4);
   s = triangle.addVertex(toAdd, afterOut);
   Assert.assertFalse(s);
}

/*
In this test case I provide a point to the vertices function and I test the output
correctness by comparing the array returned by the function with the correct result
*/
@Test public void testVertices()
{
  boolean s;
  Point startNear = new Point(4,4);
  Point vertices[] = triangle.vertices(startNear);
  Point result[] = new Point[3];
  Point p1 = new Point(3,5);
  Point p2 = new Point(5,2);
  Point p3 = new Point(1,2);
  result[0] = p1;
  result[1] = p2;
  result[2] = p3;

  for (int i = 0; i < 3; i++)
  {
    s = result[i].equals(vertices[i]);
    Assert.assertTrue(s);
  }

}

//
// In this test case I add one point to make the polygon concave
// and I test the correctness of the function output, after that
// I remove that point and add a new one to make the polygon convex
// and check again the correctness of the function
@Test public void testIsConvex()
{
  boolean s;
  Point concave = new Point(3,3);
  Point convex = new Point(2,4);
  Point p1 = new Point(1,2);
  triangle.addVertex(concave, p1);
  s = triangle.isConvex();
  Assert.assertFalse(s);
  triangle.removeVertex(concave);
  triangle.addVertex(convex, p1);
  s = triangle.isConvex();
  Assert.assertTrue(s);
}

//
//In this test case I check the correctness of the function
//in three cases, one with a point out of the bounding box,
//one with a point in the bounding box, and finally with
//a point on the edge
@Test public void testInBoundingbox()
{
   Point p, p_tr, q_tr, r_tr;
   boolean s;
   p_tr = new Point(1,1);
   q_tr = new Point(2,2);
   r_tr = new Point(3,1);
   Polygon tri_eq = new Polygon(p_tr, q_tr, r_tr);
   p = new Point(2,2);
   s = tri_eq.inBoundingBox(p);
   Assert.assertTrue(s);
   p = new Point(0,2);
   s = tri_eq.inBoundingBox(p);
   Assert.assertFalse(s);
   p = new Point(4,2);
   s = tri_eq.inBoundingBox(p);
   Assert.assertFalse(s);
   p = new Point(2,0);
   s = tri_eq.inBoundingBox(p);
   Assert.assertFalse(s);
   p = new Point(2,3);
   s = tri_eq.inBoundingBox(p);
   Assert.assertFalse(s);
}


/**
Thest the function correctness by giving it two points inside
the polygon and two other points outside the polygon
**/
@Test public void testInPolygon()
{
  Point p_in, p_in2, p_out, p_out2;
  boolean s;
  p_in = new Point(3,3);
  p_in2 = new Point(4,2);
  p_out = new Point(3,6);
  p_out2 = new Point(0,2);
  s = triangle.inPolygon(p_in);
  Assert.assertTrue(s);
  s = triangle.inPolygon(p_in2);
  Assert.assertTrue(s);
  s = triangle.inPolygon(p_out);
  Assert.assertFalse(s);
  s = triangle.inPolygon(p_out2);
  Assert.assertFalse(s);
}

/**
In this test case I create a concave polygon and test
the function correctness by calling isConvex() to the
resulting polygon, which must return true
**/
@Test public void testMakeConvex()
{
  boolean s;
  Point p1, p2, p3, p4, p5, p6, p7;
  p1 = new Point(3,1);
  p2 = new Point(5,3);
  p3 = new Point(3,6);
  p4 = new Point(7,8);
  p5 = new Point(9,5);
  p6 = new Point(6,6);
  p7 = new Point(8,1);
  polygon = new Polygon(p1,p2,p3);
  polygon.addVertex(p4, p3);
  polygon.addVertex(p5, p4);
  polygon.addVertex(p6, p5);
  polygon.addVertex(p7, p6);
  int n = polygon.makeConvex();
  s = polygon.isConvex();
  Assert.assertTrue(s);
  s = (n==2);
  Assert.assertTrue(s);
}

@Test public void testFindClosest()
{
  Point p1, p2, p3, p4, p5, p6, p1_tr, p2_tr, p3_tr;
  p1_tr = new Point(1,2);
  p2_tr = new Point(3,5);
  p3_tr = new Point(5,2);
  p4 = new Point(1,3);
  p5 = new Point(1,5);
  p6 = new Point(5,3);
  p1 = triangle.findClosest(p4);
  Assert.assertTrue(p1.equals(p1_tr));
  p2 = triangle.findClosest(p5);
  Assert.assertTrue(p2.equals(p2_tr));
  p3 = triangle.findClosest(p6);
  Assert.assertTrue(p3.equals(p3_tr));
}

@Test public void testFindOrientation()
{
  Polygon leftPoly, rightPoly, colPoly;
  Point p, q, r;
  p = new Point(2,2);
  q = new Point(3,3);
  r = new Point(2,4);
  leftPoly = new Polygon(p,q,r);
  Assert.assertTrue(leftPoly.findOrientation(p, q, r) == -1);
  r = new Point(4,1);
  rightPoly = new Polygon(p,q,r);
  Assert.assertTrue(rightPoly.findOrientation(p, q, r) == 1);
  p = new Point(2,1);
  q = new Point(3,1);
  colPoly = new Polygon(p,q,r);
  Assert.assertTrue(colPoly.findOrientation(p, q, r) == 0);
}

@Test public void testRemoveVertex()
{
  boolean s;
  Point p1 = new Point(1,2);
  s = triangle.removeVertex(p1);
  Assert.assertTrue(s);
  Point p2 = new Point(5,5);
  s = triangle.removeVertex(p2);
  Assert.assertFalse(s);
}

@Test public void testOnSegment()
{
  Point p, q, r, s;
  p = new Point(2,2);
  q = new Point(3,2);
  r = new Point(4,2);
  s = new Point(5,2);
  Assert.assertTrue(triangle.onSegment(p,q,r));
  Assert.assertFalse(triangle.onSegment(p,s,r));
  q = new Point(2,2);
  Assert.assertTrue(triangle.onSegment(p,q,r));
  q = new Point(4,2);
  Assert.assertTrue(triangle.onSegment(p,q,r));
  p = new Point(1,1);
  q = new Point(2,2);
  r = new Point(3,3);
  Assert.assertTrue(triangle.onSegment(p,q,r));
  q = new Point(4,2);
  Assert.assertFalse(triangle.onSegment(p,q,r));
  p = new Point(2,1);
  q = new Point(1,2);
  Assert.assertFalse(triangle.onSegment(p,q,r));
  p = new Point(1,1);
  q = new Point(2,4);
  Assert.assertFalse(triangle.onSegment(p,q,r));
  p = new Point(1,3);
  q = new Point(2,2);
  Assert.assertFalse(triangle.onSegment(p,q,r));
}

@Test public void testIntersects()
{
  Point p1, q1, p2, q2;
  p1 = new Point(1,1);
  q1 = new Point(4,4);
  p2 = new Point(4,1);
  q2 = new Point(1,4);
  Assert.assertTrue(triangle.intersects(p1, q1, p2, q2));
  p2 = new Point(2,1);
  q2 = new Point(5,4);
  Assert.assertFalse(triangle.intersects(p1, q1, p2, q2));
  q1 = new Point(3,3);
  p2 = new Point(4,4);
  q2 = new Point(2,2);
  Assert.assertTrue(triangle.intersects(p1, q1, p2, q2));
  q1 = new Point(3,2);
  p2 = new Point(2,2);
  q2 = new Point(4,2);
  Assert.assertTrue(triangle.intersects(p1, q1, p2, q2));
  p1 = new Point(5,1);
  q1 = new Point(4,1);
  p2 = new Point(1,1);
  q2 = new Point(3,1);
  Assert.assertFalse(triangle.intersects(p1, q1, p2, q2));
  p1 = new Point(2,1);
  Assert.assertTrue(triangle.intersects(p1, q1, p2, q2));
}

@Test public void testToString()
{
  boolean s;
  String output = "Points: (1,2) (3,5) (5,2)";
  String triangle_toString = triangle.toString();
  s = output.equals(triangle_toString);
  Assert.assertTrue(s);
}

}
