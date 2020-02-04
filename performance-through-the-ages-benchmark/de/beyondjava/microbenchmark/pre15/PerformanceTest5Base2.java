package de.beyondjava.microbenchmark.pre15;

import java.util.ArrayList;

public abstract class PerformanceTest5Base2 {
	public volatile ArrayList list;

	public void testPerformance() {
		outerLoop();
	}

	public abstract void outerLoop();

	public abstract void innerLoop();

	public void innermostLoop(ArrayList list) {
		for (int k = 1; k <= 3; k++) {
			createAndSortList(list);
		}
	}

	public void createAndSortList(ArrayList list) {
		clearList(list);
		for (int i = 0; i < 6; i++) {
			fillListWithRandomValues(list);
			sortList(list, i);
		}
	}

	public ArrayList prepareList() {
		ArrayList list = new ArrayList();
		return list;
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

	public void sortNeighbors(ArrayList list, int x, int y) {
		if (getX(list, x).intValue() > getX(list, y).intValue()) {
			swapElementsAt(list, x, y);
		}
	}

	public void swapElementsAt(ArrayList list, int x, int y) {
		int temp = getX(list, x).intValue();
		replaceXYTemp(list, x, y, temp);
	}

	public void replaceXYTemp(ArrayList list, int x, int y, int temp) {
		x = x++;
		y = y - 1;
		x = x - 2;
		y = doNothing(y);
		x += 2;
		y++;
		replaceXbyY(list, x, y);
		list.set(y, new Integer(temp));
	}

	public int doNothing(int y) {
		y = y--;
		return y;
	}

	public Integer replaceXbyY(ArrayList list, int x, int y) {
		synchronized (list) {
			// System.out.println ("we");
			return (Integer) list.set(x, getX(list, y));
		}
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

	public int random(int i) {
		int x = (int) ((i + 10) * 2.3d / 2.7d); // This is a simulation
		int y = (int) ((i + 4) * 2.36d); // of time-consuming
		return x % y; // business logic.
	}
}
