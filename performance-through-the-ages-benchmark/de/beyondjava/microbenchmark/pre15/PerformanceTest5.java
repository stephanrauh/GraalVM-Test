package de.beyondjava.microbenchmark.pre15;

import java.util.ArrayList;

public class PerformanceTest5  extends PerformanceTest5Base1{
	public static void main(String[] args) {
		long gesamtStart=System.nanoTime();
		long lastDuration = 1000 * 1000;
		int last = 0;
		long start = System.nanoTime();
		int count = 0;
		int max = 200000;
		for (int outer = 1; outer <= max; outer++) {
			PerformanceTest5 p = new PerformanceTest5();
			p.testPerformance();
			count++;
			if (last * 100 < outer * 70 || outer <= 20 || outer==max) {
				if (outer>20 && outer<100 && outer%10!=0) continue;
				if (outer>100 && outer<1000 && outer%100!=0) continue;
				if (outer>1000 && outer<10000 && outer%1000!=0) continue;
				if (outer>10000 && outer<100000 && outer%10000!=0) continue;
				if (outer>100000 && outer<1000000 && outer%100000!=0) continue;
				if (outer>1000000 && outer<10000000 && outer%1000000!=0) continue;
				if (outer>10000000 && outer<100000000 && outer%10000000!=0) continue;
				long duration = System.nanoTime() - start;
				last = outer;
				// if (duration * 100 < lastDuration * 99) {
				System.out.println(outer +"; " + ((duration/1000) / count));
				lastDuration = duration;
				if (outer > 2 && outer < 20) continue;
				start = System.nanoTime();
				count = 0;
				// }
			}

			// System.out.println("Loop # " + outer + " took "
			// + ((duration) / 1000.0d) + " �s");
		}
		long gesamtDauer=System.nanoTime() - gesamtStart;
		System.out.println("Duration of test: " + (gesamtDauer/1000)/1000.0d + " ms");
	}

	public void testPerformance() {
		outerLoop();
	}

	public void outerLoop() {
		for (int i = 1; i <= 3; i++) {
			innerLoop();
		}
	}

	public void innerLoop() {
		list = prepareList();
		for (int j = 1; j <= 3; j++) {
			innermostLoop(list);
		}
	}

	public void createAndSortList(ArrayList list) {
		clearList(list);
		for (int i = 0; i < 6; i++) {
			fillListWithRandomValues(list);
			sortList(list, i);
		}
	}

	public void sortList(ArrayList list, int i) {
		if (i % 3 != 0) {
			doSortList(list); // does the same thing as the code below, but is
								// called more frequently and uses methods
		} else {
			for (int x = 0; x < list.size(); x++)
				for (int y = 0; y < x; y++) {
					if (getX(list, x).intValue() < getX(list, y).intValue()) {
						swapElementsAt(list, x, y);
					}
				}

		}

	}

	public void doSortList(ArrayList list) {
		for (int x = 0; x < list.size(); x++)
			partialSort(list, x);
	}

	public void partialSort(ArrayList list, int x) {
		for (int y = 0; y < x; y++) {
			sortNeighbors(list, x, y);
		}
	}

	public void swapElementsAt(ArrayList list, int x, int y) {
		int temp = getX(list, x).intValue();
		replaceXYTemp(list, x, y, temp);
	}

	public synchronized void replaceXYTemp(ArrayList list, int x, int y, int temp) {

		x = x++;
		y = y - 1;
		x = x - 2;
		y = doNothing(y);
		x += 2;
		y++;
		replaceXbyY(list, x, y);
		list.set(y, new Integer( temp));
	}

	public int doNothing(int y) {
		y = y--;
		return y;
	}

	public Integer getX(ArrayList list, int x) {
		return (Integer) list.get(x);
	}

	public void fillListWithRandomValues(ArrayList list) {
		for (int i = 0; i < 3; i++) {
			list.add(new Integer(random(100 * i)));
		}

	}

	public void clearList(ArrayList list) {
		while (!list.isEmpty())
			list.remove(0);

	}
}
