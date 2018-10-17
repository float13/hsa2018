import processing.core.PApplet;

// from:
// https://stackoverflow.com/questions/38104841/processing-in-java-without-ide

public class HeadlessTest extends PApplet {

	int x, y;

	@Override
	public void settings() {
		size(200, 200);
		x = width / 2;
		y = height / 2;
		println("Setup Done");
	}

	@Override
	public void draw() {
		background(0);
		fill(255, 0, 0);
		ellipse(x, y, 100, 100);
		x++;
		y++;
	}

	public static void main(String... args) {
		HeadlessTest ht = new HeadlessTest();
		PApplet.runSketch(new String[]{"ProcessingTest"}, ht);
	}
}
