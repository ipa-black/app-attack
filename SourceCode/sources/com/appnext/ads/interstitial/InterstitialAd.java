package com.appnext.ads.interstitial;

import com.appnext.core.AppnextAd;
/* loaded from: classes.dex */
public class InterstitialAd extends AppnextAd {
    private static final long serialVersionUID = 3889030223267203195L;
    private String filePath;

    /* JADX INFO: Access modifiers changed from: protected */
    public InterstitialAd(AppnextAd appnextAd) {
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

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.appnext.core.AppnextAd
    public void setImpressionURL(String str) {
        super.setImpressionURL(str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.appnext.core.AppnextAd
    public String getImpressionURL() {
        return super.getImpressionURL();
    }

    protected final String h() {
        return this.filePath;
    }

    protected final void b(String str) {
        this.filePath = str;
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

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.appnext.core.g
    public String getAdJSON() {
        return super.getAdJSON();
    }
}
