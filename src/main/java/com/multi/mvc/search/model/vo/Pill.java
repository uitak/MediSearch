package com.multi.mvc.search.model.vo;

public class Pill {
	
	private int pillNo;
	private String itemSeq;
	private String itemName;
	private String entpName;
	private String useMethodQesitm;
	private String itemImage;
	private String efcyQesitm;
	private String atpnWarmQesitm;
	private String atpnQesitm;
	private String intrcQesitm;
	private String seQesitm;
	private String depositMethodQesitm;
	public Pill() {
		super();
	}
	public Pill(int pillNo, String itemSeq, String itemName, String entpName, String useMethodQesitm, String itemImage,
			String efcyQesitm, String atpnWarmQesitm, String atpnQesitm, String intrcQesitm, String seQesitm,
			String depositMethodQesitm) {
		super();
		this.pillNo = pillNo;
		this.itemSeq = itemSeq;
		this.itemName = itemName;
		this.entpName = entpName;
		this.useMethodQesitm = useMethodQesitm;
		this.itemImage = itemImage;
		this.efcyQesitm = efcyQesitm;
		this.atpnWarmQesitm = atpnWarmQesitm;
		this.atpnQesitm = atpnQesitm;
		this.intrcQesitm = intrcQesitm;
		this.seQesitm = seQesitm;
		this.depositMethodQesitm = depositMethodQesitm;
	}
	public int getPillNo() {
		return pillNo;
	}
	public void setPillNo(int pillNo) {
		this.pillNo = pillNo;
	}
	public String getItemSeq() {
		return itemSeq;
	}
	public void setItemSeq(String itemSeq) {
		this.itemSeq = itemSeq;
	}
	public String getItemName() {
		return itemName;
	}
	public void setItemName(String itemName) {
		this.itemName = itemName;
	}
	public String getEntpName() {
		return entpName;
	}
	public void setEntpName(String entpName) {
		this.entpName = entpName;
	}
	public String getUseMethodQesitm() {
		return useMethodQesitm;
	}
	public void setUseMethodQesitm(String useMethodQesitm) {
		this.useMethodQesitm = useMethodQesitm;
	}
	public String getItemImage() {
		return itemImage;
	}
	public void setItemImage(String itemImage) {
		this.itemImage = itemImage;
	}
	public String getEfcyQesitm() {
		return efcyQesitm;
	}
	public void setEfcyQesitm(String efcyQesitm) {
		this.efcyQesitm = efcyQesitm;
	}
	public String getAtpnWarmQesitm() {
		return atpnWarmQesitm;
	}
	public void setAtpnWarmQesitm(String atpnWarmQesitm) {
		this.atpnWarmQesitm = atpnWarmQesitm;
	}
	public String getAtpnQesitm() {
		return atpnQesitm;
	}
	public void setAtpnQesitm(String atpnQesitm) {
		this.atpnQesitm = atpnQesitm;
	}
	public String getIntrcQesitm() {
		return intrcQesitm;
	}
	public void setIntrcQesitm(String intrcQesitm) {
		this.intrcQesitm = intrcQesitm;
	}
	public String getSeQesitm() {
		return seQesitm;
	}
	public void setSeQesitm(String seQesitm) {
		this.seQesitm = seQesitm;
	}
	public String getDepositMethodQesitm() {
		return depositMethodQesitm;
	}
	public void setDepositMethodQesitm(String depositMethodQesitm) {
		this.depositMethodQesitm = depositMethodQesitm;
	}
	@Override
	public String toString() {
		return "Pill [pillNo=" + pillNo + ", itemSeq=" + itemSeq + ", itemName=" + itemName + ", entpName=" + entpName
				+ ", useMethodQesitm=" + useMethodQesitm + ", itemImage=" + itemImage + ", efcyQesitm=" + efcyQesitm
				+ ", atpnWarmQesitm=" + atpnWarmQesitm + ", atpnQesitm=" + atpnQesitm + ", intrcQesitm=" + intrcQesitm
				+ ", seQesitm=" + seQesitm + ", depositMethodQesitm=" + depositMethodQesitm + "]";
	}
	
	
	
	
	
}
