package com.appsgeyser.multiTabApp.deviceidparser;
/* loaded from: classes2.dex */
public class DeviceIdParameters implements Cloneable {
    private String _advid;
    private String _aid;
    LimitAdTrackingEnabledStates _limitAdTrackingEnabled;

    public DeviceIdParameters() {
        this._advid = null;
        this._aid = null;
        this._limitAdTrackingEnabled = null;
    }

    public DeviceIdParameters(String str, String str2, String str3, LimitAdTrackingEnabledStates limitAdTrackingEnabledStates) {
        this._advid = str2;
        this._aid = str3;
        this._limitAdTrackingEnabled = limitAdTrackingEnabledStates;
    }

    public boolean isEmpty() {
        return this._aid == null && this._advid == null && this._limitAdTrackingEnabled == null;
    }

    public void clear() {
        this._advid = null;
        this._aid = null;
        this._limitAdTrackingEnabled = null;
    }

    public String getAdvid() {
        return this._advid;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setAdvid(String str) {
        this._advid = str;
    }

    public String getAid() {
        return this._aid;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setAid(String str) {
        this._aid = str;
    }

    public LimitAdTrackingEnabledStates getLimitAdTrackingEnabled() {
        return this._limitAdTrackingEnabled;
    }

    public void setLimitAdTrackingEnabled(LimitAdTrackingEnabledStates limitAdTrackingEnabledStates) {
        this._limitAdTrackingEnabled = limitAdTrackingEnabledStates;
    }

    protected Object clone() throws CloneNotSupportedException {
        return super.clone();
    }
}
