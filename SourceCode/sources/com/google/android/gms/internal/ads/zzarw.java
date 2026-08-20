package com.google.android.gms.internal.ads;

import com.google.android.exoplayer2.C;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Method;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzarw {
    protected static final String zza = "zzarw";
    private final zzaqj zzb;
    private final String zzc;
    private final String zzd;
    private final Class[] zzf;
    private volatile Method zze = null;
    private final CountDownLatch zzg = new CountDownLatch(1);

    public zzarw(zzaqj zzaqjVar, String str, String str2, Class... clsArr) {
        this.zzb = zzaqjVar;
        this.zzc = str;
        this.zzd = str2;
        this.zzf = clsArr;
        zzaqjVar.zzk().submit(new zzarv(this));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* bridge */ /* synthetic */ void zzb(zzarw zzarwVar) {
        CountDownLatch countDownLatch;
        Class loadClass;
        try {
            zzaqj zzaqjVar = zzarwVar.zzb;
            loadClass = zzaqjVar.zzi().loadClass(zzarwVar.zzc(zzaqjVar.zzu(), zzarwVar.zzc));
        } catch (zzapo | UnsupportedEncodingException | ClassNotFoundException | NoSuchMethodException unused) {
        } catch (NullPointerException unused2) {
            countDownLatch = zzarwVar.zzg;
        } catch (Throwable th) {
            zzarwVar.zzg.countDown();
            throw th;
        }
        if (loadClass == null) {
            countDownLatch = zzarwVar.zzg;
        } else {
            zzarwVar.zze = loadClass.getMethod(zzarwVar.zzc(zzarwVar.zzb.zzu(), zzarwVar.zzd), zzarwVar.zzf);
            if (zzarwVar.zze == null) {
                countDownLatch = zzarwVar.zzg;
            }
            countDownLatch = zzarwVar.zzg;
        }
        countDownLatch.countDown();
    }

    private final String zzc(byte[] bArr, String str) throws zzapo, UnsupportedEncodingException {
        return new String(this.zzb.zze().zzb(bArr, str), C.UTF8_NAME);
    }

    public final Method zza() {
        if (this.zze != null) {
            return this.zze;
        }
        try {
            if (this.zzg.await(2L, TimeUnit.SECONDS)) {
                return this.zze;
            }
            return null;
        } catch (InterruptedException unused) {
            return null;
        }
    }
}
