package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.HashSet;
import java.util.concurrent.Executor;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzfcr implements zzhep {
    public static zzezp zza(Context context, zzcgl zzcglVar, zzcgm zzcgmVar, Object obj, zzfah zzfahVar, zzfbx zzfbxVar, zzhej zzhejVar, zzhej zzhejVar2, zzhej zzhejVar3, zzhej zzhejVar4, zzhej zzhejVar5, zzhej zzhejVar6, zzhej zzhejVar7, zzhej zzhejVar8, zzhej zzhejVar9, Executor executor, zzfow zzfowVar, zzdzh zzdzhVar) {
        HashSet hashSet = new HashSet();
        hashSet.add((zzfbq) obj);
        hashSet.add(zzfahVar);
        hashSet.add(zzfbxVar);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzfg)).booleanValue()) {
            hashSet.add((zzezm) zzhejVar.zzb());
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzfh)).booleanValue()) {
            hashSet.add((zzezm) zzhejVar2.zzb());
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzfi)).booleanValue()) {
            hashSet.add((zzezm) zzhejVar3.zzb());
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzfj)).booleanValue()) {
            hashSet.add((zzezm) zzhejVar4.zzb());
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzfn)).booleanValue()) {
            hashSet.add((zzezm) zzhejVar6.zzb());
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzfo)).booleanValue()) {
            hashSet.add((zzezm) zzhejVar7.zzb());
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzcv)).booleanValue()) {
            hashSet.add((zzezm) zzhejVar9.zzb());
        }
        return new zzezp(context, executor, hashSet, zzfowVar, zzdzhVar);
    }

    @Override // com.google.android.gms.internal.ads.zzhfc
    public final /* bridge */ /* synthetic */ Object zzb() {
        throw null;
    }
}
