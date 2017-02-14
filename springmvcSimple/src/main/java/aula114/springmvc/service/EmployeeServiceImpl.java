package aula114.springmvc.service;

import org.springframework.jdbc.core.JdbcTemplate;

import org.springframework.jdbc.core.BeanPropertyRowMapper;

import java.util.List;
import java.util.ArrayList;
import java.util.Map;
import java.util.HashMap;

import org.springframework.data.redis.core.ListOperations;
import org.springframework.data.redis.core.RedisTemplate;
import org.springframework.data.redis.serializer.StringRedisSerializer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import org.springframework.dao.EmptyResultDataAccessException;

import aula114.springmvc.domain.Contact;

@Service
public class EmployeeServiceImpl implements EmployeeService {

    @Autowired
    private JdbcTemplate jdbcTemplate;

	@Autowired
    private RedisTemplate<String, String> redisTemplate;
	
	private List<String> idList = new ArrayList<String>();

	@Override
	public List<String> listIdEmployee() {
        //  Cambiamos la obtención de datos de Redis a MySQL
        String sql = "select contact_id from contact";
  		List idList1 = jdbcTemplate.queryForList(sql);

  		List list = new ArrayList();
        for (Object item : idList1) {
            HashMap map = (HashMap) item;
        	String id = map.get("contact_id").toString();
        	list.add(id);
		}

		idList = new ArrayList<String>(list);

        return idList;
	}

	@Override
	public Contact show(String id) {
        //  Se obtiene desde MySQL
		Contact c = new Contact();

		String sql = "select name, email, address, telephone from contact where contact_id = ?";
  		
		c = jdbcTemplate.queryForObject(sql, new Object[]{id}, new BeanPropertyRowMapper<Contact>(Contact.class));

        return c;
	}

	@Override
	public String delete(String id) {
		//TODO
		String sql = "delete from contact where contact_id = " + id;
  		int success = 0;
  		try{
  			success = jdbcTemplate.update(sql);
  		} catch(EmptyResultDataAccessException e){
  			System.out.println(e.toString());
  		} finally{

	  		if(success != 0){
	        	return id;
	   		}
  		}

        return null;
	}

	@Override
	public Contact edit(String id) {
		//TODO
		return null;
	}
}
