package spring.petstore.core.dao.hibernate;

import java.util.List;

import org.springframework.orm.hibernate3.HibernateTemplate;

import spring.petstore.core.dao.CategoryDAO;
import spring.petstore.core.model.Category;

public class HibernateCategoryDAOImpl implements CategoryDAO {

	private HibernateTemplate hibernateTemplate;
	
	@SuppressWarnings("unchecked")
	public List<Category> getCategories() {
		List find = hibernateTemplate.find("from Category");
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
