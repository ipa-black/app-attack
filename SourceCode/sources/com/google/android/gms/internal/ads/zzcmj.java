package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import com.google.android.gms.common.util.Clock;
import com.google.firebase.messaging.Constants;
import java.io.IOException;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzcmj extends zzcma implements zzcjn {
    public static final /* synthetic */ int zzd = 0;
    private zzcjo zze;
    private String zzf;
    private boolean zzg;
    private boolean zzh;
    private zzcls zzi;
    private long zzj;
    private long zzk;

    public zzcmj(zzcjx zzcjxVar, zzcjw zzcjwVar) {
        super(zzcjxVar);
        zzcjo zzclfVar;
        Context context = zzcjxVar.getContext();
        if (zzcjwVar.zzm) {
            zzclfVar = new zzcnb(context, zzcjwVar, (zzcjx) this.zzc.get());
        } else {
            zzclfVar = new zzclf(context, zzcjwVar, (zzcjx) this.zzc.get());
        }
        this.zze = zzclfVar;
        zzclfVar.zzI(this);
    }

    protected static final String zzu(String str) {
        return "cache:".concat(String.valueOf(zzchh.zze(str)));
    }

    private static String zzw(String str, Exception exc) {
        String canonicalName = exc.getClass().getCanonicalName();
        String message = exc.getMessage();
        return str + "/" + canonicalName + ":" + message;
    }

    private final void zzx(long j) {
        com.google.android.gms.ads.internal.util.zzs.zza.postDelayed(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcmh
            @Override // java.lang.Runnable
            public final void run() {
                zzcmj.this.zzt();
            }
        }, j);
    }

    @Override // com.google.android.gms.internal.ads.zzcma, com.google.android.gms.common.api.Releasable
    public final void release() {
        zzcjo zzcjoVar = this.zze;
        if (zzcjoVar != null) {
            zzcjoVar.zzI(null);
            this.zze.zzE();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcjn
    public final void zzC(int i, int i2) {
    }

    @Override // com.google.android.gms.internal.ads.zzcma
    public final void zzb() {
        synchronized (this) {
            this.zzg = true;
            notify();
            release();
        }
        String str = this.zzf;
        if (str != null) {
            zzc(this.zzf, zzu(str), "externalAbort", "Programmatic precache abort.");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcma
    public final void zzh(int i) {
        this.zze.zzG(i);
    }

    @Override // com.google.android.gms.internal.ads.zzcjn
    public final void zzi(final boolean z, final long j) {
        final zzcjx zzcjxVar = (zzcjx) this.zzc.get();
        if (zzcjxVar != null) {
            zzcib.zze.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcmi
                @Override // java.lang.Runnable
                public final void run() {
                    zzcjx zzcjxVar2 = zzcjx.this;
                    boolean z2 = z;
                    long j2 = j;
                    int i = zzcmj.zzd;
                    zzcjxVar2.zzx(z2, j2);
                }
            });
        }
    }

    public final zzcjo zzj() {
        synchronized (this) {
            this.zzh = true;
            notify();
        }
        this.zze.zzI(null);
        zzcjo zzcjoVar = this.zze;
        this.zze = null;
        return zzcjoVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcjn
    public final void zzk(String str, Exception exc) {
        com.google.android.gms.ads.internal.util.zze.zzk("Precache error", exc);
        com.google.android.gms.ads.internal.zzt.zzo().zzt(exc, "VideoStreamExoPlayerCache.onError");
    }

    @Override // com.google.android.gms.internal.ads.zzcjn
    public final void zzl(String str, Exception exc) {
        com.google.android.gms.ads.internal.util.zze.zzk("Precache exception", exc);
        com.google.android.gms.ads.internal.zzt.zzo().zzt(exc, "VideoStreamExoPlayerCache.onException");
    }

    @Override // com.google.android.gms.internal.ads.zzcjn
    public final void zzm(int i) {
    }

    @Override // com.google.android.gms.internal.ads.zzcma
    public final void zzn(int i) {
        this.zze.zzH(i);
    }

    @Override // com.google.android.gms.internal.ads.zzcma
    public final void zzo(int i) {
        this.zze.zzJ(i);
    }

    @Override // com.google.android.gms.internal.ads.zzcma
    public final void zzp(int i) {
        this.zze.zzK(i);
    }

    @Override // com.google.android.gms.internal.ads.zzcma
    public final boolean zzq(String str) {
        return zzr(str, new String[]{str});
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v22 */
    /* JADX WARN: Type inference failed for: r1v36 */
    /* JADX WARN: Type inference failed for: r1v37 */
    /* JADX WARN: Type inference failed for: r5v1, types: [com.google.android.gms.internal.ads.zzcma] */
    /* JADX WARN: Type inference failed for: r5v10, types: [int] */
    /* JADX WARN: Type inference failed for: r5v13 */
    /* JADX WARN: Type inference failed for: r5v14 */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v3 */
    /* JADX WARN: Type inference failed for: r5v9, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v18 */
    @Override // com.google.android.gms.internal.ads.zzcma
    public final boolean zzr(String str, String[] strArr) {
        String str2;
        String str3;
        zzcmj zzcmjVar;
        long j;
        long j2;
        long j3;
        ?? r1;
        long j4;
        String str4;
        long j5;
        long j6;
        zzcmj zzcmjVar2 = this;
        String str5 = str;
        zzcmjVar2.zzf = str5;
        String zzu = zzu(str);
        String str6 = Constants.IPC_BUNDLE_KEY_SEND_ERROR;
        try {
            Uri[] uriArr = new Uri[strArr.length];
            for (int i = 0; i < strArr.length; i++) {
                uriArr[i] = Uri.parse(strArr[i]);
            }
            zzcmjVar2.zze.zzC(uriArr, zzcmjVar2.zzb);
            zzcjx zzcjxVar = (zzcjx) zzcmjVar2.zzc.get();
            if (zzcjxVar != null) {
                zzcjxVar.zzv(zzu, zzcmjVar2);
            }
            Clock zzB = com.google.android.gms.ads.internal.zzt.zzB();
            long currentTimeMillis = zzB.currentTimeMillis();
            long longValue = ((Long) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzw)).longValue();
            long longValue2 = ((Long) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzv)).longValue() * 1000;
            long intValue = ((Integer) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzu)).intValue();
            boolean booleanValue = ((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzbF)).booleanValue();
            long j7 = -1;
            while (true) {
                synchronized (this) {
                    try {
                        if (zzB.currentTimeMillis() - currentTimeMillis > longValue2) {
                            throw new IOException("Timeout reached. Limit: " + longValue2 + " ms");
                        } else if (!zzcmjVar2.zzg) {
                            if (zzcmjVar2.zzh) {
                                break;
                            } else if (zzcmjVar2.zze.zzR()) {
                                long zzz = zzcmjVar2.zze.zzz();
                                if (zzz > 0) {
                                    long zzv = zzcmjVar2.zze.zzv();
                                    if (zzv != j7) {
                                        try {
                                            j = intValue;
                                            long j8 = zzz;
                                            j2 = longValue2;
                                            j4 = longValue;
                                            str4 = zzu;
                                            try {
                                                zzg(str, zzu, zzv, j8, zzv > 0, booleanValue ? zzcmjVar2.zze.zzA() : -1L, booleanValue ? zzcmjVar2.zze.zzx() : -1L, booleanValue ? zzcmjVar2.zze.zzB() : -1L, zzcjo.zzs(), zzcjo.zzu());
                                                j6 = zzv;
                                                j5 = zzz;
                                                str2 = j8;
                                            } catch (Throwable th) {
                                                th = th;
                                                zzcmjVar = this;
                                                str2 = str;
                                                str3 = str4;
                                                try {
                                                    throw th;
                                                } catch (Exception e2) {
                                                    e = e2;
                                                    String str7 = str6;
                                                    com.google.android.gms.ads.internal.util.zze.zzj("Failed to preload url " + str2 + " Exception: " + e.getMessage());
                                                    com.google.android.gms.ads.internal.zzt.zzo().zzt(e, "VideoStreamExoPlayerCache.preload");
                                                    release();
                                                    zzcmjVar.zzc(str2, str3, str7, zzw(str7, e));
                                                    return false;
                                                }
                                            }
                                        } catch (Throwable th2) {
                                            th = th2;
                                            str4 = zzu;
                                        }
                                    } else {
                                        j = intValue;
                                        j2 = longValue2;
                                        j4 = longValue;
                                        str4 = zzu;
                                        j5 = zzz;
                                        j6 = j7;
                                        str2 = intValue;
                                    }
                                    zzcmjVar = (zzv > j5 ? 1 : (zzv == j5 ? 0 : -1));
                                    if (zzcmjVar < 0) {
                                        try {
                                            zzcmj zzcmjVar3 = this;
                                            str2 = str;
                                            str3 = str4;
                                            if (zzcmjVar3.zze.zzw() < j || zzv <= 0) {
                                                j3 = j4;
                                                r1 = j6;
                                                zzcmjVar = zzcmjVar3;
                                            }
                                        } catch (Throwable th3) {
                                            th = th3;
                                            throw th;
                                        }
                                    } else {
                                        zze(str, str4, j5);
                                    }
                                } else {
                                    j = intValue;
                                    j2 = longValue2;
                                    str2 = str5;
                                    str3 = zzu;
                                    zzcmjVar = zzcmjVar2;
                                    j3 = longValue;
                                    r1 = j7;
                                }
                                try {
                                    try {
                                        zzcmjVar.wait(j3);
                                    } catch (InterruptedException unused) {
                                        throw new IOException("Wait interrupted.");
                                    }
                                } catch (Throwable th4) {
                                    th = th4;
                                    str6 = r1;
                                    throw th;
                                }
                            } else {
                                throw new IOException("ExoPlayer was released during preloading.");
                            }
                        } else {
                            throw new IOException("Abort requested before buffering finished. ");
                        }
                    } catch (Throwable th5) {
                        th = th5;
                        str2 = str5;
                        str3 = zzu;
                        zzcmjVar = zzcmjVar2;
                    }
                }
                longValue = j3;
                zzcmjVar2 = zzcmjVar;
                str5 = str2;
                zzu = str3;
                intValue = j;
                longValue2 = j2;
                j7 = r1;
            }
            return true;
        } catch (Exception e3) {
            e = e3;
            str2 = str5;
            str3 = zzu;
            zzcmjVar = zzcmjVar2;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcma
    public final boolean zzs(String str, String[] strArr, zzcls zzclsVar) {
        this.zzf = str;
        this.zzi = zzclsVar;
        String zzu = zzu(str);
        try {
            Uri[] uriArr = new Uri[strArr.length];
            for (int i = 0; i < strArr.length; i++) {
                uriArr[i] = Uri.parse(strArr[i]);
            }
            this.zze.zzC(uriArr, this.zzb);
            zzcjx zzcjxVar = (zzcjx) this.zzc.get();
            if (zzcjxVar != null) {
                zzcjxVar.zzv(zzu, this);
            }
            this.zzj = com.google.android.gms.ads.internal.zzt.zzB().currentTimeMillis();
            this.zzk = -1L;
            zzx(0L);
            return true;
        } catch (Exception e2) {
            com.google.android.gms.ads.internal.util.zze.zzj("Failed to preload url " + str + " Exception: " + e2.getMessage());
            com.google.android.gms.ads.internal.zzt.zzo().zzt(e2, "VideoStreamExoPlayerCache.preload");
            release();
            zzc(str, zzu, Constants.IPC_BUNDLE_KEY_SEND_ERROR, zzw(Constants.IPC_BUNDLE_KEY_SEND_ERROR, e2));
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v7, types: [long] */
    /* JADX WARN: Type inference failed for: r3v11, types: [boolean] */
    /* JADX WARN: Type inference failed for: r3v13 */
    /* JADX WARN: Type inference failed for: r3v14 */
    /* JADX WARN: Type inference failed for: r3v20 */
    /* JADX WARN: Type inference failed for: r3v21 */
    /* JADX WARN: Type inference failed for: r3v22, types: [com.google.android.gms.internal.ads.zzcmj, com.google.android.gms.internal.ads.zzcma] */
    /* JADX WARN: Type inference failed for: r3v23 */
    /* JADX WARN: Type inference failed for: r3v25 */
    /* JADX WARN: Type inference failed for: r3v26, types: [com.google.android.gms.internal.ads.zzcmj] */
    /* JADX WARN: Type inference failed for: r3v31 */
    public final /* synthetic */ void zzt() {
        String str;
        zzcmj zzcmjVar;
        zzcmj zzcmjVar2;
        ?? longValue;
        long intValue;
        zzcmj zzcmjVar3;
        long j;
        long j2;
        String str2;
        long j3;
        String zzu = zzu(this.zzf);
        String str3 = Constants.IPC_BUNDLE_KEY_SEND_ERROR;
        try {
            longValue = ((Long) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzv)).longValue() * 1000;
            intValue = ((Integer) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzu)).intValue();
            zzcmjVar = ((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzbF)).booleanValue();
            try {
            } catch (Throwable th) {
                th = th;
            }
        } catch (Exception e2) {
            e = e2;
            str = zzu;
            zzcmjVar = this;
        }
        synchronized (this) {
            try {
                long currentTimeMillis = com.google.android.gms.ads.internal.zzt.zzB().currentTimeMillis();
                long j4 = this.zzj;
                if (currentTimeMillis - j4 <= longValue) {
                    try {
                        if (!this.zzg) {
                            if (!this.zzh) {
                                if (!this.zze.zzR()) {
                                    throw new IOException("ExoPlayer was released during preloading.");
                                }
                                long zzz = this.zze.zzz();
                                if (zzz > 0) {
                                    long zzv = this.zze.zzv();
                                    if (zzv != this.zzk) {
                                        try {
                                            j2 = intValue;
                                            str2 = zzu;
                                            try {
                                                zzg(this.zzf, zzu, zzv, zzz, zzv > 0, zzcmjVar != 0 ? this.zze.zzA() : -1L, zzcmjVar != 0 ? this.zze.zzx() : -1L, zzcmjVar != 0 ? this.zze.zzB() : -1L, zzcjo.zzs(), zzcjo.zzu());
                                                zzcmjVar = this;
                                                j = zzv;
                                                try {
                                                    zzcmjVar.zzk = j;
                                                    j3 = zzz;
                                                    zzcmjVar = zzcmjVar;
                                                } catch (Throwable th2) {
                                                    th = th2;
                                                    str = str2;
                                                    throw th;
                                                }
                                            } catch (Throwable th3) {
                                                th = th3;
                                                zzcmjVar = this;
                                                str = str2;
                                                throw th;
                                            }
                                        } catch (Throwable th4) {
                                            th = th4;
                                            str2 = zzu;
                                            zzcmjVar = this;
                                        }
                                    } else {
                                        j = zzv;
                                        j2 = intValue;
                                        str2 = zzu;
                                        zzcmjVar = this;
                                        j3 = zzz;
                                    }
                                    if (j >= j3) {
                                        zzcmjVar.zze(zzcmjVar.zzf, str2, j3);
                                        zzcmjVar2 = zzcmjVar;
                                    } else {
                                        int i = (zzcmjVar.zze.zzw() > j2 ? 1 : (zzcmjVar.zze.zzw() == j2 ? 0 : -1));
                                        zzcmjVar3 = zzcmjVar;
                                        if (i >= 0) {
                                            zzcmjVar3 = zzcmjVar;
                                            if (j > 0) {
                                                zzcmjVar2 = zzcmjVar;
                                            }
                                        }
                                    }
                                } else {
                                    zzcmjVar3 = this;
                                }
                                zzcmjVar3.zzx(((Long) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzw)).longValue());
                                return;
                            }
                            zzcmjVar2 = this;
                            com.google.android.gms.ads.internal.zzt.zzy().zzc(zzcmjVar2.zzi);
                        }
                        throw new IOException("Abort requested before buffering finished. ");
                    } catch (Throwable th5) {
                        th = th5;
                        str3 = longValue;
                        str = j4;
                    }
                } else {
                    str = zzu;
                    zzcmjVar = this;
                    try {
                        throw new IOException("Timeout reached. Limit: " + ((long) longValue) + " ms");
                    } catch (Throwable th6) {
                        th = th6;
                        str3 = "downloadTimeout";
                    }
                }
            } catch (Throwable th7) {
                th = th7;
                str = zzu;
                zzcmjVar = this;
            }
            try {
                throw th;
            } catch (Exception e3) {
                e = e3;
                String str4 = str3;
                com.google.android.gms.ads.internal.util.zze.zzj("Failed to preload url " + zzcmjVar.zzf + " Exception: " + e.getMessage());
                com.google.android.gms.ads.internal.zzt.zzo().zzt(e, "VideoStreamExoPlayerCache.preload");
                release();
                zzcmjVar.zzc(zzcmjVar.zzf, str, str4, zzw(str4, e));
                zzcmjVar2 = zzcmjVar;
                com.google.android.gms.ads.internal.zzt.zzy().zzc(zzcmjVar2.zzi);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcjn
    public final void zzv() {
        com.google.android.gms.ads.internal.util.zze.zzj("Precache onRenderedFirstFrame");
    }
}
