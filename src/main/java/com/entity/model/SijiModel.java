package com.entity.model;

import com.entity.SijiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;
import java.io.Serializable;
 

/**
 * 司机
 * 接收传参的实体类  
 *（实际开发中配合移动端接口开发手动去掉些没用的字段， 后端一般用entity就够用了） 
 * 取自ModelAndView 的model名称
 * @author 
 * @email 
 * @date 2022-04-18 21:36:24
 */
public class SijiModel  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 密码
	 */
	
	private String mima;
		
	/**
	 * 司机姓名
	 */
	
	private String sijixingming;
		
	/**
	 * 联系电话
	 */
	
	private String lianxidianhua;
		
	/**
	 * 身份证
	 */
	
	private String shenfenzheng;
		
	/**
	 * 紧急联系人
	 */
	
	private String jinjilianxiren;
		
	/**
	 * 紧急电话
	 */
	
	private String jinjidianhua;
		
	/**
	 * 车型
	 */
	
	private String chexing;
		
	/**
	 * 驾驶证
	 */
	
	private String jiashizheng;
		
	/**
	 * 是否审核
	 */
	
	private String sfsh;
		
	/**
	 * 审核回复
	 */
	
	private String shhf;
				
	
	/**
	 * 设置：密码
	 */
	 
	public void setMima(String mima) {
		this.mima = mima;
	}
	
	/**
	 * 获取：密码
	 */
	public String getMima() {
		return mima;
	}
				
	
	/**
	 * 设置：司机姓名
	 */
	 
	public void setSijixingming(String sijixingming) {
		this.sijixingming = sijixingming;
	}
	
	/**
	 * 获取：司机姓名
	 */
	public String getSijixingming() {
		return sijixingming;
	}
				
	
	/**
	 * 设置：联系电话
	 */
	 
	public void setLianxidianhua(String lianxidianhua) {
		this.lianxidianhua = lianxidianhua;
	}
	
	/**
	 * 获取：联系电话
	 */
	public String getLianxidianhua() {
		return lianxidianhua;
	}
				
	
	/**
	 * 设置：身份证
	 */
	 
	public void setShenfenzheng(String shenfenzheng) {
		this.shenfenzheng = shenfenzheng;
	}
	
	/**
	 * 获取：身份证
	 */
	public String getShenfenzheng() {
		return shenfenzheng;
	}
				
	
	/**
	 * 设置：紧急联系人
	 */
	 
	public void setJinjilianxiren(String jinjilianxiren) {
		this.jinjilianxiren = jinjilianxiren;
	}
	
	/**
	 * 获取：紧急联系人
	 */
	public String getJinjilianxiren() {
		return jinjilianxiren;
	}
				
	
	/**
	 * 设置：紧急电话
	 */
	 
	public void setJinjidianhua(String jinjidianhua) {
		this.jinjidianhua = jinjidianhua;
	}
	
	/**
	 * 获取：紧急电话
	 */
	public String getJinjidianhua() {
		return jinjidianhua;
	}
				
	
	/**
	 * 设置：车型
	 */
	 
	public void setChexing(String chexing) {
		this.chexing = chexing;
	}
	
	/**
	 * 获取：车型
	 */
	public String getChexing() {
		return chexing;
	}
				
	
	/**
	 * 设置：驾驶证
	 */
	 
	public void setJiashizheng(String jiashizheng) {
		this.jiashizheng = jiashizheng;
	}
	
	/**
	 * 获取：驾驶证
	 */
	public String getJiashizheng() {
		return jiashizheng;
	}
				
	
	/**
	 * 设置：是否审核
	 */
	 
	public void setSfsh(String sfsh) {
		this.sfsh = sfsh;
	}
	
	/**
	 * 获取：是否审核
	 */
	public String getSfsh() {
		return sfsh;
	}
				
	
	/**
	 * 设置：审核回复
	 */
	 
	public void setShhf(String shhf) {
		this.shhf = shhf;
	}
	
	/**
	 * 获取：审核回复
	 */
	public String getShhf() {
		return shhf;
	}
			
}
