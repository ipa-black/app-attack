package com.google.android.gms.internal.ads;

import android.view.View;
import com.appnext.base.a.c.d;
import java.util.HashMap;
import java.util.Map;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzaqd implements zzfty {
    private final zzfsb zza;
    private final zzfss zzb;
    private final zzaqr zzc;
    private final zzaqc zzd;
    private final zzapn zze;
    private final zzaqt zzf;
    private final zzaqk zzg;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzaqd(zzfsb zzfsbVar, zzfss zzfssVar, zzaqr zzaqrVar, zzaqc zzaqcVar, zzapn zzapnVar, zzaqt zzaqtVar, zzaqk zzaqkVar) {
        this.zza = zzfsbVar;
        this.zzb = zzfssVar;
        this.zzc = zzaqrVar;
        this.zzd = zzaqcVar;
        this.zze = zzapnVar;
        this.zzf = zzaqtVar;
        this.zzg = zzaqkVar;
    }

    private final Map zze() {
        HashMap hashMap = new HashMap();
        zzanf zzb = this.zzb.zzb();
        hashMap.put("v", this.zza.zzb());
        hashMap.put("gms", Boolean.valueOf(this.zza.zzc()));
        hashMap.put("int", zzb.zzh());
        hashMap.put("up", Boolean.valueOf(this.zzd.zza()));
        hashMap.put(d.COLUMN_TYPE, new Throwable());
        zzaqk zzaqkVar = this.zzg;
        if (zzaqkVar != null) {
            hashMap.put("tcq", Long.valueOf(zzaqkVar.zzc()));
            hashMap.put("tpq", Long.valueOf(this.zzg.zzg()));
            hashMap.put("tcv", Long.valueOf(this.zzg.zzd()));
            hashMap.put("tpv", Long.valueOf(this.zzg.zzh()));
            hashMap.put("tchv", Long.valueOf(this.zzg.zzb()));
            hashMap.put("tphv", Long.valueOf(this.zzg.zzf()));
            hashMap.put("tcc", Long.valueOf(this.zzg.zza()));
            hashMap.put("tpc", Long.valueOf(this.zzg.zze()));
        }
        return hashMap;
    }

    @Override // com.google.android.gms.internal.ads.zzfty
    public final Map zza() {
        Map zze = zze();
        zze.put("lts", Long.valueOf(this.zzc.zza()));
        return zze;
    }

    @Override // com.google.android.gms.internal.ads.zzfty
    public final Map zzb() {
        Map zze = zze();
        zzanf zza = this.zzb.zza();
        zze.put("gai", Boolean.valueOf(this.zza.zzd()));
        zze.put("did", zza.zzg());
        zze.put("dst", Integer.valueOf(zza.zzal() - 1));
        zze.put("doo", Boolean.valueOf(zza.zzai()));
        zzapn zzapnVar = this.zze;
        if (zzapnVar != null) {
            zze.put("nt", Long.valueOf(zzapnVar.zza()));
        }
        zzaqt zzaqtVar = this.zzf;
        if (zzaqtVar != null) {
            zze.put("vs", Long.valueOf(zzaqtVar.zzc()));
            zze.put("vf", Long.valueOf(this.zzf.zzb()));
        }
        return zze;
    }

    @Override // com.google.android.gms.internal.ads.zzfty
    public final Map zzc() {
        return zze();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzd(View view) {
        this.zzc.zzd(view);
    }
}
