package com.ssic.education.common.dto;

import java.io.Serializable;
import java.util.Date;

import lombok.Getter;
import lombok.Setter;

public class ProjectUsersDto implements Serializable{

	 @Getter
	 @Setter
	 private String id;
	 @Getter
	 @Setter
	 private String projId;
	 @Getter
	 @Setter
	 private String userId;
	 @Getter
	 @Setter
	 private Integer stat;
	 @Getter
	 @Setter
	 private Date lastUpdateTime;
	 @Getter
	 @Setter
	 private Date createTime;
	 @Getter
	 @Setter
	 private String projName;
	 @Getter
	 @Setter
	 private String userName;
	 
	 @Getter
	 @Setter
	 private String deptId;
	 @Getter
	 @Setter
	 private String deptName;
}
