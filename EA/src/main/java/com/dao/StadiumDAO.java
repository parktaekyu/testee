package com.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

import com.dto.StadiumDTO;

@Repository
public class StadiumDAO implements Stadium {
	
	SqlSessionTemplate template;
	
	public void setTemplate(SqlSessionTemplate template) {
		this.template = template;
	}

	

	public List<StadiumDTO>	getList(){
		 return  template.selectList("stadium.select");
		 
		 
	}
}
