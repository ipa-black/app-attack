package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import java.util.concurrent.Executor;
import javax.annotation.Nullable;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public abstract class zzfdr implements zzesr {
    protected final zzcpj zza;
    private final Context zzb;
    private final Executor zzc;
    private final zzfeh zzd;
    private final zzfga zze;
    private final zzchu zzf;
    private final ViewGroup zzg;
    private final zzfoy zzh;
    private final zzfje zzi;
    @Nullable
    private zzgfb zzj;

    /* JADX INFO: Access modifiers changed from: protected */
    public zzfdr(Context context, Executor executor, zzcpj zzcpjVar, zzfga zzfgaVar, zzfeh zzfehVar, zzfje zzfjeVar, zzchu zzchuVar) {
        this.zzb = context;
        this.zzc = executor;
        this.zza = zzcpjVar;
        this.zze = zzfgaVar;
        this.zzd = zzfehVar;
        this.zzi = zzfjeVar;
        this.zzf = zzchuVar;
        this.zzg = new FrameLayout(context);
        this.zzh = zzcpjVar.zzz();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final synchronized zzddv zzm(zzffy zzffyVar) {
        zzfdq zzfdqVar = (zzfdq) zzffyVar;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzhr)).booleanValue()) {
            zzcyi zzcyiVar = new zzcyi(this.zzg);
            zzddx zzddxVar = new zzddx();
            zzddxVar.zzc(this.zzb);
            zzddxVar.zzf(zzfdqVar.zza);
            zzddz zzg = zzddxVar.zzg();
            zzdjy zzdjyVar = new zzdjy();
            zzdjyVar.zzc(this.zzd, this.zzc);
            zzdjyVar.zzl(this.zzd, this.zzc);
            return zzc(zzcyiVar, zzg, zzdjyVar.zzn());
        }
        zzfeh zzi = zzfeh.zzi(this.zzd);
        zzdjy zzdjyVar2 = new zzdjy();
        zzdjyVar2.zzb(zzi, this.zzc);
        zzdjyVar2.zzg(zzi, this.zzc);
        zzdjyVar2.zzh(zzi, this.zzc);
        zzdjyVar2.zzi(zzi, this.zzc);
        zzdjyVar2.zzc(zzi, this.zzc);
        zzdjyVar2.zzl(zzi, this.zzc);
        zzdjyVar2.zzm(zzi);
        zzcyi zzcyiVar2 = new zzcyi(this.zzg);
        zzddx zzddxVar2 = new zzddx();
        zzddxVar2.zzc(this.zzb);
        zzddxVar2.zzf(zzfdqVar.zza);
        return zzc(zzcyiVar2, zzddxVar2.zzg(), zzdjyVar2.zzn());
    }

    @Override // com.google.android.gms.internal.ads.zzesr
    public final boolean zza() {
        zzgfb zzgfbVar = this.zzj;
        return (zzgfbVar == null || zzgfbVar.isDone()) ? false : true;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0045 A[Catch: all -> 0x00f4, TRY_LEAVE, TryCatch #0 {, blocks: (B:3:0x0001, B:5:0x0011, B:9:0x0026, B:14:0x0045, B:17:0x0056, B:21:0x005c, B:23:0x006c, B:25:0x0074, B:27:0x0089, B:29:0x00a2, B:31:0x00a6, B:32:0x00af, B:12:0x003e), top: B:38:0x0001 }] */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0056 A[Catch: all -> 0x00f4, TRY_ENTER, TRY_LEAVE, TryCatch #0 {, blocks: (B:3:0x0001, B:5:0x0011, B:9:0x0026, B:14:0x0045, B:17:0x0056, B:21:0x005c, B:23:0x006c, B:25:0x0074, B:27:0x0089, B:29:0x00a2, B:31:0x00a6, B:32:0x00af, B:12:0x003e), top: B:38:0x0001 }] */
    @Override // com.google.android.gms.internal.ads.zzesr
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized boolean zzb(com.google.android.gms.ads.internal.client.zzl r8, java.lang.String r9, com.google.android.gms.internal.ads.zzesp r10, com.google.android.gms.internal.ads.zzesq r11) throws android.os.RemoteException {
        /*
            Method dump skipped, instructions count: 247
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzfdr.zzb(com.google.android.gms.ads.internal.client.zzl, java.lang.String, com.google.android.gms.internal.ads.zzesp, com.google.android.gms.internal.ads.zzesq):boolean");
    }

    protected abstract zzddv zzc(zzcyi zzcyiVar, zzddz zzddzVar, zzdka zzdkaVar);

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzk() {
        this.zzd.zza(zzfkg.zzd(6, null, null));
    }

    public final void zzl(com.google.android.gms.ads.internal.client.zzw zzwVar) {
        this.zzi.zzt(zzwVar);
    }
}
