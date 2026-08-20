package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;
import com.google.android.exoplayer2.PlaybackException;
import dalvik.system.DexClassLoader;
import java.io.File;
import java.security.GeneralSecurityException;
import java.util.HashMap;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzftx {
    private static final HashMap zza = new HashMap();
    private final Context zzb;
    private final zzfty zzc;
    private final zzfrz zzd;
    private final zzfru zze;
    private zzftm zzf;
    private final Object zzg = new Object();

    public zzftx(Context context, zzfty zzftyVar, zzfrz zzfrzVar, zzfru zzfruVar) {
        this.zzb = context;
        this.zzc = zzftyVar;
        this.zzd = zzfrzVar;
        this.zze = zzfruVar;
    }

    private final synchronized Class zzd(zzftn zzftnVar) throws zzftw {
        String zzk = zzftnVar.zza().zzk();
        HashMap hashMap = zza;
        Class cls = (Class) hashMap.get(zzk);
        if (cls != null) {
            return cls;
        }
        try {
            if (this.zze.zza(zzftnVar.zzc())) {
                try {
                    File zzb = zzftnVar.zzb();
                    if (!zzb.exists()) {
                        zzb.mkdirs();
                    }
                    Class loadClass = new DexClassLoader(zzftnVar.zzc().getAbsolutePath(), zzb.getAbsolutePath(), null, this.zzb.getClassLoader()).loadClass("com.google.ccc.abuse.droidguard.DroidGuard");
                    hashMap.put(zzk, loadClass);
                    return loadClass;
                } catch (ClassNotFoundException | IllegalArgumentException | SecurityException e2) {
                    throw new zzftw(2008, e2);
                }
            }
            throw new zzftw(2026, "VM did not pass signature verification");
        } catch (GeneralSecurityException e3) {
            throw new zzftw(2026, e3);
        }
    }

    public final zzfsc zza() {
        zzftm zzftmVar;
        synchronized (this.zzg) {
            zzftmVar = this.zzf;
        }
        return zzftmVar;
    }

    public final zzftn zzb() {
        synchronized (this.zzg) {
            zzftm zzftmVar = this.zzf;
            if (zzftmVar != null) {
                return zzftmVar.zzf();
            }
            return null;
        }
    }

    public final boolean zzc(zzftn zzftnVar) {
        long currentTimeMillis = System.currentTimeMillis();
        try {
            try {
                zzftm zzftmVar = new zzftm(zzd(zzftnVar).getDeclaredConstructor(Context.class, String.class, byte[].class, Object.class, Bundle.class, Integer.TYPE).newInstance(this.zzb, "msa-r", zzftnVar.zze(), null, new Bundle(), 2), zzftnVar, this.zzc, this.zzd);
                if (!zzftmVar.zzh()) {
                    throw new zzftw(4000, "init failed");
                }
                int zze = zzftmVar.zze();
                if (zze == 0) {
                    synchronized (this.zzg) {
                        zzftm zzftmVar2 = this.zzf;
                        if (zzftmVar2 != null) {
                            try {
                                zzftmVar2.zzg();
                            } catch (zzftw e2) {
                                this.zzd.zzc(e2.zza(), -1L, e2);
                            }
                        }
                        this.zzf = zzftmVar;
                    }
                    this.zzd.zzd(3000, System.currentTimeMillis() - currentTimeMillis);
                    return true;
                }
                throw new zzftw((int) PlaybackException.ERROR_CODE_DECODER_INIT_FAILED, "ci: " + zze);
            } catch (Exception e3) {
                throw new zzftw(2004, e3);
            }
        } catch (zzftw e4) {
            this.zzd.zzc(e4.zza(), System.currentTimeMillis() - currentTimeMillis, e4);
            return false;
        } catch (Exception e5) {
            this.zzd.zzc(4010, System.currentTimeMillis() - currentTimeMillis, e5);
            return false;
        }
    }
}
