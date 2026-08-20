package com.google.android.gms.internal.ads;

import java.util.AbstractMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONObject;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzbuh implements zzbsy, zzbug {
    private final zzbug zza;
    private final HashSet zzb = new HashSet();

    public zzbuh(zzbug zzbugVar) {
        this.zza = zzbugVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbsy, com.google.android.gms.internal.ads.zzbtj
    public final void zza(String str) {
        this.zza.zza(str);
    }

    @Override // com.google.android.gms.internal.ads.zzbsy, com.google.android.gms.internal.ads.zzbtj
    public final /* synthetic */ void zzb(String str, String str2) {
        zzbsx.zzc(this, str, str2);
    }

    public final void zzc() {
        Iterator it = this.zzb.iterator();
        while (it.hasNext()) {
            AbstractMap.SimpleEntry simpleEntry = (AbstractMap.SimpleEntry) it.next();
            com.google.android.gms.ads.internal.util.zze.zza("Unregistering eventhandler: ".concat(String.valueOf(((zzbqd) simpleEntry.getValue()).toString())));
            this.zza.zzr((String) simpleEntry.getKey(), (zzbqd) simpleEntry.getValue());
        }
        this.zzb.clear();
    }

    @Override // com.google.android.gms.internal.ads.zzbsw
    public final /* synthetic */ void zzd(String str, Map map) {
        zzbsx.zza(this, str, map);
    }

    @Override // com.google.android.gms.internal.ads.zzbsy, com.google.android.gms.internal.ads.zzbsw
    public final /* synthetic */ void zze(String str, JSONObject jSONObject) {
        zzbsx.zzb(this, str, jSONObject);
    }

    @Override // com.google.android.gms.internal.ads.zzbtj
    public final /* synthetic */ void zzl(String str, JSONObject jSONObject) {
        zzbsx.zzd(this, str, jSONObject);
    }

    @Override // com.google.android.gms.internal.ads.zzbug
    public final void zzq(String str, zzbqd zzbqdVar) {
        this.zza.zzq(str, zzbqdVar);
        this.zzb.add(new AbstractMap.SimpleEntry(str, zzbqdVar));
    }

    @Override // com.google.android.gms.internal.ads.zzbug
    public final void zzr(String str, zzbqd zzbqdVar) {
        this.zza.zzr(str, zzbqdVar);
        this.zzb.remove(new AbstractMap.SimpleEntry(str, zzbqdVar));
    }
}
