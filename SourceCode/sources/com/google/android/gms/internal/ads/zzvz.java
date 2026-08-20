package com.google.android.gms.internal.ads;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public abstract class zzvz {
    private zzvy zza;
    private zzwh zzb;

    public void zzh() {
        this.zza = null;
        this.zzb = null;
    }

    public void zzi(zzk zzkVar) {
        throw null;
    }

    public boolean zzl() {
        throw null;
    }

    public abstract zzwa zzn(zzjz[] zzjzVarArr, zzug zzugVar, zzsh zzshVar, zzcn zzcnVar) throws zzha;

    public abstract void zzo(Object obj);

    /* JADX INFO: Access modifiers changed from: protected */
    public final zzwh zzp() {
        zzwh zzwhVar = this.zzb;
        zzdd.zzb(zzwhVar);
        return zzwhVar;
    }

    public final void zzq(zzvy zzvyVar, zzwh zzwhVar) {
        this.zza = zzvyVar;
        this.zzb = zzwhVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void zzr() {
        zzvy zzvyVar = this.zza;
        if (zzvyVar != null) {
            zzvyVar.zzj();
        }
    }
}
