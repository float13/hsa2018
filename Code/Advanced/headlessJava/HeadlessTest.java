import processing.core.PApplet;

public class HeadlessTest extends PApplet {
	@Override
	public void settings() {
		size(200, 200);
	}

	@Override
	public void draw() {
		background(0);
		fill(255, 0, 0);
		ellipse(100, 100, 100, 100);
	}

	public static void main(String... args) {
		HeadlessTest ht = new HeadlessTest();
		PApplet.runSketch(new String[]{"ProcessingTest"}, ht);
	}
}
