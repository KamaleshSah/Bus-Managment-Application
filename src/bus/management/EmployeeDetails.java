/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bus.management;

import java.beans.PropertyChangeListener;
import java.beans.PropertyChangeSupport;
import java.io.Serializable;
import javax.persistence.Basic;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.Table;
import javax.persistence.Transient;

/**
 *
 * @author kamlesh
 */
@Entity
@Table(name = "employee_details", catalog = "busm", schema = "")
@NamedQueries({
    @NamedQuery(name = "EmployeeDetails.findAll", query = "SELECT e FROM EmployeeDetails e")
    , @NamedQuery(name = "EmployeeDetails.findByEid", query = "SELECT e FROM EmployeeDetails e WHERE e.eid = :eid")
    , @NamedQuery(name = "EmployeeDetails.findByFirstname", query = "SELECT e FROM EmployeeDetails e WHERE e.firstname = :firstname")
    , @NamedQuery(name = "EmployeeDetails.findByLastname", query = "SELECT e FROM EmployeeDetails e WHERE e.lastname = :lastname")
    , @NamedQuery(name = "EmployeeDetails.findByPhoneno1", query = "SELECT e FROM EmployeeDetails e WHERE e.phoneno1 = :phoneno1")
    , @NamedQuery(name = "EmployeeDetails.findByPhoneno2", query = "SELECT e FROM EmployeeDetails e WHERE e.phoneno2 = :phoneno2")})
public class EmployeeDetails implements Serializable {

    @Transient
    private PropertyChangeSupport changeSupport = new PropertyChangeSupport(this);

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Basic(optional = false)
    @Column(name = "eid")
    private Integer eid;
    @Basic(optional = false)
    @Column(name = "firstname")
    private String firstname;
    @Basic(optional = false)
    @Column(name = "lastname")
    private String lastname;
    @Basic(optional = false)
    @Column(name = "phoneno1")
    private String phoneno1;
    @Basic(optional = false)
    @Column(name = "phoneno2")
    private String phoneno2;

    public EmployeeDetails() {
    }

    public EmployeeDetails(Integer eid) {
        this.eid = eid;
    }

    public EmployeeDetails(Integer eid, String firstname, String lastname, String phoneno1, String phoneno2) {
        this.eid = eid;
        this.firstname = firstname;
        this.lastname = lastname;
        this.phoneno1 = phoneno1;
        this.phoneno2 = phoneno2;
    }

    public Integer getEid() {
        return eid;
    }

    public void setEid(Integer eid) {
        Integer oldEid = this.eid;
        this.eid = eid;
        changeSupport.firePropertyChange("eid", oldEid, eid);
    }

    public String getFirstname() {
        return firstname;
    }

    public void setFirstname(String firstname) {
        String oldFirstname = this.firstname;
        this.firstname = firstname;
        changeSupport.firePropertyChange("firstname", oldFirstname, firstname);
    }

    public String getLastname() {
        return lastname;
    }

    public void setLastname(String lastname) {
        String oldLastname = this.lastname;
        this.lastname = lastname;
        changeSupport.firePropertyChange("lastname", oldLastname, lastname);
    }

    public String getPhoneno1() {
        return phoneno1;
    }

    public void setPhoneno1(String phoneno1) {
        String oldPhoneno1 = this.phoneno1;
        this.phoneno1 = phoneno1;
        changeSupport.firePropertyChange("phoneno1", oldPhoneno1, phoneno1);
    }

    public String getPhoneno2() {
        return phoneno2;
    }

    public void setPhoneno2(String phoneno2) {
        String oldPhoneno2 = this.phoneno2;
        this.phoneno2 = phoneno2;
        changeSupport.firePropertyChange("phoneno2", oldPhoneno2, phoneno2);
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (eid != null ? eid.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof EmployeeDetails)) {
            return false;
        }
        EmployeeDetails other = (EmployeeDetails) object;
        if ((this.eid == null && other.eid != null) || (this.eid != null && !this.eid.equals(other.eid))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "bus.management.EmployeeDetails[ eid=" + eid + " ]";
    }

    public void addPropertyChangeListener(PropertyChangeListener listener) {
        changeSupport.addPropertyChangeListener(listener);
    }

    public void removePropertyChangeListener(PropertyChangeListener listener) {
        changeSupport.removePropertyChangeListener(listener);
    }
    
}
