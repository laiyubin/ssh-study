package com.lai.entities;

import org.hibernate.validator.constraints.NotBlank;

import javax.persistence.*;
import java.io.Serializable;

/**
 * User: wlai
 * Date: 9/2/13
 * Time: 6:37 PM
 */
@Entity
@Table(name = "sec_modules")
public class Module implements Serializable {
    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    private Integer id;
    @Column (nullable = false)
    @NotBlank(message = "name不能为空")
    private String name;
    @Column (nullable = false)
    @NotBlank(message = "path不能为空")
    private String path;
    @Column
    private boolean deleted=false;

    @ManyToOne
    @JoinColumn(name="parent_id")
    private Module parent;

    public boolean isDeleted() {
        return deleted;
    }

    public void setDeleted(boolean deleted) {
        this.deleted = deleted;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPath() {
        return path;
    }

    public void setPath(String path) {
        this.path = path;
    }

    public Module getParent() {
        return parent;
    }

    public void setParent(Module parent) {
        this.parent = parent;
    }
}
