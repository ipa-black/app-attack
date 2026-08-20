package com.appnext.ads.fullscreen;

import com.appnext.core.AppnextAd;
/* loaded from: classes.dex */
public class FullscreenAd extends AppnextAd {
    private static final long serialVersionUID = 3889030223267203195L;
    private String filePath;

    /* JADX INFO: Access modifiers changed from: protected */
    public FullscreenAd(AppnextAd appnextAd) {
        super(appnextAd);
        this.filePath = "";
    }

    @Override // com.appnext.core.AppnextAd
    public String getAppURL() {
        return super.getAppURL();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.appnext.core.AppnextAd
    public void setAppURL(String str) {
        super.setAppURL(str);
    }

    protected final String h() {
        return this.filePath;
    }

    protected final void b(String str) {
        this.filePath = str;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.appnext.core.AppnextAd
    public String getZoneID() {
        return super.getZoneID();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.appnext.core.AppnextAd
    public String getCampaignGoal() {
        return super.getCampaignGoal();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.appnext.core.AppnextAd
    public String getButtonText() {
        return super.getButtonText();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.appnext.core.AppnextAd
    public String getCptList() {
        return super.getCptList();
    }
}
