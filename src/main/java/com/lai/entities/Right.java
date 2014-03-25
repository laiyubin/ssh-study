package com.lai.entities;

import javax.persistence.*;
import java.io.Serializable;

/**
 * User: wlai
 * Date: 10/16/13
 * Time: 7:33 PM
 */
@Entity
@Table(name="sec_right")
public class Right implements Serializable {
    @Id
    @GeneratedValue    (strategy = GenerationType.IDENTITY)
    private Integer id;
    @ManyToOne
    @JoinColumn(name = "module_id", nullable = false)
    private Module module;

    @Column(name="module_right",nullable = false)
    private Integer right;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Module getModule() {
        return module;
    }

    public void setModule(Module module) {
        this.module = module;
    }

    public Integer getRight() {
        return right;
    }

    public void setRight(Integer right) {
        this.right = right;
    }
}
