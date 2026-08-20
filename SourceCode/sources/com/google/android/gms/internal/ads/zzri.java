package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.Looper;
import java.util.ArrayList;
import java.util.HashSet;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public abstract class zzri implements zzsj {
    private final ArrayList zza = new ArrayList(1);
    private final HashSet zzb = new HashSet(1);
    private final zzsq zzc = new zzsq();
    private final zzpi zzd = new zzpi();
    private Looper zze;
    private zzcn zzf;
    private zzmz zzg;

    @Override // com.google.android.gms.internal.ads.zzsj
    public /* synthetic */ zzcn zzL() {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final zzmz zzb() {
        zzmz zzmzVar = this.zzg;
        zzdd.zzb(zzmzVar);
        return zzmzVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final zzpi zzc(zzsh zzshVar) {
        return this.zzd.zza(0, zzshVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final zzpi zzd(int i, zzsh zzshVar) {
        return this.zzd.zza(i, zzshVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final zzsq zze(zzsh zzshVar) {
        return this.zzc.zza(0, zzshVar, 0L);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final zzsq zzf(int i, zzsh zzshVar, long j) {
        return this.zzc.zza(i, zzshVar, 0L);
    }

    @Override // com.google.android.gms.internal.ads.zzsj
    public final void zzi(zzsi zzsiVar) {
        boolean isEmpty = this.zzb.isEmpty();
        this.zzb.remove(zzsiVar);
        if ((!isEmpty) && this.zzb.isEmpty()) {
            zzj();
        }
    }

    protected void zzj() {
    }

    @Override // com.google.android.gms.internal.ads.zzsj
    public final void zzk(zzsi zzsiVar) {
        this.zze.getClass();
        boolean isEmpty = this.zzb.isEmpty();
        this.zzb.add(zzsiVar);
        if (isEmpty) {
            zzl();
        }
    }

    protected void zzl() {
    }

    @Override // com.google.android.gms.internal.ads.zzsj
    public final void zzm(zzsi zzsiVar, zzfz zzfzVar, zzmz zzmzVar) {
        Looper myLooper = Looper.myLooper();
        Looper looper = this.zze;
        boolean z = true;
        if (looper != null && looper != myLooper) {
            z = false;
        }
        zzdd.zzd(z);
        this.zzg = zzmzVar;
        zzcn zzcnVar = this.zzf;
        this.zza.add(zzsiVar);
        if (this.zze == null) {
            this.zze = myLooper;
            this.zzb.add(zzsiVar);
            zzn(zzfzVar);
        } else if (zzcnVar != null) {
            zzk(zzsiVar);
            zzsiVar.zza(this, zzcnVar);
        }
    }

    protected abstract void zzn(zzfz zzfzVar);

    /* JADX INFO: Access modifiers changed from: protected */
    public final void zzo(zzcn zzcnVar) {
        this.zzf = zzcnVar;
        ArrayList arrayList = this.zza;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            ((zzsi) arrayList.get(i)).zza(this, zzcnVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzsj
    public final void zzp(zzsi zzsiVar) {
        this.zza.remove(zzsiVar);
        if (this.zza.isEmpty()) {
            this.zze = null;
            this.zzf = null;
            this.zzg = null;
            this.zzb.clear();
            zzq();
            return;
        }
        zzi(zzsiVar);
    }

    protected abstract void zzq();

    @Override // com.google.android.gms.internal.ads.zzsj
    public final void zzr(zzpj zzpjVar) {
        this.zzd.zzc(zzpjVar);
    }

    @Override // com.google.android.gms.internal.ads.zzsj
    public final void zzs(zzsr zzsrVar) {
        this.zzc.zzm(zzsrVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final boolean zzt() {
        return !this.zzb.isEmpty();
    }

    @Override // com.google.android.gms.internal.ads.zzsj
    public /* synthetic */ boolean zzu() {
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzsj
    public final void zzg(Handler handler, zzpj zzpjVar) {
        zzpjVar.getClass();
        this.zzd.zzb(handler, zzpjVar);
    }

    @Override // com.google.android.gms.internal.ads.zzsj
    public final void zzh(Handler handler, zzsr zzsrVar) {
        zzsrVar.getClass();
        this.zzc.zzb(handler, zzsrVar);
    }
}
