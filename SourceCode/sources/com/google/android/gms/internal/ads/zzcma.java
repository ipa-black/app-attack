package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.common.api.Releasable;
import java.lang.ref.WeakReference;
import java.util.Map;
import javax.annotation.ParametersAreNonnullByDefault;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
@ParametersAreNonnullByDefault
/* loaded from: classes4.dex */
public abstract class zzcma implements Releasable {
    protected final Context zza;
    protected final String zzb;
    protected final WeakReference zzc;

    public zzcma(zzcjx zzcjxVar) {
        Context context = zzcjxVar.getContext();
        this.zza = context;
        this.zzb = com.google.android.gms.ads.internal.zzt.zzp().zzc(context, zzcjxVar.zzp().zza);
        this.zzc = new WeakReference(zzcjxVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* bridge */ /* synthetic */ void zza(zzcma zzcmaVar, String str, Map map) {
        zzcjx zzcjxVar = (zzcjx) zzcmaVar.zzc.get();
        if (zzcjxVar != null) {
            zzcjxVar.zzd("onPrecacheEvent", map);
        }
    }

    @Override // com.google.android.gms.common.api.Releasable
    public void release() {
    }

    public abstract void zzb();

    public final void zzc(String str, String str2, String str3, String str4) {
        zzchh.zza.post(new zzclz(this, str, str2, str3, str4));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void zzd(String str, String str2, int i) {
        zzchh.zza.post(new zzclx(this, str, str2, i));
    }

    public final void zze(String str, String str2, long j) {
        zzchh.zza.post(new zzcly(this, str, str2, j));
    }

    public final void zzf(String str, String str2, int i, int i2, long j, long j2, boolean z, int i3, int i4) {
        zzchh.zza.post(new zzclw(this, str, str2, i, i2, j, j2, z, i3, i4));
    }

    public final void zzg(String str, String str2, long j, long j2, boolean z, long j3, long j4, long j5, int i, int i2) {
        zzchh.zza.post(new zzclv(this, str, str2, j, j2, j3, j4, j5, z, i, i2));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void zzh(int i) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void zzn(int i) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void zzo(int i) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void zzp(int i) {
    }

    public abstract boolean zzq(String str);

    public boolean zzr(String str, String[] strArr) {
        return zzq(str);
    }

    public boolean zzs(String str, String[] strArr, zzcls zzclsVar) {
        return zzq(str);
    }
}
