package com.amazon.device.ads;
/* loaded from: classes.dex */
public enum DTBAdNetwork {
    GOOGLE_AD_MANAGER(NetworkType.ADSERVER),
    MOPUB_AD_SERVER(NetworkType.ADSERVER),
    ADMOB(NetworkType.MEDIATION),
    AD_GENERATION(NetworkType.ADSERVER),
    IRON_SOURCE(NetworkType.MEDIATION),
    MAX(NetworkType.MEDIATION),
    NIMBUS(NetworkType.ADSERVER),
    OTHER(NetworkType.OTHER);
    
    NetworkType networkType;

    DTBAdNetwork(NetworkType networkType) {
        this.networkType = networkType;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean isMediation() {
        return this.networkType.equals(NetworkType.MEDIATION);
    }
}
