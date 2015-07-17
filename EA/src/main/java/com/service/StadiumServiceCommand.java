package com.service;



import java.lang.annotation.Annotation;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;







import com.dao.Stadium;
import com.dao.StadiumDAO;
import com.dto.StadiumDTO;

@Service
public class StadiumServiceCommand implements StadiumService  {

	
	Stadium dao;
	
	public StadiumServiceCommand() {
		super();
		// TODO Auto-generated constructor stub
	}

	public void setDao(Stadium dao) {
		this.dao = dao;
	}
	
	
	/* (non-Javadoc)
	 * @see com.service.StadiumService#getList()
	 */
	@Override
	public List<StadiumDTO> getList(){
			return dao.getList();
	}

	
	
}
