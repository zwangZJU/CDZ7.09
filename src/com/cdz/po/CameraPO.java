package po;

import java.util.Date;

import aos.framework.core.typewrap.PO;

/**
 * <b>camera[camera]数据持久化对象</b>
 * <p>
 * 注意:此文件由AOS平台自动生成-禁止手工修改。
 * </p>
 * 
 * @author Administrator
 * @date 2018-08-20 13:01:21
 */
public class CameraPO extends PO {

	private static final long serialVersionUID = 1L;

	/**
	 * 序号
	 */
	private String camera_id;
	
	/**
	 * 设备id
	 */
	private String device_id;
	
	/**
	 * 摄像头序列号
	 */
	private String camera_serial;
	
	/**
	 * 设备通道号
	 */
	private String camera_no;
	
	/**
	 * 视频当前时间
	 */
	private Date osd_;
	
	/**
	 * 访问令牌
	 */
	private String access_token;
	
	/**
	 * 验证码
	 */
	private String verification_code;
	
	/**
	 * 摄像头型号
	 */
	private String camera_type;
	
	/**
	 * 标签
	 */
	private String camera_label;
	
	/**
	 * 云服务
	 */
	private String cloud_service;
	
	/**
	 * rtmp协议url
	 */
	private String rtmp_;
	
	/**
	 * hls协议
	 */
	private String hls_;
	
	/**
	 * 备用3
	 */
	private String baiyong3_;
	

	/**
	 * 序号
	 * 
	 * @return camera_id
	 */
	public String getCamera_id() {
		return camera_id;
	}
	
	/**
	 * 设备id
	 * 
	 * @return device_id
	 */
	public String getDevice_id() {
		return device_id;
	}
	
	/**
	 * 摄像头序列号
	 * 
	 * @return camera_serial
	 */
	public String getCamera_serial() {
		return camera_serial;
	}
	
	/**
	 * 设备通道号
	 * 
	 * @return camera_no
	 */
	public String getCamera_no() {
		return camera_no;
	}
	
	/**
	 * 视频当前时间
	 * 
	 * @return osd_
	 */
	public Date getOsd_() {
		return osd_;
	}
	
	/**
	 * 访问令牌
	 * 
	 * @return access_token
	 */
	public String getAccess_token() {
		return access_token;
	}
	
	/**
	 * 验证码
	 * 
	 * @return verification_code
	 */
	public String getVerification_code() {
		return verification_code;
	}
	
	/**
	 * 摄像头型号
	 * 
	 * @return camera_type
	 */
	public String getCamera_type() {
		return camera_type;
	}
	
	/**
	 * 标签
	 * 
	 * @return camera_label
	 */
	public String getCamera_label() {
		return camera_label;
	}
	
	/**
	 * 云服务
	 * 
	 * @return cloud_service
	 */
	public String getCloud_service() {
		return cloud_service;
	}
	
	/**
	 * 备用1
	 * 
	 * @return rtmp_
	 */
	public String getRtmp_() {
		return rtmp_;
	}
	
	/**
	 * 备用2
	 * 
	 * @return hls_
	 */
	public String getHls_() {
		return hls_;
	}
	
	/**
	 * 备用3
	 * 
	 * @return baiyong3_
	 */
	public String getBaiyong3_() {
		return baiyong3_;
	}
	

	/**
	 * 序号
	 * 
	 * @param camera_id
	 */
	public void setCamera_id(String camera_id) {
		this.camera_id = camera_id;
	}
	
	/**
	 * 设备id
	 * 
	 * @param device_id
	 */
	public void setDevice_id(String device_id) {
		this.device_id = device_id;
	}
	
	/**
	 * 摄像头序列号
	 * 
	 * @param camera_serial
	 */
	public void setCamera_serial(String camera_serial) {
		this.camera_serial = camera_serial;
	}
	
	/**
	 * 设备通道号
	 * 
	 * @param camera_no
	 */
	public void setCamera_no(String camera_no) {
		this.camera_no = camera_no;
	}
	
	/**
	 * 视频当前时间
	 * 
	 * @param osd_
	 */
	public void setOsd_(Date osd_) {
		this.osd_ = osd_;
	}
	
	/**
	 * 访问令牌
	 * 
	 * @param access_token
	 */
	public void setAccess_token(String access_token) {
		this.access_token = access_token;
	}
	
	/**
	 * 验证码
	 * 
	 * @param verification_code
	 */
	public void setVerification_code(String verification_code) {
		this.verification_code = verification_code;
	}
	
	/**
	 * 摄像头型号
	 * 
	 * @param camera_type
	 */
	public void setCamera_type(String camera_type) {
		this.camera_type = camera_type;
	}
	
	/**
	 * 标签
	 * 
	 * @param camera_label
	 */
	public void setCamera_label(String camera_label) {
		this.camera_label = camera_label;
	}
	
	/**
	 * 云服务
	 * 
	 * @param cloud_service
	 */
	public void setCloud_service(String cloud_service) {
		this.cloud_service = cloud_service;
	}
	
	/**
	 * 备用1
	 * 
	 * @param rtmp_
	 */
	public void setRtmp_(String rtmp_) {
		this.rtmp_ = rtmp_;
	}
	
	/**
	 * 备用2
	 * 
	 * @param hls_
	 */
	public void setHls_(String hls_) {
		this.hls_ = hls_;
	}
	
	/**
	 * 备用3
	 * 
	 * @param baiyong3_
	 */
	public void setBaiyong3_(String baiyong3_) {
		this.baiyong3_ = baiyong3_;
	}
	

}