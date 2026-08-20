package com.google.android.gms.internal.ads;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzakc implements Runnable {
    final /* synthetic */ String zza;
    final /* synthetic */ long zzb;
    final /* synthetic */ zzake zzc;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzakc(zzake zzakeVar, String str, long j) {
        this.zzc = zzakeVar;
        this.zza = str;
        this.zzb = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzakp zzakpVar;
        zzakp zzakpVar2;
        zzakpVar = this.zzc.zza;
        zzakpVar.zza(this.zza, this.zzb);
        zzake zzakeVar = this.zzc;
        zzakpVar2 = zzakeVar.zza;
        zzakpVar2.zzb(zzakeVar.toString());
    }
}
