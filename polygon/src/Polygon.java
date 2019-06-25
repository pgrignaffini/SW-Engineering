import java.util.ArrayList;
import java.lang.Math;

/**
* Polygon: represents and provides methods for a polygon
* - we assume and support only SIMPLE (non self-intersecting)
*   polygons
* - the internal representation of the polygon is
*   entirely up to you, as is the computations in the
*   methods. The methods simply need to correctly
*   implement their defined specification.
* - the existing code in the methods is there simply
*   to make this code base compileable and executable
*   for the sample test(s).
* - you can add private methods, but you cannot add or
*   change the public methods. For example, the methods
*   that must somehow deal with convexity might be able
*   to take advantage of a shared private method.
**/

public class Polygon
{
  private ArrayList<Point> points = new ArrayList<Point>();

  /**
  * Constructor: create the most basic polygon (triangle).
  **/
  public Polygon(Point p1, Point p2, Point p3)
  {
    points.add(p1);
    points.add(p2);
    points.add(p3);
  }

  /**
  * Add a vertex to the polygon after the given "after" point.
  * The given point must be an existing vertex, otherwise the
  * new vertex should not be added. By after we mean that the
  * new vertex should form edges between the given point and
  * the one that follows it. For example: if, after the constructor
  * creates a triangle polygon, a vertex p4 is added after p3,
  * then the edge p3-p1 would no longer exist and the edges p3-p4
  * and p4-p1 would be new edges of the polygon.
  * - Returns true if vertex was successfully added.
  **/
  public boolean addVertex(Point p, Point after)
  {
    boolean found = false;
    int position = 0;

    for (int i = 0; i < points.size(); i++)
    {
      if (after.equals(points.get(i)))
      {
        found = true;
        position = i;
        break;
      }
    }

    if (!found) return false;
    else points.add(position+1, p);
    return true;
  }

  /**
  * Export the list of vertices, starting with
  * the vertex closest to the given point and then
  * proceeding in order (i.e., so that the vertices
  * of each edge are neighbors in the exported list
  * (with an edge between the first and last, too)).
  * - calling code should "own" the returned list and
  *   be able to manipulate/modify it without
  *   affecting the polygon
  **/
  public Point[] vertices(Point startNear)
  {
    int size = points.size();
    Point closest = findClosest(startNear);
    Point result[];
    result = new Point[size];
    int position = 0;
    int index = 0;

    for (int i = 0; i < size; i++)
    {
      if (closest.equals(points.get(i)))
      {
        position = i;
      }
    }

    for (int i = position; i < size; i++)
    {
      result[index] = points.get(i);
      index++;
    }

    for (int i = 0; i < position; i++)
    {
      result[index] = points.get(i);
      index++;
    }

    return result;
  }

  /**
  * Test whether current polygon is convex or not
  * - this is nontrivial! (or at least, somewhere in
  *   your code there will need to be some nontrivial
  *   computation that ultimately helps answser this.)
  **/

  /**
  The intuition behind the realization of this function is the following:
  assuming that the vertices are defined in a clock-wise order (as in this
  case) a convex polygon will have only segments oriented to the right,
  in fact in the case of a left-oriented segment, the internal angle will
  have a value (in degrees) greater than 180 and then we can conclude that
  the polygon is concave.
  **/
  public boolean isConvex()
  {
    int size = points.size();
    Point p0, p1, p2;
    int orientation;

    for (int i = 0; i < size; i++)
    {
      p0 = points.get(i % size);
      p1 = points.get((i+1) % size);
      p2 = points.get((i+2) % size);
      orientation = findOrientation(p0, p1, p2);
      if (orientation < 0) return false;
    }

    return true;
  }

  /**
  * Test if given point is within the bounding box
  * of the current polygon or not (on an edge is
  * considered in). Bounding box means the smallest
  * rectangle oriented along the x-y axes that
  * encloses the polygon.
  **/
  public boolean inBoundingBox(Point p)
  {
    Point bl, br, tl, tr;
    int xMin = 1000;
    int yMin = 1000;
    int xMax = 0;
    int yMax = 0;

    for (int i = 0; i < points.size(); i++)
    {
      if (points.get(i).x < xMin) xMin = points.get(i).x;
      if (points.get(i).y < yMin) yMin = points.get(i).y;
      if (points.get(i).x > xMax) xMax = points.get(i).x;
      if (points.get(i).y > yMax) yMax = points.get(i).y;
    }

    bl = new Point(xMin, yMin);
    tr = new Point(xMax, yMax);
    tl = new Point(bl.x, tr.y);
    br = new Point(tr.x, bl.y);

    if (p.x >= bl.x && p.x <= br.x && p.y >= bl.y && p.y <= tl.y) return true;
    return false;
  }

