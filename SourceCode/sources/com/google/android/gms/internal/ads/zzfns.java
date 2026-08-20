package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.exoplayer2.metadata.icy.IcyHeaders;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.HashMap;
import java.util.Map;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzfns {
    private final HashMap zza;
    private final zzfny zzb;

    private zzfns() {
        HashMap hashMap = new HashMap();
        this.zza = hashMap;
        this.zzb = new zzfny(com.google.android.gms.ads.internal.zzt.zzB());
        hashMap.put("new_csi", IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE);
    }

    public static zzfns zzb(String str) {
        zzfns zzfnsVar = new zzfns();
        zzfnsVar.zza.put("action", str);
        return zzfnsVar;
    }

    public static zzfns zzc(String str) {
        zzfns zzfnsVar = new zzfns();
        zzfnsVar.zza.put("request_id", str);
        return zzfnsVar;
    }

    public final zzfns zza(String str, String str2) {
        this.zza.put(str, str2);
        return this;
    }

    public final zzfns zzd(String str) {
        this.zzb.zzb(str);
        return this;
    }

    public final zzfns zze(String str, String str2) {
        this.zzb.zzc(str, str2);
        return this;
    }

    public final zzfns zzf(zzfil zzfilVar) {
        this.zza.put("aai", zzfilVar.zzx);
        return this;
    }

    public final zzfns zzg(zzfio zzfioVar) {
        if (!TextUtils.isEmpty(zzfioVar.zzb)) {
            this.zza.put("gqi", zzfioVar.zzb);
        }
        return this;
    }

    public final zzfns zzh(zzfix zzfixVar, zzchb zzchbVar) {
        zzfiw zzfiwVar = zzfixVar.zzb;
        zzg(zzfiwVar.zzb);
        if (!zzfiwVar.zza.isEmpty()) {
            switch (((zzfil) zzfiwVar.zza.get(0)).zzb) {
                case 1:
                    this.zza.put(FirebaseAnalytics.Param.AD_FORMAT, "banner");
                    break;
                case 2:
                    this.zza.put(FirebaseAnalytics.Param.AD_FORMAT, "interstitial");
                    break;
                case 3:
                    this.zza.put(FirebaseAnalytics.Param.AD_FORMAT, "native_express");
                    break;
                case 4:
                    this.zza.put(FirebaseAnalytics.Param.AD_FORMAT, "native_advanced");
                    break;
                case 5:
                    this.zza.put(FirebaseAnalytics.Param.AD_FORMAT, "rewarded");
                    break;
                case 6:
                    this.zza.put(FirebaseAnalytics.Param.AD_FORMAT, "app_open_ad");
                    if (zzchbVar != null) {
                        this.zza.put("as", true != zzchbVar.zzj() ? "0" : IcyHeaders.REQUEST_HEADER_ENABLE_METADATA_VALUE);
                        break;
                    }
                    break;
                default:
                    this.zza.put(FirebaseAnalytics.Param.AD_FORMAT, "unknown");
                    break;
            }
        }
        return this;
    }

    public final zzfns zzi(Bundle bundle) {
        if (bundle.containsKey("cnt")) {
            this.zza.put("network_coarse", Integer.toString(bundle.getInt("cnt")));
        }
        if (bundle.containsKey("gnt")) {
            this.zza.put("network_fine", Integer.toString(bundle.getInt("gnt")));
        }
        return this;
    }

    public final Map zzj() {
        HashMap hashMap = new HashMap(this.zza);
        for (zzfnx zzfnxVar : this.zzb.zza()) {
            hashMap.put(zzfnxVar.zza, zzfnxVar.zzb);
        }
        return hashMap;
    }
}
