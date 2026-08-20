package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Binder;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzbry implements zzajx {
    private volatile zzbrl zza;
    private final Context zzb;

    public zzbry(Context context) {
        this.zzb = context;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* bridge */ /* synthetic */ void zzc(zzbry zzbryVar) {
        if (zzbryVar.zza == null) {
            return;
        }
        zzbryVar.zza.disconnect();
        Binder.flushPendingCommands();
    }

    @Override // com.google.android.gms.internal.ads.zzajx
    public final zzaka zza(zzake zzakeVar) throws zzakn {
        Parcelable.Creator<zzbrm> creator = zzbrm.CREATOR;
        Map zzl = zzakeVar.zzl();
        int size = zzl.size();
        String[] strArr = new String[size];
        String[] strArr2 = new String[size];
        int i = 0;
        int i2 = 0;
        for (Map.Entry entry : zzl.entrySet()) {
            strArr[i2] = (String) entry.getKey();
            strArr2[i2] = (String) entry.getValue();
            i2++;
        }
        zzbrm zzbrmVar = new zzbrm(zzakeVar.zzk(), strArr, strArr2);
        long elapsedRealtime = com.google.android.gms.ads.internal.zzt.zzB().elapsedRealtime();
        try {
            zzcig zzcigVar = new zzcig();
            this.zza = new zzbrl(this.zzb, com.google.android.gms.ads.internal.zzt.zzt().zzb(), new zzbrw(this, zzcigVar), new zzbrx(this, zzcigVar));
            this.zza.checkAvailabilityAndConnect();
            zzgfb zzo = zzger.zzo(zzger.zzn(zzcigVar, new zzbru(this, zzbrmVar), zzcib.zza), ((Integer) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzdW)).intValue(), TimeUnit.MILLISECONDS, zzcib.zzd);
            zzo.zzc(new zzbrv(this), zzcib.zza);
            ParcelFileDescriptor parcelFileDescriptor = (ParcelFileDescriptor) zzo.get();
            long elapsedRealtime2 = com.google.android.gms.ads.internal.zzt.zzB().elapsedRealtime();
            com.google.android.gms.ads.internal.util.zze.zza("Http assets remote cache took " + (elapsedRealtime2 - elapsedRealtime) + "ms");
            zzbro zzbroVar = (zzbro) new zzcbz(parcelFileDescriptor).zza(zzbro.CREATOR);
            if (zzbroVar == null) {
                return null;
            }
            if (zzbroVar.zza) {
                throw new zzakn(zzbroVar.zzb);
            }
            if (zzbroVar.zze.length != zzbroVar.zzf.length) {
                return null;
            }
            HashMap hashMap = new HashMap();
            while (true) {
                String[] strArr3 = zzbroVar.zze;
                if (i < strArr3.length) {
                    hashMap.put(strArr3[i], zzbroVar.zzf[i]);
                    i++;
                } else {
                    return new zzaka(zzbroVar.zzc, zzbroVar.zzd, hashMap, zzbroVar.zzg, zzbroVar.zzh);
                }
            }
        } catch (InterruptedException | ExecutionException unused) {
            long elapsedRealtime3 = com.google.android.gms.ads.internal.zzt.zzB().elapsedRealtime();
            com.google.android.gms.ads.internal.util.zze.zza("Http assets remote cache took " + (elapsedRealtime3 - elapsedRealtime) + "ms");
            return null;
        } catch (Throwable th) {
            long elapsedRealtime4 = com.google.android.gms.ads.internal.zzt.zzB().elapsedRealtime();
            com.google.android.gms.ads.internal.util.zze.zza("Http assets remote cache took " + (elapsedRealtime4 - elapsedRealtime) + "ms");
            throw th;
        }
    }
}
