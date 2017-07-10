package com.hotmarzz.oa.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.hotmarzz.basic.dao.BaseQuery;
import com.hotmarzz.oa.pojo.SchoolDistrict;

@Repository
public interface SchoolDao {

	List<SchoolDistrict> getListPage(BaseQuery bq);
	
	int getCount(BaseQuery bq);
}
