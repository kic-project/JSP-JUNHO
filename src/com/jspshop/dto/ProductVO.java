package com.jspshop.dto;

import java.sql.Timestamp;

public class ProductVO {
  private int pseq;//상품번호
  private String name;//상품명
  private String kind;//상품종류
  private int price1;//원가
  private int price2;//판매가
  private int price3;//마진
  private String content;
  private String image;
  private String useyn;
  private String bestyn;
  private Timestamp indate;//등록일

  public int getPseq() {
    return pseq;
  }

  public void setPseq(int pseq) {
    this.pseq = pseq;
  }
  public String getName() {
    return name;
  }
  public void setName(String name) {
    this.name = name;
  }
  public String getKind() {
    return kind;
  }
  public void setKind(String kind) {
    this.kind = kind;
  }
  public int getPrice1() {
    return price1;
  }
  public void setPrice1(int price1) {
    this.price1 = price1;
  }
  public int getPrice2() {
    return price2;
  }
  public void setPrice2(int price2) {
    this.price2 = price2;
  }
  public int getPrice3() {
    return price3;
  }
  public void setPrice3(int price3) {
    this.price3 = price3;
  }
  public String getContent() {
    return content;
  }
  public void setContent(String content) {
    this.content = content;
  }
  public String getImage() {
    return image;
  }
  public void setImage(String image) {
    this.image = image;
  }
  public String getUseyn() {
    return useyn;
  }
  public void setUseyn(String useyn) {
    this.useyn = useyn;
  }
  public String getBestyn() {
    return bestyn;
  }
  public void setBestyn(String bestyn) {
    this.bestyn = bestyn;
  }
  public Timestamp getIndate() {
    return indate;
  }  
  public void setIndate(Timestamp indate) {    
    this.indate = indate;
  }  
}
