<%@ page contentType="text/html; charset=utf-8"%>
<%@ include file="/WEB-INF/jsp/common/tags.jsp"%>

<aos:html title="charging_pile" base="http" lib="ext">

<aos:body>
</aos:body>
<aos:onready>
	<aos:viewport layout="border">
	    <aos:formpanel id="_f_query" layout="column"   labelWidth="70" header="false" region="north" >
			<aos:docked forceBoder="0 0 1 0">
				<aos:dockeditem xtype="tbtext" text="查询条件" />
			</aos:docked>
			     <aos:textfield name="device_id" fieldLabel="设备编号" columnWidth="0.2" maxLength="255"    	         />
	      	     <aos:textfield name="user_id"  fieldLabel="来自用户表的编号" columnWidth="0.2" maxLength="255"    	         />
	      	<aos:textfield name="phone"  fieldLabel="电话" columnWidth="0.2" maxLength="255" />
	      	
			    <aos:datefield id="date_start" name="date_start" fieldLabel="安装日期"  columnWidth="0.2"/>
			<aos:datefield id="date_end" name="date_end" fieldLabel="至"  columnWidth="0.2"/>
			<aos:docked dock="bottom" ui="footer" margin="0 0 8 0">
				<aos:dockeditem xtype="tbfill" />
				<aos:dockeditem xtype="button" text="查询" onclick="_datagridpanel_query" icon="query.png" />
				<aos:dockeditem xtype="button" text="重置" onclick="AOS.reset(_f_query);" icon="refresh.png" />
				<aos:dockeditem xtype="button" text="导出" onclick="fn_export_excel" icon="icon70.png" />
				<aos:dockeditem xtype="tbfill" />
			</aos:docked>
		</aos:formpanel>
		<aos:gridpanel id="_datagridpanel" url="deviceService.listDevice" onrender="_datagridpanel_query" onitemdblclick="_w_update_show" region="center" forceFit="false">
			<aos:docked>
			    			 	<aos:dockeditem text="新增" tooltip="新增"  onclick="_w_add_show" icon="add.png"/>
							    			    <aos:dockeditem text="修改" tooltip="修改"  onclick="_w_update_show" icon="edit.png"/>
												<aos:dockeditem text="删除" tooltip="删除" onclick="_delete" icon="del.png" />
												<%-- 缺少相关函数，无法实现<aos:dockeditem text="导出" tooltip="导出" onclick="fn_exportexcel()" icon="icon70.png" /> --%>
								<aos:dockeditem xtype="tbseparator" />
				                                                                      			</aos:docked>
			<aos:column type="rowno" />
			<aos:selmodel type="checkbox" mode="multi" />
		 
						      			      
						      			         <aos:column header="设备编号" dataIndex="device_id"   width="255" />
			    						      			       <aos:column header="状态" dataIndex="status"   width="255" />
			    						      			       <aos:column header="布撤防" dataIndex="arrange_withdraw"   width="255" />
			    						      			      <aos:column header="序号"   dataIndex="id_"   width="255"  />
			    						      			       <aos:column header="来自用户表的编号" dataIndex="user_id"   width="255" />
			    						      			       <aos:column header="用户名称" dataIndex="user_name"   width="255" />
			    						      			       <aos:column header="用户地址" dataIndex="user_address"   width="400" />
			    						      			       <aos:column header="分中心" dataIndex="sub_center"   width="255" />
			    						      			       <aos:column header="信号质量" dataIndex="signal_quality"   width="255" />
			    						      			       <aos:column header="用户类型" dataIndex="user_type"   width="255" />
			    						      			       <aos:column header="报警状态" dataIndex="is_alarming"   width="255" />
			    						      			    
			    						      			       <aos:column header="主机类型" dataIndex="host_type"   width="255" />
			    						      			       <aos:column header="视频联动" dataIndex="video_linkage"   width="255" />
			    						      			       <aos:column header="负责人" dataIndex="head"   width="255" />
			    						      			       <aos:column header="负责人电话" dataIndex="head_phone"   width="255" />
			    						      			       <aos:column header="测试间隔" dataIndex="test_period"   width="255" />
			    						      			       <aos:column header="缴费截止日期" dataIndex="pay_date"   width="160" />
			    						      			       <aos:column header="保修截止日期" dataIndex="guarantee_time"   width="160" />
			    						      			       <aos:column header="核查状态" dataIndex="check_status"   width="255" />
			    						      			       <aos:column header="欠费" dataIndex="arrearage"   width="255" />
			    						      			       <aos:column header="停机" dataIndex="shut_down"   width="255" />
			    						      			       <aos:column header="镇所" dataIndex="town"   width="255" />
			    						      			       <aos:column header="镇所电话" dataIndex="town_phone"   width="255" />
			    						      			       <aos:column header="所属派出所" dataIndex="police_station"   width="255" />
			    						      			       <aos:column header="地址标签" dataIndex="loc_label"   width="400" />
			    						      			       <aos:column header="派出所电话" dataIndex="police_phone"   width="255" />
			    						      			       <aos:column header="主机位置" dataIndex="host_address"   width="255" />
			    						      			       <aos:column header="安装日期" dataIndex="install_date"   width="160" />
			    						      			       <aos:column header="离线次数" dataIndex="shutdown_number"   width="255" />
			    						      			       <aos:column header="撤防时间" dataIndex="withdraw_date"   width="160" />
			    						      			       <aos:column header="布防时间" dataIndex="arrange_date"   width="160" />
			    						      			       <aos:column header="最后来信号时间" dataIndex="last_date"   width="160" />
			    						      			       <aos:column header="施工人员" dataIndex="builders"   width="255" />
			    						      			       <aos:column header="出警单位" dataIndex="police_unit"   width="255" />
			    						      			       <aos:column header="电话" dataIndex="phone"   width="255" />
			    						      			       <aos:column header="报修进度" dataIndex="repair_progress"   width="160" />
			    						      			       <aos:column header="报修记录" dataIndex="repair_record"   width="160" />
			    						      			       <aos:column header="组" dataIndex="group_"   width="255" />
			    						      			       <aos:column header="录入员" dataIndex="entry_clerk"   width="255" />
			    						      			       <aos:column header="巡检人员" dataIndex="inspection_staff"   width="255" />
			    						      			       <aos:column header="离线时间" dataIndex="downtime"   width="160" />
			    						      			       <aos:column header="电话1" dataIndex="phone1"   width="255" />
			    						      			       <aos:column header="产品型号" dataIndex="product_type"   width="255" />
			    						      			       <aos:column header="出厂日期" dataIndex="production_date"   width="255" />
			    						      			       <aos:column header="负责人电话2" dataIndex="head_phone2"   width="255" /> 
			    						      			       <aos:column header="入网日期" dataIndex="net_date"   width="160" />
			    						      			       <aos:column header="通讯线路" dataIndex="communication_line"   width="255" />
			    						      			       <aos:column header="编号" dataIndex="users_id"   width="255" />
			    						      			       <aos:column header="姓名" dataIndex="users_name"   width="255" />
			    						      			       <aos:column header="身份" dataIndex="users_identity"   width="255" />
			    						      			       <aos:column header="备注" dataIndex="remarks"   width="500" />
			    						      			       <aos:column header="预定布撤防时间" dataIndex="arrangeandwithdraw_time"   width="700" />
			    						      			       <aos:column header="分站" dataIndex="network_setting_substation"   width="255" />
			    						      			       <aos:column header="名称" dataIndex="network_setting_name"   width="255" />
			    						      			       <aos:column header="在线状态" dataIndex="online_state"   width="255" />
			    						      			       <aos:column header="模板文件" dataIndex="network_setting_template"   width="255" />
			    						      			       <aos:column header="备注" dataIndex="network_setting_remarks"   width="255" />
			    				      			       <aos:column header="接收号码" dataIndex="network_setting_number"   width="255" />
			    						      			       <aos:column header="防区使用者" dataIndex="network_setting_users"   width="255" />
			    						      			       <aos:column header="报警类型" dataIndex="alarm_type"   width="1000" />
			    						      			       <aos:column header="通信格式" dataIndex="communication_format"   width="255" />
			    						      			       <aos:column header="报警声音方案" dataIndex="alarm_sound"   width="255" />
			    						      			       <aos:column header="主机报警短信号码" dataIndex="host_alarm_sms"   width="255" />
			    						      			       <aos:column header="分区号" dataIndex="gg_"   width="255" />
			    						      			       <aos:column header="离线时间" dataIndex="shutdown_time"   width="160" />
			    						      			       <aos:column header="防区号" dataIndex="ccc_"   width="255" />
			    						      			       <aos:column header="用户编号" dataIndex="user_acct"   width="255" />
			    						      			       <aos:column header="审查确认" dataIndex="review_confirm"   width="255" />
			    						      			       <aos:column header="备注" dataIndex="management_remarks"   width="500" />
			    			 		</aos:gridpanel>
	</aos:viewport>
	
	<aos:window id="_w_add_data" title="新增设备" resizable="true" maximized="true"   height="480"   layout="fit" modal="true" center="true" maximizable="true" closable="false" >
		
		<aos:formpanel id="_f_add"  layout="column" autoScroll="true" labelWidth="100">
          <%-- <aos:hiddenfield name="id_"/> --%>
			<aos:fieldset>
				<aos:textfield name="user_id" fieldLabel="来自用户表的编号" maxLength="255" />
				<aos:textfield name="id_" fieldLabel="序号" maxLength="255" />
			</aos:fieldset>

			<aos:fieldset title="用户数据" columnWidth="1" labelWidth="100">
				<aos:fieldset columnWidth="0.33" labelWidth="70">


					<aos:textfield name="user_name" fieldLabel="用户名称" maxLength="255" />

					<aos:textareafield name="user_address" fieldLabel="用户地址" width="232" maxLength="255" />
					<aos:textfield name="signal_quality" fieldLabel="信号质量" maxLength="255" />
					<aos:textfield name="phone" fieldLabel="电话" maxLength="255" />
					<aos:textfield name="host_type" fieldLabel="主机类型" maxLength="255" />
					<aos:textfield name="host_address" fieldLabel="主机位置" maxLength="255" />
                    <aos:textfield name="communication_format" fieldLabel="通信格式" maxLength="255" />
				
				
					<aos:textfield name="shutdown_number" fieldLabel="离线次数" maxLength="255" />
					<aos:textfield name="test_period" fieldLabel="测试间隔" maxLength="255" />
					<aos:textfield name="alarm_sound" fieldLabel="报警声音方案" maxLength="255" />
					<aos:textfield name="loc_label" fieldLabel="地址标签" maxLength="400" />
					<aos:textfield name="host_alarm_sms" fieldLabel="主机报警短信号码" maxLength="255" />







				</aos:fieldset>
				<aos:fieldset columnWidth="0.33" labelWidth="70">

					<aos:textfield name="police_station" fieldLabel="所属派出所" maxLength="255" />
					<aos:textfield name="police_phone" fieldLabel="派出所电话" maxLength="255" />
					<aos:textfield name="user_type" fieldLabel="用户类型" maxLength="255" />
					<aos:textfield name="is_alarming" fieldLabel="报警状态" maxLength="255" />
					<aos:textfield name="head" fieldLabel="负责人" maxLength="255" />
					<aos:textfield name="head_phone" fieldLabel="负责人电话" maxLength="255" />
					<aos:textfield name="head_phone2" fieldLabel="负责人电话2" maxLength="255" />
					<aos:textfield name="group_" fieldLabel="组" maxLength="255" />
					<aos:datetimefield name="net_date" fieldLabel="入网日期"  editable="true" />
					<aos:datetimefield name="install_date" fieldLabel="安装日期"  editable="true" />
					<aos:textfield name="product_type" fieldLabel="产品型号" maxLength="255" />
					<aos:textfield name="production_date" fieldLabel="出厂日期" maxLength="255" />
					<aos:textfield name="builders" fieldLabel="施工人员" maxLength="255" />
					<aos:textfield name="inspection_staff" fieldLabel="巡检人员" maxLength="255" />
					<aos:textfield name="video_linkage" fieldLabel="视频联动" maxLength="255" />



				</aos:fieldset>
				<aos:fieldset columnWidth="0.33" labelWidth="70">


				</aos:fieldset>
				<aos:fieldset>
					<aos:textfield name="town" fieldLabel="镇所" maxLength="255" />
					<aos:textfield name="town_phone" fieldLabel="镇所电话" maxLength="255" />
					<aos:textfield name="police_unit" fieldLabel="出警单位" maxLength="255" />
					<aos:textfield name="gg_" fieldLabel="分区号" maxLength="255" />
					<aos:textfield name="phone1" fieldLabel="电话1" maxLength="255" />
					
					<aos:textfield name="communication_line" fieldLabel="通讯线路" maxLength="255" />
				</aos:fieldset>
				<aos:fieldset>
					<aos:datetimefield name="guarantee_time" fieldLabel="保修截止日期"  editable="true" />
					<aos:textfield name="check_status" fieldLabel="核查状态" maxLength="255" />
					<aos:textfield name="arrearage" fieldLabel="欠费" maxLength="255" />
					<aos:textfield name="shut_down" fieldLabel="停机" maxLength="255" />
					<aos:textfield name="sub_center" fieldLabel="分中心"  maxLength="255" />
					<aos:textfield name="entry_clerk" fieldLabel="录入员" maxLength="255" />
					<aos:datetimefield name="shutdown_time" fieldLabel="离线时间"  editable="true" />
				    <aos:textfield name="ccc_" fieldLabel="防区号" maxLength="255" />
				    <aos:textfield name="user_acct" fieldLabel="用户编号" maxLength="255" />
				    <aos:textfield name="review_confirm" fieldLabel="审查确认" maxLength="255" />
				    <aos:datetimefield name="downtime" fieldLabel="离线时间"  editable="true" />
				    <aos:textareafield name="management_remarks" fieldLabel="备注"  width="260" maxLength="500" />

				</aos:fieldset>
				<aos:fieldset title="多余">
					<aos:textfield name="status" fieldLabel="状态" maxLength="255" />
					<aos:textfield name="arrange_withdraw" fieldLabel="布撤防" maxLength="255" />
					<aos:textfield name="device_id" fieldLabel="设备编号" maxLength="255" />
					<aos:datetimefield name="withdraw_date" fieldLabel="撤防时间"  editable="true" />
					<aos:datetimefield name="arrange_date" fieldLabel="布防时间"  editable="true" />
					<aos:datetimefield name="last_date" fieldLabel="最后来信号时间"  editable="true" />

				



				
					<aos:datetimefield name="repair_progress" fieldLabel="报修进度"  editable="true" />
					<aos:datetimefield name="repair_record" fieldLabel="报修记录"  editable="true" />
				</aos:fieldset>
			</aos:fieldset>


			<aos:fieldset title="使用者" columnWidth="1" labelWidth="70">
				<aos:textfield name="users_id" fieldLabel="编号" maxLength="255" />
				<aos:textfield name="users_name" fieldLabel="姓名" maxLength="255" />
				<aos:textfield name="users_identity" fieldLabel="身份" maxLength="255" />
				<aos:textareafield name="remarks" fieldLabel="备注" columnWidth="1"  maxLength="500"/>

			</aos:fieldset>




			<aos:fieldset title="预定布撤防时间" columnWidth="1" labelWidth="70">

				<aos:textfield name="arrangeandwithdraw_time" fieldLabel="预定布撤防时间" maxLength="700" />
				<aos:textfield name="arrangeandwithdraw_time" fieldLabel="周一" maxLength="700" />
                <aos:textfield name="arrangeandwithdraw_time" fieldLabel="周二" maxLength="700" />

			</aos:fieldset>



			<aos:fieldset title="网络设置" columnWidth="1" labelWidth="70">


				<aos:textfield name="network_setting_substation" fieldLabel="分站" maxLength="255" />
				<aos:textfield name="network_setting_name" fieldLabel="名称" maxLength="255" />
				<aos:textfield name="online_state" fieldLabel="在线状态" maxLength="255" />
				<aos:textfield name="network_setting_template" fieldLabel="模板文件" maxLength="255" />
				<aos:textareafield name="network_setting_remarks" fieldLabel="备注" width="232" maxLength="255" />
				<aos:textfield name="network_setting_number" fieldLabel="接收号码" maxLength="255" />
				<aos:textfield name="network_setting_users" fieldLabel="防区使用者" maxLength="255" />
				<aos:textfield name="alarm_type" fieldLabel="报警类型" maxLength="1000" />
              
				
				

			</aos:fieldset>



		
		</aos:formpanel>
		<aos:docked dock="bottom" ui="footer">
			<aos:dockeditem xtype="tbfill" />
			<aos:dockeditem onclick="_f_add_save" text="保存" icon="ok.png" />
			<aos:dockeditem onclick="#_w_add_data.hide();" text="关闭" icon="close.png" />
		</aos:docked>
	</aos:window>
	
	<aos:window id="_w_update_data" title="修改设备" width="600"   height="400"  autoScroll="true">
			<aos:formpanel id="_f_update"   width="600-20"     layout="anchor" labelWidth="70">
              <aos:hiddenfield name="id_"/>
           	   	       	        <aos:textfield name="status" fieldLabel="状态"  maxLength="255"    	         />
	      	    	        	   	       	        <aos:textfield name="arrange_withdraw" fieldLabel="布撤防"  maxLength="255"    	         />
	      	    	        	   	       	        <aos:textfield name="device_id" fieldLabel="设备编号"  maxLength="255"    	         />
	      	    	        	   	       	        <aos:textfield name="user_id" fieldLabel="来自用户表的编号"  maxLength="255"    	         />
	      	    	        	   	       	        <aos:textfield name="user_name" fieldLabel="用户名称"  maxLength="255"    	         />
	      	    	        	   	       	        <aos:textfield name="user_address" fieldLabel="用户地址"  maxLength="400"    	         />
	      	    	        	   	       	        <aos:textfield name="sub_center" fieldLabel="分中心"  maxLength="255"    	         />
	      	    	        	   	       	        <aos:textfield name="signal_quality" fieldLabel="信号质量"  maxLength="255"    	         />
	      	    	        	   	       	        <aos:textfield name="user_type" fieldLabel="用户类型"  maxLength="255"    	         />
	      	    	        	   	       	        <aos:textfield name="is_alarming" fieldLabel="报警状态"  maxLength="255"    	         />
	      	    	        	   	       	        <aos:textfield name="host_type" fieldLabel="主机类型"  maxLength="255"    	         />
	      	    	        	   	       	        <aos:textfield name="video_linkage" fieldLabel="视频联动"  maxLength="255"    	         />
	      	    	        	   	       	        <aos:textfield name="head" fieldLabel="负责人"  maxLength="255"    	         />
	      	    	        	   	       	        <aos:textfield name="head_phone" fieldLabel="负责人电话"  maxLength="255"    	         />
	      	    	        	   	       	        <aos:textfield name="test_period" fieldLabel="测试间隔"  maxLength="255"    	         />
	      	    	        	      	       <aos:datefield name="pay_date" fieldLabel="缴费截止日期"   	                 format="Y-m-d 00:00:00"     editable="true"/>
	    	        	      	       <aos:datefield name="guarantee_time" fieldLabel="保修截止日期"   	                 format="Y-m-d 00:00:00"     editable="true"/>
	    	        	   	       	        <aos:textfield name="check_status" fieldLabel="核查状态"  maxLength="255"    	         />
	      	    	        	   	       	        <aos:textfield name="arrearage" fieldLabel="欠费"  maxLength="255"    	         />
	      	    	        	   	       	        <aos:textfield name="shut_down" fieldLabel="停机"  maxLength="255"    	         />
	      	    	        	   	       	        <aos:textfield name="town" fieldLabel="镇所"  maxLength="255"    	         />
	      	    	        	   	       	        <aos:textfield name="town_phone" fieldLabel="镇所电话"  maxLength="255"    	         />
	      	    	        	   	       	        <aos:textfield name="police_station" fieldLabel="所属派出所"  maxLength="255"    	         />
	      	    	        	   	       	        <aos:textfield name="loc_label" fieldLabel="地址标签"  maxLength="400"    	         />
	      	    	        	   	       	        <aos:textfield name="police_phone" fieldLabel="派出所电话"  maxLength="255"    	         />
	      	    	        	   	       	        <aos:textfield name="host_address" fieldLabel="主机位置"  maxLength="255"    	         />
	      	    	        	      	       <aos:datefield name="install_date" fieldLabel="安装日期"   	                 format="Y-m-d 00:00:00"     editable="true"/>
	    	        	   	       	        <aos:textfield name="shutdown_number" fieldLabel="离线次数"  maxLength="255"    	         />
	      	    	        	      	       <aos:datefield name="withdraw_date" fieldLabel="撤防时间"   	                 format="Y-m-d 00:00:00"     editable="true"/>
	    	        	      	       <aos:datefield name="arrange_date" fieldLabel="布防时间"   	                 format="Y-m-d 00:00:00"     editable="true"/>
	    	        	      	       <aos:datefield name="last_date" fieldLabel="最后来信号时间"   	                 format="Y-m-d 00:00:00"     editable="true"/>
	    	        	   	       	        <aos:textfield name="builders" fieldLabel="施工人员"  maxLength="255"    	         />
	      	    	        	   	       	        <aos:textfield name="police_unit" fieldLabel="出警单位"  maxLength="255"    	         />
	      	    	        	   	       	        <aos:textfield name="phone" fieldLabel="电话"  maxLength="255"    	         />
	      	    	        	      	       <aos:datefield name="repair_progress" fieldLabel="报修进度"   	                 format="Y-m-d 00:00:00"     editable="true"/>
	    	        	      	       <aos:datefield name="repair_record" fieldLabel="报修记录"   	                 format="Y-m-d 00:00:00"     editable="true"/>
	    	        	   	       	        <aos:textfield name="group_" fieldLabel="组"  maxLength="255"    	         />
	      	    	        	   	       	        <aos:textfield name="entry_clerk" fieldLabel="录入员"  maxLength="255"    	         />
	      	    	        	   	       	        <aos:textfield name="inspection_staff" fieldLabel="巡检人员"  maxLength="255"    	         />
	      	    	        	      	       <aos:datefield name="downtime" fieldLabel="离线时间"   	                 format="Y-m-d 00:00:00"     editable="true"/>
	    	        	   	       	        <aos:textfield name="phone1" fieldLabel="电话1"  maxLength="255"    	         />
	      	    	        	   	       	        <aos:textfield name="product_type" fieldLabel="产品型号"  maxLength="255"    	         />
	      	    	        	   	       	        <aos:textfield name="production_date" fieldLabel="出厂日期"  maxLength="255"    	         />
	      	    	        	   	       	   <%--      <aos:textfield name="head_product_type" fieldLabel="负责人产品型号"  maxLength="255"    	         /> --%>
	      	    	        	      	       <aos:datefield name="net_date" fieldLabel="入网日期"   	                 format="Y-m-d 00:00:00"     editable="true"/>
	    	        	   	       	        <aos:textfield name="communication_line" fieldLabel="通讯线路"  maxLength="255"    	         />
	      	    	        	   	       	        <aos:textfield name="users_id" fieldLabel="编号"  maxLength="255"    	         />
	      	    	        	   	       	        <aos:textfield name="users_name" fieldLabel="姓名"  maxLength="255"    	         />
	      	    	        	   	       	        <aos:textfield name="users_identity" fieldLabel="身份"  maxLength="255"    	         />
	      	    	        	   	       	        <aos:textfield name="remarks" fieldLabel="备注"  maxLength="500"    	         />
	      	    	        	   	       	        <aos:textfield name="arrangeandwithdraw_time" fieldLabel="预定布撤防时间"  maxLength="700"    	         />
	      	    	        	   	       	        <aos:textfield name="network_setting_substation" fieldLabel="分站"  maxLength="255"    	         />
	      	    	        	   	       	        <aos:textfield name="network_setting_name" fieldLabel="名称"  maxLength="255"    	         />
	      	    	        	   	       	        <aos:textfield name="online_state" fieldLabel="在线状态"  maxLength="255"    	         />
	      	    	        	   	       	        <aos:textfield name="network_setting_template" fieldLabel="模板文件"  maxLength="255"    	         />
	      	    	        	   	       	        <aos:textfield name="network_setting_remarks" fieldLabel="备注"  maxLength="255"    	         />
	      	    	        	   	       	        <aos:textfield name="network_setting_number" fieldLabel="接收号码"  maxLength="255"    	         />
	      	    	        	   	       	        <aos:textfield name="network_setting_users" fieldLabel="防区使用者"  maxLength="255"    	         />
	      	    	        	   	       	        <aos:textfield name="alarm_type" fieldLabel="报警类型"  maxLength="1000"    	         />
	      	    	        	   	       	        <aos:textfield name="communication_format" fieldLabel="通信格式"  maxLength="255"    	         />
	      	    	        	   	       	        <aos:textfield name="alarm_sound" fieldLabel="报警声音方案"  maxLength="255"    	         />
	      	    	        	   	       	        <aos:textfield name="host_alarm_sms" fieldLabel="主机报警短信号码"  maxLength="255"    	         />
	      	    	        	   	       	        <aos:textfield name="gg_" fieldLabel="分区号"  maxLength="255"    	         />
	      	    	        	      	       <aos:datefield name="shutdown_time" fieldLabel="离线时间"   	                 format="Y-m-d 00:00:00"     editable="true"/>
	    	        	   	       	        <aos:textfield name="ccc_" fieldLabel="防区号"  maxLength="255"    	         />
	      	    	        	   	       	        <aos:textfield name="user_acct" fieldLabel="用户编号"  maxLength="255"    	         />
	      	    	        	   	       	        <aos:textfield name="review_confirm" fieldLabel="审查确认"  maxLength="255"    	         />
	      	    	        	   	       	        <aos:textfield name="management_remarks" fieldLabel="备注"  maxLength="500"    	         />
	      	    	 		</aos:formpanel>
		<aos:docked dock="bottom" ui="footer">
			<aos:dockeditem xtype="tbfill" />
			<aos:dockeditem onclick="_f_update_save" text="保存" icon="ok.png" />
			<aos:dockeditem onclick="#_w_update_data.hide();" text="关闭" icon="close.png" />
		</aos:docked>
	</aos:window>
	
	<script type="text/javascript">
	 var info = Ext.util.Cookies.get('juid'); 
	 setInterval(_datagridpanel_query,30000); 
		function _datagridpanel_query() {
			var params = AOS.getValue('_f_query');
			_datagridpanel_store.getProxy().extraParams = params;
			_datagridpanel_store.loadPage(1);
		}
		function getCount() {
			var count = _datagridpanel_store.getCount();
			console.log(count);
		}
		//弹出新增窗口
		function _w_add_show(){
			AOS.reset(_f_add);
			_w_add_data.show();
		}
		//新增 设备
		function _f_add_save(){
				AOS.ajax({
				forms : _f_add,
				url : 'deviceService.saveDevice',
				ok : function(data) {
					if (data.appcode === -1) {
                        AOS.err(data.appmsg);
                    } else {
                    	_w_add_data.hide();
    					_datagridpanel_store.reload();
    					_datagridpanel_store();
    					AOS.tip(data.appmsg);
                    }
				}
			});
		}	
		
		//弹出修改窗口 设备
		function _w_update_show(){
			AOS.reset(_f_update);
			var record = AOS.selectone(_datagridpanel);
			if(record){
				_w_update_data.show();
				_f_update.loadRecord(record);
			}
		}
	    
	   //修改   设备
		function _f_update_save(){
			AOS.ajax({
				forms : _f_update,
				url : 'deviceService.updateDevice',
				ok : function(data) {
					if (data.appcode === -1) {
                        AOS.err(data.appmsg);
                    } else {
    					AOS.tip(data.appmsg);	
    					_w_update_data.hide();
    					_datagridpanel_store.reload();
                    }
				}
			}); 
		}
	   
        //删除 设备
	 	function _delete(){
	 				var selection = AOS.selection(_datagridpanel, 'device_id');
	 				if(AOS.empty(selection)){
	 					AOS.tip('删除前请先选中数据。');
	 					return;
	 				}
	 				var rows = AOS.rows(_datagridpanel);
	 				var msg =  AOS.merge('确认要删除选中的{0}项目吗？', rows);
	 				AOS.confirm(msg, function(btn){
	 					if(btn === 'cancel'){
	 						AOS.tip('删除操作被取消。');
	 						return;
	 					}
	 					AOS.ajax({
	 						url : 'deviceService.deleteDevice',
	 						params:{
	 							aos_rows_: selection
	 						},
	 						ok : function(data) {
	 							if(data.appcode === -1){
	 								AOS.err(data.appmsg);
	 								return ;
	 							}
	 							AOS.tip(data.appmsg);
	 							_datagridpanel_store.reload();
	 						}
	 					});
	 				});
	 			}
function fn_export_excel(){
	 		
	 		
			var params = AOS.getValue('_f_query');
			var params_url="";
			for(var v in params){
				
				params_url+="&"+v+"="+params[v];
				
			}
			
			AOS.file('/cdz/http/do.jhtml?router=deviceService.exportExcel&juid='+info+params_url);
		
			
			 
		}
	</script>
</aos:onready>
</aos:html>