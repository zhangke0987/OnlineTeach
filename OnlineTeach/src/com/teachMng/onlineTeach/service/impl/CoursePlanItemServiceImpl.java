package com.teachMng.onlineTeach.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Session;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.teachMng.onlineTeach.dao.ICoursePlanItemDAO;
import com.teachMng.onlineTeach.model.CoursePlanItem;
import com.teachMng.onlineTeach.service.ICoursePlanItemService;
@Component("coursePlanItemService")
public class CoursePlanItemServiceImpl implements ICoursePlanItemService {
	private ICoursePlanItemDAO cpiDao;	
	public ICoursePlanItemDAO getCpiDao() {
		return cpiDao;
	}
	@Resource(name="coursePlanItemDao")
	public void setCpiDao(ICoursePlanItemDAO cpiDao) {
		this.cpiDao = cpiDao;
	}
	@Transactional
	public void deleteAll() {
		cpiDao.deleteAll();
	}
	@Override
	@Transactional
	public boolean insCoursePlanItem(CoursePlanItem cpi) {
		// TODO Auto-generated method stu
		return cpiDao.insCoursePlanItem(cpi);
	}
	@Override
	@Transactional
	public List<CoursePlanItem> allCoursePlan() {
		// TODO Auto-generated method stub
		return cpiDao.allCoursePlan();
	}

	@Override
	@Transactional
	public boolean updCoursePlan(CoursePlanItem cpi) {
		// TODO Auto-generated method stub
		return cpiDao.updCoursePlan(cpi);
	}
	@Override
	@Transactional
	public List<CoursePlanItem> allCoursePlanByClassId(int classID) {
		// TODO Auto-generated method stub
		return cpiDao.allCoursePlanByClassId(classID);
	}
	@Override
	@Transactional
	public List<CoursePlanItem> allCoursePlanByTeacherId(int teacherID) {
		// TODO Auto-generated method stub
		return cpiDao.allCoursePlanByTeacherId(teacherID);
	}
	@Override
	@Transactional
	public List<CoursePlanItem> allCoursePlanByRoomId(int roomID) {
		// TODO Auto-generated method stub
		return cpiDao.allCoursePlanByRoomId(roomID);
	}


}
