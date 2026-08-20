package com.appsgeyser.sdk.inapp.models;
/* loaded from: classes2.dex */
public class BillingProduct {
    private String description;
    private String id;
    private boolean isPurchased;
    private String price;
    private String title;

    public BillingProduct(String str, String str2, String str3, String str4, boolean z) {
        this.price = str;
        this.id = str2;
        this.title = str3;
        this.description = str4;
        this.isPurchased = z;
    }

    public String getPrice() {
        return this.price;
    }

    public void setPrice(String str) {
        this.price = str;
    }

    public String getId() {
        return this.id;
    }

    public void setId(String str) {
        this.id = str;
    }

    public String getTitle() {
        return this.title;
    }

    public void setTitle(String str) {
        this.title = str;
    }

    public String getDescription() {
        return this.description;
    }

    public void setDescription(String str) {
        this.description = str;
    }

    public boolean isPurchased() {
        return this.isPurchased;
    }

    public void setPurchased(boolean z) {
        this.isPurchased = z;
    }

    public String toString() {
        return "BillingProduct{price='" + this.price + "', id='" + this.id + "', title='" + this.title + "', description='" + this.description + "', isPurchased=" + this.isPurchased + '}';
    }
}
