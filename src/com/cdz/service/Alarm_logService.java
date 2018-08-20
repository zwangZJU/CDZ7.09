package service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import aos.framework.core.id.AOSId;
import aos.framework.core.service.CDZBaseController;
import aos.framework.core.typewrap.Dto;
import aos.framework.core.typewrap.Dtos;
import aos.framework.core.utils.AOSJson;
import aos.framework.web.router.HttpModel;
import aos.system.common.utils.SystemCons;
import dao.Alarm_logDao;
import dao.Basic_userDao;
import dao.DeviceDao;
import po.Alarm_logPO;
import po.Basic_userPO;
import po.DevicePO;

@Service
public class Alarm_logService extends CDZBaseController {

	@Autowired
	private Alarm_logDao alarm_logDao;
	
	@Autowired
	DeviceDao deviceDao;

	/**
	 * charging_pile管理页面初始化
	 * 
	 * @param httpModel
	 * @return
	 */
	public void init(HttpModel httpModel) {
		httpModel.setViewPath("myproject/alarm_log.jsp");
	}

	/**
	 * 查询charging_pile列表
	 * 
	 * @param httpModel
	 * @return
	 */
	public void listAlarm_log(HttpModel httpModel) {
		Dto qDto = httpModel.getInDto();
		List<Dto> alarm_logDtos = sqlDao.list("Alarm_log.listAlarm_logsPage", qDto);
		httpModel.setOutMsg(AOSJson.toGridJson(alarm_logDtos, qDto.getPageTotal()));
	}
	
	/**
	 * 查询charging_pile信息
	 * 
	 * @param httpModel
	 */
	public void getAlarm_log(HttpModel httpModel) {
		Dto inDto = httpModel.getInDto();
		Alarm_logPO alarm_logPO = alarm_logDao.selectByKey(inDto.getString("cp_id"));
		httpModel.setOutMsg(AOSJson.toJson(alarm_logPO));
	}

	/**
	 * 保存charging_pile
	 * 
	 * @param httpModel
	 * @return
	 */
	@Transactional
	public void saveAlarm_log(HttpModel httpModel) {
		Dto inDto = httpModel.getInDto();
		Alarm_logPO alarm_logPO = new Alarm_logPO();
		alarm_logPO.copyProperties(inDto);
		alarm_logPO.setAlarm_id(AOSId.appId(SystemCons.ID.SYSTEM));
		/* alarm_logPO.setCreate_date(AOSUtils.getDateTime()); */
		alarm_logDao.insert(alarm_logPO);
		httpModel.setOutMsg("新增成功。");
	}

	/**
	 * 修改charging_pile
	 * 
	 * @param httpModel
	 * @return
	 */
	@Transactional
	public void updateAlarm_log(HttpModel httpModel) {
		Dto inDto = httpModel.getInDto();
		Alarm_logPO alarm_logPO = new Alarm_logPO();
		alarm_logPO.copyProperties(inDto);
		alarm_logDao.updateByKey(alarm_logPO);
		httpModel.setOutMsg("修改成功。");
	}
	
	public void updateAlarm_log2(HttpModel httpModel) {
		Dto inDto = httpModel.getInDto();
		Alarm_logPO alarm_logPO = new Alarm_logPO();
		alarm_logPO.copyProperties(inDto);
		System.out.println(alarm_logPO.getHandler_());
		alarm_logDao.updateByKey(alarm_logPO);
		httpModel.setOutMsg("修改成功。");
		
		Dto pDto = Dtos.newDto("alarm_id",alarm_logPO.getAlarm_id() );
		Alarm_logPO alarm_logPO1 =alarm_logDao.selectOne(pDto); // 用
		
		DevicePO devicePO=new DevicePO();
		devicePO.setIs_alarming("0");
		devicePO.setDevice_id(alarm_logPO1.getDevice_id());
		deviceDao.updateByKey(devicePO);
		
		System.out.println(alarm_logPO1.getDevice_id());
		System.out.println("deviceDao.updateByKey(devicePO)");
	}
	
	public void updateAlarm_log3(HttpModel httpModel) {
		/*Dto inDto = httpModel.getInDto();
		Alarm_logPO alarm_logPO = new Alarm_logPO();
		alarm_logPO.copyProperties(inDto);
		System.out.println(alarm_logPO.getHandler_());*/
		//alarm_logDao.updateByKey(alarm_logPO);
		
		Alarm_logPO alarm_logPO = new Alarm_logPO();
		Dto qDto = httpModel.getInDto();
		Dto pDto = Dtos.newDto();
		String alarm_id = qDto.getString("id");
		//pDto.put("alarm_id", "1808091745501987");
		//pDto.put("device_id", device_id);
		
		//Dto pDto = Dtos.newDto("alarm_id",alarm_logPO.getAlarm_id());
		//Alarm_logPO alarm_logPO1 =alarm_logDao.selectOne(pDto); 
		Alarm_logPO alarm_logPO1 =alarm_logDao.selectByAlarmId(alarm_id.substring(0,alarm_id.length()-1)); 
		
		Dto newDto = Dtos.newDto();
		//newDto.put("handler_phone", alarm_logPO1.getHandler_phone());
		newDto.put("handler_phone", alarm_logPO1.getAlarm_time());
		newDto.put("user_phone", alarm_logPO1.getUser_phone());
		newDto.put("device_id", alarm_logPO1.getDevice_id());
		
		//Dto pDto1 = Dtos.newDto("device_id",alarm_logPO.getDevice_id());
		//DevicePO devicePO =deviceDao.selectByDeviceId(device_id.substring(0,device_id.length()-1));
		DevicePO devicePO =deviceDao.selectByDeviceId(alarm_logPO1.getDevice_id());
		
		newDto.put("user_address", devicePO.getUser_address());
		newDto.put("user_name", devicePO.getUser_name());
		newDto.put("user_id", devicePO.getUser_id());
		
		//newDto.put("user_address","123");
		
		httpModel.setOutMsg(AOSJson.toJson(newDto));
		//httpModel.setOutMsg(alarm_logPO1.getHandler_phone()+"#"+devicePO.getUser_address());
		
		/*Dto qDto = httpModel.getInDto();
		List<Dto> list = sqlDao.list("Basic_user.listHandler1", httpModel.getInDto());
		httpModel.setOutMsg(AOSJson.toGridJson(list));*/
	}

	/**
	 * 删除charging_pile
	 * 
	 * @param httpModel
	 */
	@Transactional
	public void deleteAlarm_log(HttpModel httpModel) {
		String[] selectionIds = httpModel.getInDto().getRows();
		if (null != selectionIds && selectionIds.length > 0) {
			for (String alarm_id : selectionIds) {
				/*
				 * Alarm_logPO alarm_logPO = new Alarm_logPO(); alarm_logPO.setCp_id(id_);
				 * alarm_logPO.setIs_del(SystemCons.IS.YES);
				 * alarm_logDao.updateByKey(alarm_logPO);
				 */
				alarm_logDao.deleteByKey(alarm_id);
			}
		} else {
			String alarm_id = httpModel.getInDto().getString("alarm_id");
			/*
			 * Alarm_logPO alarm_logPO = new Alarm_logPO(); alarm_logPO.setCp_id(cp_id);
			 * alarm_logPO.setIs_del(SystemCons.IS.YES);
			 * alarm_logDao.updateByKey(alarm_logPO);
			 */
			alarm_logDao.deleteByKey(alarm_id);

		}
		httpModel.setOutMsg("删除成功。");
	}

}
