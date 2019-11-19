package com.hziee.pojo;

import com.fasterxml.jackson.annotation.JsonFormat;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import java.util.Date;

@Table(name = "customer")
public class Customer {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;
    private String compName;//公司名字，同客户名字
    private String type;//公司类型
    private String contactName;//联系人
    private String tel;//电话
    private Integer state;//成交状态,0为流失 1为正在执行 2为处在公海中 3为成交
    private Integer empId;
    private Integer compId;
    private String serialNumber;//编号
    @JsonFormat(pattern = "yyyy-MM-dd HH:mm:ss", timezone = "GMT+8")
    private Date createTime;
    private String area;//地区
    private String compAddress;//公司地址
    private String level;//客户登记S,A,B,C
    private String credit;//客户信用度
    private String licenseNumber;//营业执照编号
    private String corporation;//法人
    private String registerMoney;//注册资金
    private String annualSale;//年营业额
    private String landTaxNumber;//地税登记号
    private String nationalTaxNumber;//国税登记号
    private String depositBank;//开户银行
    private String bankAccount;//银行账号

    @Override
    public String toString() {
        return "Customer{" +
                "id=" + id +
                ", compName='" + compName + '\'' +
                ", type='" + type + '\'' +
                ", contactName='" + contactName + '\'' +
                ", tel='" + tel + '\'' +
                ", state=" + state +
                ", empId=" + empId +
                ", compId=" + compId +
                ", serialNumber='" + serialNumber + '\'' +
                ", createTime=" + createTime +
                ", area='" + area + '\'' +
                ", compAddress='" + compAddress + '\'' +
                ", level='" + level + '\'' +
                ", credit='" + credit + '\'' +
                ", licenseNumber='" + licenseNumber + '\'' +
                ", corporation='" + corporation + '\'' +
                ", registerMoney='" + registerMoney + '\'' +
                ", annualSale='" + annualSale + '\'' +
                ", landTaxNumber='" + landTaxNumber + '\'' +
                ", nationalTaxNumber='" + nationalTaxNumber + '\'' +
                ", depositBank='" + depositBank + '\'' +
                ", bankAccount='" + bankAccount + '\'' +
                '}';
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getCompName() {
        return compName;
    }

    public void setCompName(String compName) {
        this.compName = compName;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getContactName() {
        return contactName;
    }

    public void setContactName(String contactName) {
        this.contactName = contactName;
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel;
    }

    public Integer getState() {
        return state;
    }

    public void setState(Integer state) {
        this.state = state;
    }

    public Integer getEmpId() {
        return empId;
    }

    public void setEmpId(Integer empId) {
        this.empId = empId;
    }

    public Integer getCompId() {
        return compId;
    }

    public void setCompId(Integer compId) {
        this.compId = compId;
    }

    public String getSerialNumber() {
        return serialNumber;
    }

    public void setSerialNumber(String serialNumber) {
        this.serialNumber = serialNumber;
    }

    public Date getCreateTime() {
        return createTime;
    }

    public void setCreateTime(Date createTime) {
        this.createTime = createTime;
    }

    public String getArea() {
        return area;
    }

    public void setArea(String area) {
        this.area = area;
    }

    public String getCompAddress() {
        return compAddress;
    }

    public void setCompAddress(String compAddress) {
        this.compAddress = compAddress;
    }

    public String getLevel() {
        return level;
    }

    public void setLevel(String level) {
        this.level = level;
    }

    public String getCredit() {
        return credit;
    }

    public void setCredit(String credit) {
        this.credit = credit;
    }

    public String getLicenseNumber() {
        return licenseNumber;
    }

    public void setLicenseNumber(String licenseNumber) {
        this.licenseNumber = licenseNumber;
    }

    public String getCorporation() {
        return corporation;
    }

    public void setCorporation(String corporation) {
        this.corporation = corporation;
    }

    public String getRegisterMoney() {
        return registerMoney;
    }

    public void setRegisterMoney(String registerMoney) {
        this.registerMoney = registerMoney;
    }

    public String getAnnualSale() {
        return annualSale;
    }

    public void setAnnualSale(String annualSale) {
        this.annualSale = annualSale;
    }

    public String getLandTaxNumber() {
        return landTaxNumber;
    }

    public void setLandTaxNumber(String landTaxNumber) {
        this.landTaxNumber = landTaxNumber;
    }

    public String getNationalTaxNumber() {
        return nationalTaxNumber;
    }

    public void setNationalTaxNumber(String nationalTaxNumber) {
        this.nationalTaxNumber = nationalTaxNumber;
    }

    public String getDepositBank() {
        return depositBank;
    }

    public void setDepositBank(String depositBank) {
        this.depositBank = depositBank;
    }

    public String getBankAccount() {
        return bankAccount;
    }

    public void setBankAccount(String bankAccount) {
        this.bankAccount = bankAccount;
    }
}
