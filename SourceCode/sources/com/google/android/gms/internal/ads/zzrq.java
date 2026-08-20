package com.google.android.gms.internal.ads;

import android.os.Handler;
import java.io.IOException;
import java.util.HashMap;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public abstract class zzrq extends zzri {
    private final HashMap zza = new HashMap();
    private Handler zzb;
    private zzfz zzc;

    /* JADX INFO: Access modifiers changed from: protected */
    public final void zzA(final Object obj, zzsj zzsjVar) {
        zzdd.zzd(!this.zza.containsKey(obj));
        zzsi zzsiVar = new zzsi() { // from class: com.google.android.gms.internal.ads.zzrn
            @Override // com.google.android.gms.internal.ads.zzsi
            public final void zza(zzsj zzsjVar2, zzcn zzcnVar) {
                zzrq.this.zzz(obj, zzsjVar2, zzcnVar);
            }
        };
        zzro zzroVar = new zzro(this, obj);
        this.zza.put(obj, new zzrp(zzsjVar, zzsiVar, zzroVar));
        Handler handler = this.zzb;
        handler.getClass();
        zzsjVar.zzh(handler, zzroVar);
        Handler handler2 = this.zzb;
        handler2.getClass();
        zzsjVar.zzg(handler2, zzroVar);
        zzsjVar.zzm(zzsiVar, this.zzc, zzb());
        if (zzt()) {
            return;
        }
        zzsjVar.zzi(zzsiVar);
    }

    @Override // com.google.android.gms.internal.ads.zzri
    protected final void zzj() {
        for (zzrp zzrpVar : this.zza.values()) {
            zzrpVar.zza.zzi(zzrpVar.zzb);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzri
    protected final void zzl() {
        for (zzrp zzrpVar : this.zza.values()) {
            zzrpVar.zza.zzk(zzrpVar.zzb);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzri
    public void zzn(zzfz zzfzVar) {
        this.zzc = zzfzVar;
        this.zzb = zzen.zzD(null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.zzri
    public void zzq() {
        for (zzrp zzrpVar : this.zza.values()) {
            zzrpVar.zza.zzp(zzrpVar.zzb);
            zzrpVar.zza.zzs(zzrpVar.zzc);
            zzrpVar.zza.zzr(zzrpVar.zzc);
        }
        this.zza.clear();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int zzv(Object obj, int i) {
        return i;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public long zzw(Object obj, long j) {
        return j;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public zzsh zzx(Object obj, zzsh zzshVar) {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzsj
    public void zzy() throws IOException {
        for (zzrp zzrpVar : this.zza.values()) {
            zzrpVar.zza.zzy();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void zzz(Object obj, zzsj zzsjVar, zzcn zzcnVar);
}
