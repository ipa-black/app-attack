package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.pm.PackageInfo;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzaqh implements Runnable {
    final /* synthetic */ int zza;
    final /* synthetic */ zzaqj zzb;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzaqh(zzaqj zzaqjVar, int i, boolean z) {
        this.zzb = zzaqjVar;
        this.zza = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzanf zzanfVar;
        zzaqj zzaqjVar = this.zzb;
        int i = this.zza;
        if (i > 0) {
            try {
                Thread.sleep(i * 1000);
            } catch (InterruptedException unused) {
            }
        }
        try {
            PackageInfo packageInfo = zzaqjVar.zza.getPackageManager().getPackageInfo(zzaqjVar.zza.getPackageName(), 0);
            Context context = zzaqjVar.zza;
            zzanfVar = zzfsh.zza(context, context.getPackageName(), Integer.toString(packageInfo.versionCode));
        } catch (Throwable unused2) {
            zzanfVar = null;
        }
        this.zzb.zzm = zzanfVar;
        if (this.zza < 4) {
            if (zzanfVar != null && zzanfVar.zzaj() && !zzanfVar.zzh().equals("0000000000000000000000000000000000000000000000000000000000000000") && zzanfVar.zzak() && zzanfVar.zzf().zze() && zzanfVar.zzf().zza() != -2) {
                return;
            }
            this.zzb.zzo(this.zza + 1, true);
        }
    }
}
