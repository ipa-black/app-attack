package com.google.android.gms.internal.ads;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.json.JSONException;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzekv {
    private final String zzc;
    private zzfio zzd = null;
    private zzfil zze = null;
    private com.google.android.gms.ads.internal.client.zzu zzf = null;
    private final Map zzb = Collections.synchronizedMap(new HashMap());
    private final List zza = Collections.synchronizedList(new ArrayList());

    public zzekv(String str) {
        this.zzc = str;
    }

    private final void zzh(zzfil zzfilVar, long j, com.google.android.gms.ads.internal.client.zze zzeVar, boolean z) {
        String str = zzfilVar.zzx;
        if (this.zzb.containsKey(str)) {
            if (this.zze == null) {
                this.zze = zzfilVar;
            }
            com.google.android.gms.ads.internal.client.zzu zzuVar = (com.google.android.gms.ads.internal.client.zzu) this.zzb.get(str);
            zzuVar.zzb = j;
            zzuVar.zzc = zzeVar;
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzgk)).booleanValue() && z) {
                this.zzf = zzuVar;
            }
        }
    }

    public final com.google.android.gms.ads.internal.client.zzu zza() {
        return this.zzf;
    }

    public final zzdeg zzb() {
        return new zzdeg(this.zze, "", this, this.zzd, this.zzc);
    }

    public final List zzc() {
        return this.zza;
    }

    public final void zzd(zzfil zzfilVar) {
        String str;
        String str2;
        String str3;
        String str4;
        String str5 = zzfilVar.zzx;
        if (this.zzb.containsKey(str5)) {
            return;
        }
        Bundle bundle = new Bundle();
        Iterator<String> keys = zzfilVar.zzw.keys();
        while (keys.hasNext()) {
            String next = keys.next();
            try {
                bundle.putString(next, zzfilVar.zzw.getString(next));
            } catch (JSONException unused) {
            }
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzgj)).booleanValue()) {
            String str6 = zzfilVar.zzG;
            String str7 = zzfilVar.zzH;
            str = str6;
            str2 = str7;
            str3 = zzfilVar.zzI;
            str4 = zzfilVar.zzJ;
        } else {
            str = "";
            str2 = str;
            str3 = str2;
            str4 = str3;
        }
        com.google.android.gms.ads.internal.client.zzu zzuVar = new com.google.android.gms.ads.internal.client.zzu(zzfilVar.zzF, 0L, null, bundle, str, str2, str3, str4);
        this.zza.add(zzuVar);
        this.zzb.put(str5, zzuVar);
    }

    public final void zze(zzfil zzfilVar, long j, com.google.android.gms.ads.internal.client.zze zzeVar) {
        zzh(zzfilVar, j, zzeVar, false);
    }

    public final void zzf(zzfil zzfilVar, long j, com.google.android.gms.ads.internal.client.zze zzeVar) {
        zzh(zzfilVar, j, null, true);
    }

    public final void zzg(zzfio zzfioVar) {
        this.zzd = zzfioVar;
    }
}
