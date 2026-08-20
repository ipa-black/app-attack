package com.google.android.gms.internal.ads;

import android.content.Context;
import android.net.Uri;
import com.google.android.gms.common.util.IOUtils;
import java.io.IOException;
import java.io.InputStream;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.atomic.AtomicLong;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzckt implements zzazt {
    private final zzbai zza;
    private final Context zzb;
    private final zzazt zzc;
    private final String zzd;
    private final int zze;
    private InputStream zzg;
    private boolean zzh;
    private Uri zzi;
    private volatile zzbei zzj;
    private final zzclb zzr;
    private boolean zzk = false;
    private boolean zzl = false;
    private boolean zzm = false;
    private boolean zzn = false;
    private long zzo = 0;
    private final AtomicLong zzq = new AtomicLong(-1);
    private zzgfb zzp = null;
    private final boolean zzf = ((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzbF)).booleanValue();

    public zzckt(Context context, zzazt zzaztVar, String str, int i, zzbai zzbaiVar, zzclb zzclbVar, byte[] bArr) {
        this.zzb = context;
        this.zzc = zzaztVar;
        this.zza = zzbaiVar;
        this.zzr = zzclbVar;
        this.zzd = str;
        this.zze = i;
    }

    private final void zzl(zzazv zzazvVar) {
        zzbai zzbaiVar = this.zza;
        if (zzbaiVar != null) {
            ((zzclf) zzbaiVar).zzk(this, zzazvVar);
        }
    }

    private final boolean zzm() {
        if (this.zzf) {
            if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzdP)).booleanValue() || this.zzm) {
                return ((Boolean) com.google.android.gms.ads.internal.client.zzba.zzc().zzb(zzbjj.zzdQ)).booleanValue() && !this.zzn;
            }
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzazt
    public final int zza(byte[] bArr, int i, int i2) throws IOException {
        int zza;
        zzbai zzbaiVar;
        if (!this.zzh) {
            throw new IOException("Attempt to read closed CacheDataSource.");
        }
        InputStream inputStream = this.zzg;
        if (inputStream != null) {
            zza = inputStream.read(bArr, i, i2);
        } else {
            zza = this.zzc.zza(bArr, i, i2);
        }
        if ((!this.zzf || this.zzg != null) && (zzbaiVar = this.zza) != null) {
            ((zzclf) zzbaiVar).zzW(this, zza);
        }
        return zza;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:58:0x01dc  */
    /* JADX WARN: Type inference failed for: r4v1 */
    /* JADX WARN: Type inference failed for: r4v13 */
    /* JADX WARN: Type inference failed for: r4v14 */
    /* JADX WARN: Type inference failed for: r4v5 */
    /* JADX WARN: Type inference failed for: r4v8, types: [java.lang.StringBuilder] */
    @Override // com.google.android.gms.internal.ads.zzazt
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long zzb(com.google.android.gms.internal.ads.zzazv r14) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 515
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzckt.zzb(com.google.android.gms.internal.ads.zzazv):long");
    }

    @Override // com.google.android.gms.internal.ads.zzazt
    public final Uri zzc() {
        return this.zzi;
    }

    @Override // com.google.android.gms.internal.ads.zzazt
    public final void zzd() throws IOException {
        if (!this.zzh) {
            throw new IOException("Attempt to close an already closed CacheDataSource.");
        }
        this.zzh = false;
        this.zzi = null;
        InputStream inputStream = this.zzg;
        if (inputStream != null) {
            IOUtils.closeQuietly(inputStream);
            this.zzg = null;
            return;
        }
        this.zzc.zzd();
    }

    public final long zze() {
        return this.zzo;
    }

    public final long zzf() {
        if (this.zzj == null) {
            return -1L;
        }
        if (this.zzq.get() != -1) {
            return this.zzq.get();
        }
        synchronized (this) {
            if (this.zzp == null) {
                this.zzp = zzcib.zza.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzcks
                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        return zzckt.this.zzg();
                    }
                });
            }
        }
        if (this.zzp.isDone()) {
            try {
                this.zzq.compareAndSet(-1L, ((Long) this.zzp.get()).longValue());
                return this.zzq.get();
            } catch (InterruptedException | ExecutionException unused) {
                return -1L;
            }
        }
        return -1L;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ Long zzg() throws Exception {
        return Long.valueOf(com.google.android.gms.ads.internal.zzt.zzc().zza(this.zzj));
    }

    public final boolean zzh() {
        return this.zzk;
    }

    public final boolean zzi() {
        return this.zzn;
    }

    public final boolean zzj() {
        return this.zzm;
    }

    public final boolean zzk() {
        return this.zzl;
    }
}
