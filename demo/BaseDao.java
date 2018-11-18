package com.util;

import java.io.Serializable;
import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.SessionFactory;

public class BaseDao<T> {
	@Resource
	private SessionFactory sessionFactory;

	/**
	 * ��������ID����ʵ��
	 * 
	 * @param entityClazz
	 * @param id
	 *            ��������ʵ���˸ýӿڵ���Ķ�������Զ����int Integer String��
	 * @return T����
	 */
	public T get(Class<T> entityClazz, Serializable id) {
		return sessionFactory.getCurrentSession().get(entityClazz, id);
	}

	/**
	 * ����ʵ��
	 * 
	 * @param entity
	 * @return ��������ʵ������Ӧ������ֵ
	 */
	public Serializable save(T entity) {
		return sessionFactory.getCurrentSession().save(entity);
	}

	/**
	 * ����ʵ��
	 * 
	 * @param entity
	 */
	public void update(T entity) {
		sessionFactory.getCurrentSession().update(entity);
	}

	/**
	 * ɾ��ʵ��
	 * 
	 * @param entity
	 */
	public void delete(T entity) {
		sessionFactory.getCurrentSession().delete(entity);
	}

	/**
	 * ����IDɾ��ʵ��
	 * 
	 * @param entityClazz
	 * @param id
	 * @return ����ֵtrue,˵��Ӱ������>1���ɹ�
	 */
	public boolean delete(Class<T> entityClazz, Serializable id) {
		String hql = "delete " + entityClazz.getSimpleName() + " en where en.id = ?0";
		return (sessionFactory.getCurrentSession().createQuery(hql).setParameter("0", id).executeUpdate()) > 0;

	}

	/**
	 * ��ȡ����ʵ��
	 * 
	 * @param entityClazz
	 * @return
	 */
	public List<T> findAll(Class<T> entityClazz) {
		String hql = "select en from " + entityClazz.getSimpleName() + " en";
		return find(hql);
	}

	/**
	 * ��ȡʵ������
	 * 
	 * @param entityClazz
	 * @return
	 */
	public long findCount(Class<T> entityClazz) {
		String hql = "select count(*) from " + entityClazz.getSimpleName();
		List<T> list = find(hql);
		if (list != null && list.size() == 1) {
			return (Long) list.get(0);
		}
		return 0;
	}

	/**
	 * ����HQL����ѯʵ��
	 * 
	 * @param hql
	 *            ����ѯ��HQL���
	 * @return
	 */
	@SuppressWarnings("unchecked")
	protected List<T> find(String hql) {
		return sessionFactory.getCurrentSession().createQuery(hql).list();
	}

	/**
	 * ���ݴ�ռλ������HQL����ѯʵ��
	 * 
	 * @param hql
	 *            ����ѯ��HQL���
	 * @param params
	 *            ����
	 * @return
	 */
	@SuppressWarnings("unchecked")
	protected List<T> find(String hql, Object... params) {
		Query query = sessionFactory.getCurrentSession().createQuery(hql);

		for (int i = 0, len = params.length; i < len; i++) {
			query.setParameter(i + "", params[i]);
		}
		return query.list();
	}

	/**
	 * ʹ��hql �����з�ҳ��ѯ����
	 * 
	 * @param hql
	 *            ��Ҫ��ѯ��hql���
	 * @param pageNo
	 *            ��ѯ��pageNoҳ�ļ�¼
	 * @param pageSize
	 *            ÿҳ��Ҫ��ʾ�ļ�¼��
	 * @return ��ǰҳ�����в�Ʒ��¼
	 */
	@SuppressWarnings("unchecked")
	protected List<T> findByPage(String hql, int pageNo, int pageSize) {
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		return query.setFirstResult((pageNo - 1) * pageSize).setMaxResults(pageSize).list();
	}

	/**
	 * ʹ��hql �����з�ҳ��ѯ����
	 * 
	 * @param hql
	 *            ��Ҫ��ѯ��hql���
	 * @param pageNo
	 *            ��ѯ��pageNoҳ�ļ�¼
	 * @param pageSize
	 *            ÿҳ��Ҫ��ʾ�ļ�¼��
	 * @param params
	 *            ���hql��ռλ��������params���ڴ���ռλ������
	 * @return ��ǰҳ�����м�¼
	 */
	@SuppressWarnings("unchecked")
	protected List<T> findByPage(String hql, int pageNo, int pageSize, Object... params) {
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		for (int i = 0, len = params.length; i < len; i++) {
			query.setParameter(i + "", params[i]);
		}
		return query.setFirstResult((pageNo - 1) + pageSize).setMaxResults(pageSize).list();
	}

}
