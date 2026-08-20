package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.util.Base64;
import android.view.MotionEvent;
import android.view.View;
import com.appnext.base.a.c.d;
import com.appnext.base.b.f;
import com.appodeal.ads.modules.common.internal.Constants;
import com.google.android.exoplayer2.PlaybackException;
import java.util.HashMap;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzftm implements zzfsc {
    private final Object zza;
    private final zzftn zzb;
    private final zzfty zzc;
    private final zzfrz zzd;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzftm(Object obj, zzftn zzftnVar, zzfty zzftyVar, zzfrz zzfrzVar) {
        this.zza = obj;
        this.zzb = zzftnVar;
        this.zzc = zzftyVar;
        this.zzd = zzfrzVar;
    }

    private static String zzi(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        zzanr zza = zzans.zza();
        zza.zzc(5);
        zza.zza(zzgwv.zzv(bArr));
        return Base64.encodeToString(((zzans) zza.zzak()).zzaw(), 11);
    }

    private final synchronized byte[] zzj(Map map, Map map2) {
        long currentTimeMillis = System.currentTimeMillis();
        try {
        } catch (Exception e2) {
            this.zzd.zzc(PlaybackException.ERROR_CODE_IO_CLEARTEXT_NOT_PERMITTED, System.currentTimeMillis() - currentTimeMillis, e2);
            return null;
        }
        return (byte[]) this.zza.getClass().getDeclaredMethod("xss", Map.class, Map.class).invoke(this.zza, null, map2);
    }

    @Override // com.google.android.gms.internal.ads.zzfsc
    public final synchronized String zza(Context context, String str, String str2, View view, Activity activity) {
        Map zza;
        zza = this.zzc.zza();
        zza.put(f.TAG, "c");
        zza.put("ctx", context);
        zza.put("cs", str2);
        zza.put("aid", null);
        zza.put("view", view);
        zza.put("act", activity);
        return zzi(zzj(null, zza));
    }

    @Override // com.google.android.gms.internal.ads.zzfsc
    public final synchronized String zzb(Context context, String str, View view, Activity activity) {
        Map zzc;
        zzc = this.zzc.zzc();
        zzc.put(f.TAG, "v");
        zzc.put("ctx", context);
        zzc.put("aid", null);
        zzc.put("view", view);
        zzc.put("act", activity);
        return zzi(zzj(null, zzc));
    }

    @Override // com.google.android.gms.internal.ads.zzfsc
    public final synchronized String zzc(Context context, String str) {
        Map zzb;
        zzb = this.zzc.zzb();
        zzb.put(f.TAG, "q");
        zzb.put("ctx", context);
        zzb.put("aid", null);
        return zzi(zzj(null, zzb));
    }

    @Override // com.google.android.gms.internal.ads.zzfsc
    public final synchronized void zzd(String str, MotionEvent motionEvent) throws zzftw {
        try {
            long currentTimeMillis = System.currentTimeMillis();
            HashMap hashMap = new HashMap();
            hashMap.put(d.COLUMN_TYPE, new Throwable());
            hashMap.put("aid", null);
            hashMap.put("evt", motionEvent);
            this.zza.getClass().getDeclaredMethod("he", Map.class).invoke(this.zza, hashMap);
            this.zzd.zzd(3003, System.currentTimeMillis() - currentTimeMillis);
        } catch (Exception e2) {
            throw new zzftw(2005, e2);
        }
    }

    public final synchronized int zze() throws zzftw {
        try {
        } catch (Exception e2) {
            throw new zzftw(2006, e2);
        }
        return ((Integer) this.zza.getClass().getDeclaredMethod("lcs", new Class[0]).invoke(this.zza, new Object[0])).intValue();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final zzftn zzf() {
        return this.zzb;
    }

    public final synchronized void zzg() throws zzftw {
        try {
            long currentTimeMillis = System.currentTimeMillis();
            this.zza.getClass().getDeclaredMethod("close", new Class[0]).invoke(this.zza, new Object[0]);
            this.zzd.zzd(3001, System.currentTimeMillis() - currentTimeMillis);
        } catch (Exception e2) {
            throw new zzftw(2003, e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final synchronized boolean zzh() throws zzftw {
        try {
        } catch (Exception e2) {
            throw new zzftw(2001, e2);
        }
        return ((Boolean) this.zza.getClass().getDeclaredMethod(Constants.INIT, new Class[0]).invoke(this.zza, new Object[0])).booleanValue();
    }
}
