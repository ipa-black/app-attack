package com.google.android.gms.internal.ads;

import android.net.Uri;
import com.google.android.gms.common.util.Clock;
import com.google.firebase.messaging.Constants;
import java.io.IOException;
import java.nio.ByteBuffer;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzcmg extends zzcma implements zzbai {
    private String zzd;
    private final zzcjw zze;
    private boolean zzf;
    private final zzcmf zzg;
    private final zzcll zzh;
    private ByteBuffer zzi;
    private boolean zzj;
    private final Object zzk;
    private final String zzl;
    private final int zzm;
    private boolean zzn;

    public zzcmg(zzcjx zzcjxVar, zzcjw zzcjwVar) {
        super(zzcjxVar);
        String str;
        this.zze = zzcjwVar;
        this.zzg = new zzcmf();
        this.zzh = new zzcll();
        this.zzk = new Object();
        if (zzcjxVar != null) {
            str = zzcjxVar.zzt();
        } else {
            str = "";
        }
        this.zzl = str;
        this.zzm = zzcjxVar != null ? zzcjxVar.zzh() : 0;
    }

    protected static final String zzt(String str) {
        return "cache:".concat(String.valueOf(zzchh.zze(str)));
    }

    private final void zzu() {
        int zza = (int) this.zzg.zza();
        int zza2 = (int) this.zzh.zza(this.zzi);
        int position = this.zzi.position();
        int round = Math.round(zza2 * (position / zza));
        boolean z = round > 0;
        int zzs = zzcjo.zzs();
        int zzu = zzcjo.zzu();
        String str = this.zzd;
        zzf(str, zzt(str), position, zza, round, zza2, z, zzs, zzu);
    }

    @Override // com.google.android.gms.internal.ads.zzcma
    public final void zzb() {
        this.zzf = true;
    }

    public final String zzi() {
        return this.zzd;
    }

    @Override // com.google.android.gms.internal.ads.zzbai
    public final /* bridge */ /* synthetic */ void zzj(Object obj, int i) {
    }

    @Override // com.google.android.gms.internal.ads.zzbai
    public final /* bridge */ /* synthetic */ void zzk(Object obj, zzazv zzazvVar) {
        this.zzg.zzb((zzazx) obj);
    }

    public final ByteBuffer zzl() {
        synchronized (this.zzk) {
            ByteBuffer byteBuffer = this.zzi;
            if (byteBuffer != null && !this.zzj) {
                byteBuffer.flip();
                this.zzj = true;
            }
            this.zzf = true;
        }
        return this.zzi;
    }

    public final boolean zzm() {
        return this.zzn;
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:56:? -> B:44:0x0140). Please submit an issue!!! */
    @Override // com.google.android.gms.internal.ads.zzcma
    public final boolean zzq(String str) {
        String str2;
        this.zzd = str;
        String zzt = zzt(str);
        String str3 = Constants.IPC_BUNDLE_KEY_SEND_ERROR;
        try {
            String str4 = this.zzb;
            zzcjw zzcjwVar = this.zze;
            zzazt zzazxVar = new zzazx(str4, null, this, zzcjwVar.zzd, zzcjwVar.zzf, true, null);
            if (this.zze.zzj) {
                zzazxVar = new zzckt(this.zza, zzazxVar, this.zzl, this.zzm, null, null, null);
            }
            zzazxVar.zzb(new zzazv(Uri.parse(str), null, 0L, 0L, -1L, null, 0));
            zzcjx zzcjxVar = (zzcjx) this.zzc.get();
            if (zzcjxVar != null) {
                zzcjxVar.zzv(zzt, this);
            }
            Clock zzB = com.google.android.gms.ads.internal.zzt.zzB();
            long currentTimeMillis = zzB.currentTimeMillis();
            long longValue = ((Long) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzw)).longValue();
            long longValue2 = ((Long) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzv)).longValue();
            this.zzi = ByteBuffer.allocate(this.zze.zzc);
            int i = 8192;
            byte[] bArr = new byte[8192];
            long j = currentTimeMillis;
            while (true) {
                int zza = zzazxVar.zza(bArr, 0, Math.min(this.zzi.remaining(), i));
                zzazt zzaztVar = zzazxVar;
                if (zza != -1) {
                    synchronized (this.zzk) {
                        try {
                            if (this.zzf) {
                                str2 = str3;
                            } else {
                                str2 = str3;
                                str3 = null;
                                try {
                                    this.zzi.put(bArr, 0, zza);
                                } catch (Throwable th) {
                                    th = th;
                                    throw th;
                                }
                            }
                            try {
                                if (this.zzi.remaining() <= 0) {
                                    zzu();
                                    return true;
                                }
                                try {
                                    if (!this.zzf) {
                                        long currentTimeMillis2 = zzB.currentTimeMillis();
                                        if (currentTimeMillis2 - j >= longValue) {
                                            zzu();
                                            j = currentTimeMillis2;
                                        }
                                        if (currentTimeMillis2 - currentTimeMillis > 1000 * longValue2) {
                                            throw new IOException("Timeout exceeded. Limit: " + longValue2 + " sec");
                                        }
                                        zzazxVar = zzaztVar;
                                        str3 = str2;
                                        i = 8192;
                                    } else {
                                        throw new IOException("Precache abort at " + this.zzi.limit() + " bytes");
                                    }
                                } catch (Exception e2) {
                                    e = e2;
                                    String str5 = e.getClass().getCanonicalName() + ":" + e.getMessage();
                                    com.google.android.gms.ads.internal.util.zze.zzj("Failed to preload url " + str + " Exception: " + str5);
                                    zzc(str, zzt, str3, str5);
                                    return false;
                                }
                            } catch (Exception e3) {
                                e = e3;
                                str3 = str2;
                                String str52 = e.getClass().getCanonicalName() + ":" + e.getMessage();
                                com.google.android.gms.ads.internal.util.zze.zzj("Failed to preload url " + str + " Exception: " + str52);
                                zzc(str, zzt, str3, str52);
                                return false;
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            throw th;
                        }
                    }
                } else {
                    this.zzn = true;
                    zze(str, zzt, (int) this.zzh.zza(this.zzi));
                    return true;
                }
            }
        } catch (Exception e4) {
            e = e4;
            str2 = str3;
        }
    }
}
