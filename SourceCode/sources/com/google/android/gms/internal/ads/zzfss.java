package com.google.android.gms.internal.ads;

import android.content.Context;
import android.util.Base64;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.tasks.OnFailureListener;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import java.nio.ByteBuffer;
import java.util.UUID;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzfss {
    private final Context zza;
    private final Executor zzb;
    private final zzfrz zzc;
    private final zzfsb zzd;
    private final zzfsr zze;
    private final zzfsr zzf;
    private Task zzg;
    private Task zzh;

    zzfss(Context context, Executor executor, zzfrz zzfrzVar, zzfsb zzfsbVar, zzfsp zzfspVar, zzfsq zzfsqVar) {
        this.zza = context;
        this.zzb = executor;
        this.zzc = zzfrzVar;
        this.zzd = zzfsbVar;
        this.zze = zzfspVar;
        this.zzf = zzfsqVar;
    }

    public static zzfss zze(Context context, Executor executor, zzfrz zzfrzVar, zzfsb zzfsbVar) {
        final zzfss zzfssVar = new zzfss(context, executor, zzfrzVar, zzfsbVar, new zzfsp(), new zzfsq());
        if (zzfssVar.zzd.zzd()) {
            zzfssVar.zzg = zzfssVar.zzh(new Callable() { // from class: com.google.android.gms.internal.ads.zzfsm
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return zzfss.this.zzc();
                }
            });
        } else {
            zzfssVar.zzg = Tasks.forResult(zzfssVar.zze.zza());
        }
        zzfssVar.zzh = zzfssVar.zzh(new Callable() { // from class: com.google.android.gms.internal.ads.zzfsn
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return zzfss.this.zzd();
            }
        });
        return zzfssVar;
    }

    private static zzanf zzg(Task task, zzanf zzanfVar) {
        return !task.isSuccessful() ? zzanfVar : (zzanf) task.getResult();
    }

    private final Task zzh(Callable callable) {
        return Tasks.call(this.zzb, callable).addOnFailureListener(this.zzb, new OnFailureListener() { // from class: com.google.android.gms.internal.ads.zzfso
            @Override // com.google.android.gms.tasks.OnFailureListener
            public final void onFailure(Exception exc) {
                zzfss.this.zzf(exc);
            }
        });
    }

    public final zzanf zza() {
        return zzg(this.zzg, this.zze.zza());
    }

    public final zzanf zzb() {
        return zzg(this.zzh, this.zzf.zza());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ zzanf zzc() throws Exception {
        Context context = this.zza;
        zzaml zza = zzanf.zza();
        AdvertisingIdClient.Info advertisingIdInfo = AdvertisingIdClient.getAdvertisingIdInfo(context);
        String id = advertisingIdInfo.getId();
        if (id != null && id.matches("^[a-fA-F0-9]{8}-([a-fA-F0-9]{4}-){3}[a-fA-F0-9]{12}$")) {
            UUID fromString = UUID.fromString(id);
            byte[] bArr = new byte[16];
            ByteBuffer wrap = ByteBuffer.wrap(bArr);
            wrap.putLong(fromString.getMostSignificantBits());
            wrap.putLong(fromString.getLeastSignificantBits());
            id = Base64.encodeToString(bArr, 11);
        }
        if (id != null) {
            zza.zzs(id);
            zza.zzr(advertisingIdInfo.isLimitAdTrackingEnabled());
            zza.zzab(6);
        }
        return (zzanf) zza.zzak();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ zzanf zzd() throws Exception {
        Context context = this.zza;
        return zzfsh.zza(context, context.getPackageName(), Integer.toString(context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzf(Exception exc) {
        if (exc instanceof InterruptedException) {
            Thread.currentThread().interrupt();
        }
        this.zzc.zzc(2025, -1L, exc);
    }
}
