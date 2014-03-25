package com.lai.entities;

import org.hibernate.validator.constraints.NotBlank;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Set;

/**
 * User: wlai
 * Date: 9/2/13
 * Time: 6:38 PM
 */
@Entity
@Table(name = "sec_roles")
public class Role implements Serializable {
    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    private Integer id;
    @Column  (nullable = false)
    @NotBlank(message = "name不能为空")
    private String name;

    @Column(name="role_desc")
    private String roleDesc;
    @ManyToMany
    @JoinTable(name = "sec_role_right", joinColumns = {@JoinColumn(name = "role_id")},
            inverseJoinColumns = {@JoinColumn(name = "right_id")})
    private Set<Right> roleRights;

    @Column(name="disabled")
    private boolean disabled=false;

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

    public Set<Right> getRoleRights() {
        return roleRights;
    }

    public void setRoleRights(Set<Right> roleRights) {
        this.roleRights = roleRights;
    }

    public boolean isDisabled() {
        return disabled;
    }

    public void setDisabled(boolean disabled) {
        this.disabled = disabled;
    }

    public String getRoleDesc() {
        return roleDesc;
    }

    public void setRoleDesc(String roleDesc) {
        this.roleDesc = roleDesc;
    }
}
