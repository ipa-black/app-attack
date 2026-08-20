package com.appsgeyser.sdk.deviceidparser;
/* loaded from: classes2.dex */
public class DeviceIdParameters implements Cloneable {
    private String aId;
    private String advId;
    private LimitAdTrackingEnabledStates limitAdTrackingEnabledStates;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DeviceIdParameters() {
        this.advId = null;
        this.aId = null;
        this.limitAdTrackingEnabledStates = null;
    }

    public DeviceIdParameters(String str, String str2, String str3, LimitAdTrackingEnabledStates limitAdTrackingEnabledStates) {
        this.advId = str2;
        this.aId = str3;
        this.limitAdTrackingEnabledStates = limitAdTrackingEnabledStates;
    }

    public boolean isEmpty() {
        return this.aId == null && this.advId == null && this.limitAdTrackingEnabledStates == null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void clear() {
        this.advId = null;
        this.aId = null;
        this.limitAdTrackingEnabledStates = null;
    }

    public String getAdvId() {
        return this.advId;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setAdvId(String str) {
        this.advId = str;
    }

    public String getaId() {
        return this.aId;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setaId(String str) {
        this.aId = str;
    }

    public LimitAdTrackingEnabledStates getLimitAdTrackingEnabled() {
        return this.limitAdTrackingEnabledStates;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setLimitAdTrackingEnabled(LimitAdTrackingEnabledStates limitAdTrackingEnabledStates) {
        this.limitAdTrackingEnabledStates = limitAdTrackingEnabledStates;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Object clone() throws CloneNotSupportedException {
        return super.clone();
    }
}
