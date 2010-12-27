package spring.petstore.ui.dwr.model;

import java.util.ArrayList;
import java.util.List;

public class Cart {

	private List<CartItem> items;

	public Cart() {
		System.out.println("Cart.Cart()");
		items = new ArrayList<CartItem>();
	}

	public void addItem(CartItem item) {
		items.add(item);
	}

	/**
	 * @return the items
	 */
	public List<CartItem> getItems() {
		return items;
	}

	/**
	 * @param items
	 *            the items to set
	 */
	public void setItems(List<CartItem> items) {
		this.items = items;
	}

	public double getTotal() {
		double total = 0;
		for (CartItem item : items) {
			total = total + item.getSubTotal();
		}
		return total;
	}

	public int getQuantity() {
		int quatity = 0;
		for (CartItem item : items) {
			quatity = quatity + item.getQuantity();
		}
		return quatity;
	}

}
