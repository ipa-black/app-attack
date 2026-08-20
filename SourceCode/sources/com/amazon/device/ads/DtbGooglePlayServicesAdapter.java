package com.amazon.device.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class DtbGooglePlayServicesAdapter {
    DtbGooglePlayServicesAdapter() {
    }

    public static DtbGooglePlayServicesAdapter newAdapter() {
        return new DtbGooglePlayServicesAdapter();
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x006f  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x007a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public com.amazon.device.ads.DtbGooglePlayServices.AdvertisingInfo getAdvertisingIdentifierInfo() {
        /*
            r5 = this;
            android.content.Context r0 = com.amazon.device.ads.AdRegistration.getContext()     // Catch: com.google.android.gms.common.GooglePlayServicesRepairableException -> L9 com.google.android.gms.common.GooglePlayServicesNotAvailableException -> L21 java.io.IOException -> L3d java.lang.IllegalStateException -> L55
            com.google.android.gms.ads.identifier.AdvertisingIdClient$Info r0 = com.google.android.gms.ads.identifier.AdvertisingIdClient.getAdvertisingIdInfo(r0)     // Catch: com.google.android.gms.common.GooglePlayServicesRepairableException -> L9 com.google.android.gms.common.GooglePlayServicesNotAvailableException -> L21 java.io.IOException -> L3d java.lang.IllegalStateException -> L55
            goto L6d
        L9:
            r0 = move-exception
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            java.lang.String r2 = "Retrieving the Google Play Services Advertising Identifier caused a GooglePlayServicesRepairableException."
            r1.<init>(r2)
            java.lang.String r0 = com.amazon.device.ads.DtbCommonUtils.exceptionToString(r0)
            java.lang.StringBuilder r0 = r1.append(r0)
            java.lang.String r0 = r0.toString()
            com.amazon.device.ads.DtbLog.error(r0)
            goto L6c
        L21:
            r0 = move-exception
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            java.lang.String r2 = "Retrieving the Google Play Services Advertising Identifier caused a GooglePlayServicesNotAvailableException."
            r1.<init>(r2)
            java.lang.String r0 = com.amazon.device.ads.DtbCommonUtils.exceptionToString(r0)
            java.lang.StringBuilder r0 = r1.append(r0)
            java.lang.String r0 = r0.toString()
            com.amazon.device.ads.DtbLog.error(r0)
            com.amazon.device.ads.DtbGooglePlayServices$AdvertisingInfo r0 = com.amazon.device.ads.DtbGooglePlayServices.AdvertisingInfo.createNotAvailable()
            return r0
        L3d:
            r0 = move-exception
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            java.lang.String r2 = "Retrieving the Google Play Services Advertising Identifier caused an IOException."
            r1.<init>(r2)
            java.lang.String r0 = com.amazon.device.ads.DtbCommonUtils.exceptionToString(r0)
            java.lang.StringBuilder r0 = r1.append(r0)
            java.lang.String r0 = r0.toString()
            com.amazon.device.ads.DtbLog.error(r0)
            goto L6c
        L55:
            r0 = move-exception
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            java.lang.String r2 = "Retrieving the Google Play Services  caused Illegal State Exception ( be sure the call was made from a non-background thread)."
            r1.<init>(r2)
            java.lang.String r0 = com.amazon.device.ads.DtbCommonUtils.exceptionToString(r0)
            java.lang.StringBuilder r0 = r1.append(r0)
            java.lang.String r0 = r0.toString()
            com.amazon.device.ads.DtbLog.error(r0)
        L6c:
            r0 = 0
        L6d:
            if (r0 != 0) goto L7a
            java.lang.String r0 = "The Google Play Services Advertising Identifier could not be retrieved."
            com.amazon.device.ads.DtbLog.debug(r0)
            com.amazon.device.ads.DtbGooglePlayServices$AdvertisingInfo r0 = new com.amazon.device.ads.DtbGooglePlayServices$AdvertisingInfo
            r0.<init>()
            return r0
        L7a:
            java.lang.String r1 = "The Google Play Services Advertising Identifier was successfully retrieved."
            com.amazon.device.ads.DtbLog.debug(r1)
            java.lang.String r1 = r0.getId()
            boolean r2 = r0.isLimitAdTrackingEnabled()
            java.lang.StringBuilder r3 = new java.lang.StringBuilder
            java.lang.String r4 = " Retrieved google ad id "
            r3.<init>(r4)
            java.lang.String r4 = r0.getId()
            java.lang.StringBuilder r3 = r3.append(r4)
            java.lang.String r4 = " and tracking enabled : "
            java.lang.StringBuilder r3 = r3.append(r4)
            boolean r0 = r0.isLimitAdTrackingEnabled()
            java.lang.StringBuilder r0 = r3.append(r0)
            java.lang.String r0 = r0.toString()
            com.amazon.device.ads.DtbLog.debug(r0)
            com.amazon.device.ads.DtbGooglePlayServices$AdvertisingInfo r0 = new com.amazon.device.ads.DtbGooglePlayServices$AdvertisingInfo
            r0.<init>()
            com.amazon.device.ads.DtbGooglePlayServices$AdvertisingInfo r0 = r0.setAdvertisingIdentifier(r1)
            java.lang.Boolean r1 = java.lang.Boolean.valueOf(r2)
            com.amazon.device.ads.DtbGooglePlayServices$AdvertisingInfo r0 = r0.setLimitAdTrackingEnabled(r1)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amazon.device.ads.DtbGooglePlayServicesAdapter.getAdvertisingIdentifierInfo():com.amazon.device.ads.DtbGooglePlayServices$AdvertisingInfo");
    }
}
