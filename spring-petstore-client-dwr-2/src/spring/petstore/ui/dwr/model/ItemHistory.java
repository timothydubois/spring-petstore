package spring.petstore.ui.dwr.model;

import java.util.ArrayList;
import java.util.List;

import spring.petstore.core.model.Item;

public class ItemHistory {
	private List<Item> items = new ArrayList<Item>();

	public List<Item> getItems() {
		return items;
	}

	public void addHistory(Item item) {
		for (Item curItem : items) {
			if (curItem.getId() == item.getId()) {
				return;
			}
		}
		if (items.size() >= 3) {
			items.remove(0);
			items.add(2, item);
		} else {
			items.add(items.size(), item);
		}
	}

}
