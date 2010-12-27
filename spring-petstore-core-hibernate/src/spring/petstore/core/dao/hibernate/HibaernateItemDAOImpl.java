package spring.petstore.core.dao.hibernate;

import java.util.List;

import org.springframework.dao.IncorrectResultSizeDataAccessException;
import org.springframework.orm.hibernate3.HibernateTemplate;

import spring.petstore.core.dao.ItemDAO;
import spring.petstore.core.model.Item;

public class HibaernateItemDAOImpl implements ItemDAO {

	private HibernateTemplate hibernateTemplate;
	
	@SuppressWarnings("unchecked")
	public Item getItem(long itemId) {
		List find = hibernateTemplate.find("from Item where id=?", itemId);
		if (find != null && find.size() == 1) {
			return (Item) find.get(0);
		} else {
			throw new IncorrectResultSizeDataAccessException(1, find.size());
		}
	}

	@SuppressWarnings("unchecked")
	public List<Item> getItems(long categoryId) {
		List find = hibernateTemplate.find("from Item where category.id=?",
				categoryId);
		return find;
	}

	/**
	 * @param hibernateTemplate
	 *            the hibernateTemplate to set
	 */
	public void setHibernateTemplate(HibernateTemplate hibernateTemplate) {
		this.hibernateTemplate = hibernateTemplate;
	}

}
