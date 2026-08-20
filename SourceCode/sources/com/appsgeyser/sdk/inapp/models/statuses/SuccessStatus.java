package com.appsgeyser.sdk.inapp.models.statuses;

import com.appsgeyser.sdk.inapp.models.BillingProduct;
import com.appsgeyser.sdk.inapp.models.configdata.ConfigInappData;
/* loaded from: classes2.dex */
public class SuccessStatus implements Status {
    private ConfigInappData configData;
    private boolean isFeatureActive;
    private boolean isFeaturePurchased;
    private BillingProduct product;

    public SuccessStatus(BillingProduct billingProduct, ConfigInappData configInappData, boolean z, boolean z2) {
        this.configData = configInappData;
        this.product = billingProduct;
        this.isFeatureActive = z;
        this.isFeaturePurchased = z2;
    }

    public ConfigInappData getConfigData() {
        return this.configData;
    }

    public void setConfigData(ConfigInappData configInappData) {
        this.configData = configInappData;
    }

    public BillingProduct getProduct() {
        return this.product;
    }

    public void setProduct(BillingProduct billingProduct) {
        this.product = billingProduct;
    }

    public boolean isFeatureActive() {
        return this.isFeatureActive;
    }

    public void setFeatureActive(boolean z) {
        this.isFeatureActive = z;
    }

    public boolean isFeaturePurchased() {
        return this.isFeaturePurchased;
    }

    public void setFeaturePurchased(boolean z) {
        this.isFeaturePurchased = z;
    }
}
