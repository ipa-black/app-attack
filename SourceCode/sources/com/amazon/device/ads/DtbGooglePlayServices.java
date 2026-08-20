package com.amazon.device.ads;
/* loaded from: classes.dex */
class DtbGooglePlayServices {
    private static final String LOG_TAG = "DtbGooglePlayServices";

    public AdvertisingInfo getAdvertisingIdentifierInfo() {
        AdvertisingInfo advertisingInfo;
        if (!isGooglePlayServicesAvailable()) {
            DtbLog.debug(LOG_TAG, "The Google Play Services Advertising Identifier feature is not available.");
            return AdvertisingInfo.createNotAvailable();
        }
        boolean isAdvertisingClassAvailable = isAdvertisingClassAvailable();
        if (isAdvertisingClassAvailable) {
            advertisingInfo = DtbGooglePlayServicesAdapter.newAdapter().getAdvertisingIdentifierInfo();
            if (advertisingInfo.getAdvertisingIdentifier() != null && !advertisingInfo.getAdvertisingIdentifier().isEmpty()) {
                return advertisingInfo;
            }
        } else {
            advertisingInfo = null;
        }
        AdvertisingInfo advertisingIdentifierInfo = DtbFireOSServiceAdapter.newAdapter().getAdvertisingIdentifierInfo();
        if (advertisingIdentifierInfo.getAdvertisingIdentifier() != null && !advertisingIdentifierInfo.getAdvertisingIdentifier().isEmpty()) {
            setGooglePlayServicesAvailable(advertisingIdentifierInfo.isGooglePlayServicesAvailable());
            return advertisingIdentifierInfo;
        }
        DtbLog.debug(LOG_TAG, "The Google Play Services Advertising Identifier feature is not available.");
        if (!isAdvertisingClassAvailable || (advertisingInfo != null && !advertisingInfo.isGooglePlayServicesAvailable())) {
            setGooglePlayServicesAvailable(false);
        }
        return AdvertisingInfo.createNotAvailable();
    }

    private boolean isGooglePlayServicesAvailable() {
        return !DtbSharedPreferences.getInstance().isGooglePlayServicesUnavailable();
    }

    private void setGooglePlayServicesAvailable(boolean z) {
        DtbSharedPreferences.getInstance().setGooglePlayServicesUnavailable(!z);
    }

    private boolean isAdvertisingClassAvailable() {
        return DtbCommonUtils.isClassAvailable("com.google.android.gms.ads.identifier.AdvertisingIdClient");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class AdvertisingInfo {
        private String advertisingIdentifier;
        private boolean gpsAvailable = true;
        private Boolean limitAdTrackingEnabled;

        /* JADX INFO: Access modifiers changed from: package-private */
        public static AdvertisingInfo createNotAvailable() {
            return new AdvertisingInfo().setGooglePlayServicesAvailable(false);
        }

        boolean isGooglePlayServicesAvailable() {
            return this.gpsAvailable;
        }

        private AdvertisingInfo setGooglePlayServicesAvailable(boolean z) {
            this.gpsAvailable = z;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public String getAdvertisingIdentifier() {
            return this.advertisingIdentifier;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public AdvertisingInfo setAdvertisingIdentifier(String str) {
            this.advertisingIdentifier = str;
            return this;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public boolean hasAdvertisingIdentifier() {
            return getAdvertisingIdentifier() != null;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public Boolean isLimitAdTrackingEnabled() {
            return this.limitAdTrackingEnabled;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public AdvertisingInfo setLimitAdTrackingEnabled(Boolean bool) {
            this.limitAdTrackingEnabled = bool;
            return this;
        }
    }
}
