/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ro.project.entities;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 *
 * @author Owner
 */
@Entity
@Table(name = "users")
public class UserEntity {
    @Id
    @GeneratedValue
    @Column(name = "id")
    private Integer id;
    
    @Column(name = "username")
    private String username;
    
    @Column(name = "password")
    private String password;
    
    @Column(name = "email")
    private String email;
    
    @OneToMany
    @JoinTable(	name = "users_roles",
    			joinColumns= {@JoinColumn(name = "user_id", referencedColumnName = "id")},
    			inverseJoinColumns = {@JoinColumn(name = "role_id", referencedColumnName = "id")})
    private List<RoleEntity> roles;

    @Override
    public boolean equals(Object other) {
        if (other == this) return true;
        
        if ((other == null) || other.getClass() != this.getClass()) {
            return false;
        }
        
        final UserEntity that = (UserEntity) other;
        
        return id == that.id && 
                (username == that.username || (username != null || username.equals(that.username))) &&
                (password == that.password || (password != null && password.equals(that.password)) &&
                (email == that.email || (email != null || email.equals(that.email))));
    }

    
    
    
    
    // GETTERS AND SETTERS
    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }
}