  /**
  * Test if given point is within the polygon or
  * not (on an edge is considered in). This test
  * CANNOT assume that the polygon is convex. Be
  * careful!
  **/
  // this function calculates if the given point lies inside the polygon
  // using ray crossing method
  // original code adapted from:
  // https://www.geeksforgeeks.org/how-to-check-if-a-given-point-lies-inside-a-polygon/
  public boolean inPolygon(Point p)
  {
    int n = points.size();
    // Create a point for line segment from p to infinite
    Point extreme = new Point(1000, p.y);
    // Count intersections of the above line with sides of polygon
    int count = 0, i = 0;
    do
    {
      int next = (i+1)%n;
      // Check if the line segment from 'p' to 'extreme' intersects
      // with the line segment from 'points.get(i)' to 'points.get(next)'
      if (intersects(points.get(i), points.get(next), p, extreme))
      {
        // If the point 'p' is colinear with line segment 'i-next',
        // then check if it lies on segment. If it lies, return true,
        // otherwise false
        if (findOrientation(points.get(i), p, points.get(next)) == 0)
        return onSegment(points.get(i), p, points.get(next));

        count++;
      }
      i = next;
    } while (i != 0);
    // Return true if count is odd, false otherwise
    return (count%2 == 1);
  }

  /**
  * Make the minimal vertex adjustments to cause
  * the polygon to be convex. If a vertex will
  * end up on the line defined by its neighbors,
  * it should be removed. Returns number of
  * vertices removed.
  **/
  public int makeConvex()
  {
    int size = points.size();
    Point p0, p1, p2;
    int orientation;
    int removed = 0;

    for (int i = 0; i < size; i++)
    {
      p0 = points.get(i % size);
      p1 = points.get((i+1) % size);
      p2 = points.get((i+2) % size);
      orientation = findOrientation(p0, p1, p2);

      if (orientation < 0)
      {
        removeVertex(p1);
        size--;
        removed++;
      }
    }

    return removed;
  }

  public String toString()
  {
    String s = "Points:";
    for (int i = 0; i < points.size(); i++)
    s += " " + points.get(i).toString();

    return s;
  }


  //calulate minimum distance using Pitagora's theorem
  public Point findClosest(Point p)
  {
    double dist = 1000;
    int index = 0;
    double c1, c2, hypothenuse;

    for (int i = 0; i < points.size(); i++)
    {
      c1 = Math.abs(points.get(i).x - p.x);
      c2 = Math.abs(points.get(i).y - p.y);
      hypothenuse = Math.sqrt(Math.pow(c1, 2) + Math.pow(c2, 2));

      if (hypothenuse < dist)
      {
        index = i;
        dist = hypothenuse;
      }
    }

    return points.get(index);
  }

  //calculate segments direction using cross product
  // To find orientation of ordered triplet (p, q, r).
  // The function returns following values
  // 0 --> p, q and r are colinear
  // 1 --> Clockwise
  // -1 --> Counterclockwise
  // original code adapted from:
  // https://www.geeksforgeeks.org/how-to-check-if-a-given-point-lies-inside-a-polygon/
  public int findOrientation(Point p, Point q, Point r)
  {
    int val = (q.y - p.y) * (r.x - q.x) - (q.x - p.x) * (r.y - q.y);
    if (val == 0) return 0;  // colinear
    return (val > 0) ? 1 : -1; // clock or counterclock wise
  }

  public boolean removeVertex(Point p)
  {
    for (int i = 0; i < points.size(); i++)
    {
      if (points.get(i).equals(p))
      {
        points.remove(i);
        return true;
      }
    }
    return false;
  }

  // Given three colinear points p, q, r, the function checks if
  // point q lies on line segment 'pr'
  // original code adapted from:
  // https://www.geeksforgeeks.org/how-to-check-if-a-given-point-lies-inside-a-polygon/
  public boolean onSegment(Point p, Point q, Point r)
  {
    if (q.x <= Math.max(p.x, r.x) && q.x >= Math.min(p.x, r.x) &&
     q.y <= Math.max(p.y, r.y) && q.y >= Math.min(p.y, r.y)) return true;
    return false;
  }

  // The function that returns true if line segment 'p1q1'
  // and 'p2q2' intersect.
  // original code adapted from:
  // https://www.geeksforgeeks.org/how-to-check-if-a-given-point-lies-inside-a-polygon/
  public boolean intersects(Point p1, Point q1, Point p2, Point q2)
  {
    // Find the four orientations needed for general and
    // special cases
    int o1 = findOrientation(p1, q1, p2);
    int o2 = findOrientation(p1, q1, q2);
    int o3 = findOrientation(p2, q2, p1);
    int o4 = findOrientation(p2, q2, q1);

    // General case
    if (o1 != o2 && o3 != o4)
    return true;

    // Special Cases
    // p1, q1 and p2 are colinear and p2 lies on segment p1q1
    if (o1 == 0 && onSegment(p1, p2, q1)) return true;
    // p1, q1 and p2 are colinear and q2 lies on segment p1q1
    if (o2 == 0 && onSegment(p1, q2, q1)) return true;
    // p2, q2 and p1 are colinear and p1 lies on segment p2q2
    if (o3 == 0 && onSegment(p2, p1, q2)) return true;
    // p2, q2 and q1 are colinear and q1 lies on segment p2q2
    if (o4 == 0 && onSegment(p2, q1, q2)) return true;

    return false; // Doesn't fall in any of the above cases
  }

}
