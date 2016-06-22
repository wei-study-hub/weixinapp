package org.yuedong.model;

import java.io.Serializable;
import java.util.Date;

public class BaseModel implements Serializable{

	/**
	 * 
	 */
	private static final long serialVersionUID = -7397230601579473686L;
	private Integer id;
    private Date createTime;

    private String deleted = "F";

    private Date modifyTime;
    
    public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public String getDeleted() {
        return deleted;
    }

    public void setDeleted(String deleted) {
        this.deleted = deleted;
    }

    public Date getModifyTime() {
        return modifyTime;
    }

    public void setModifyTime(Date modifyTime) {
        this.modifyTime = modifyTime;
    }
}
