package com.entity.vo;

import com.entity.LiuyanxinxiEntity;

import com.baomidou.mybatisplus.annotations.TableName;
import com.fasterxml.jackson.annotation.JsonFormat;
import java.util.Date;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
 

/**
 * 留言信息
 * 手机端接口返回实体辅助类 
 * （主要作用去除一些不必要的字段）
 * @author 
 * @email 
 * @date 2022-04-18 21:36:24
 */
public class LiuyanxinxiVO  implements Serializable {
	private static final long serialVersionUID = 1L;

	 			
	/**
	 * 留言内容
	 */
	
	private String liuyanneirong;
		
	/**
	 * 留言时间
	 */
		
	@JsonFormat(locale="zh", timezone="GMT+8", pattern="yyyy-MM-dd HH:mm:ss")
	@DateTimeFormat 
	private Date liuyanshijian;
		
	/**
	 * 是否审核
	 */
	
	private String sfsh;
		
	/**
	 * 审核回复
	 */
	
	private String shhf;
		
	/**
	 * 用户id
	 */
	
	private Long userid;
				
	
	/**
	 * 设置：留言内容
	 */
	 
	public void setLiuyanneirong(String liuyanneirong) {
		this.liuyanneirong = liuyanneirong;
	}
	
	/**
	 * 获取：留言内容
	 */
	public String getLiuyanneirong() {
		return liuyanneirong;
	}
				
	
	/**
	 * 设置：留言时间
	 */
	 
	public void setLiuyanshijian(Date liuyanshijian) {
		this.liuyanshijian = liuyanshijian;
	}
	
	/**
	 * 获取：留言时间
	 */
	public Date getLiuyanshijian() {
		return liuyanshijian;
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
				
	
	/**
	 * 设置：用户id
	 */
	 
	public void setUserid(Long userid) {
		this.userid = userid;
	}
	
	/**
	 * 获取：用户id
	 */
	public Long getUserid() {
		return userid;
	}
			
}
