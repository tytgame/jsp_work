package ch09;

import java.util.Arrays;

public class VoteItem {
	private int listnum;
	private int itemnum;
	private String[] item;
	private int number;
	
	public VoteItem() {}
	public VoteItem(int listnum, int itemnum, String[] item, int number) {
		this.listnum = listnum;
		this.itemnum = itemnum;
		this.item = item;
		this.number = number;
	}
	
	public int getListnum() {
		return listnum;
	}

	public void setListnum(int listnum) {
		this.listnum = listnum;
	}

	public int getItemnum() {
		return itemnum;
	}

	public void setItemnum(int itemnum) {
		this.itemnum = itemnum;
	}

	public String[] getItem() {
		return item;
	}

	public void setItem(String[] item) {
		this.item = item;
	}

	public int getNumber() {
		return number;
	}

	public void setNumber(int number) {
		this.number = number;
	}

	@Override
	public String toString() {
		return "VoteItem [listnum=" + listnum + ", itemnum=" + itemnum + ", item=" + Arrays.toString(item) + ", number="
				+ number + "]";
	}
}