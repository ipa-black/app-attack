package com.google.android.gms.internal.ads;

import android.net.Uri;
/* compiled from: com.google.android.gms:play-services-ads-lite@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzbvh extends zzcht {
    private final zzbvg zza;

    public zzbvh(zzbvg zzbvgVar, String str) {
        super(str);
        this.zza = zzbvgVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcht, com.google.android.gms.internal.ads.zzchg
    public final boolean zza(String str) {
        zzcho.zze("LeibnizHttpUrlPinger pinging URL: ".concat(String.valueOf(str)));
        if ("oda".equals(Uri.parse(str).getScheme())) {
            return true;
        }
        zzcho.zze("URL does not match oda:// scheme, falling back on HttpUrlPinger");
        return super.zza(str);
    }
}
