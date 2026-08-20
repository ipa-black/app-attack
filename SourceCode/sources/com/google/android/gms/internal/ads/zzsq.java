package com.google.android.gms.internal.ads;

import android.os.Handler;
import com.google.android.exoplayer2.C;
import java.io.IOException;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzsq {
    public final int zza;
    public final zzsh zzb;
    private final CopyOnWriteArrayList zzc;

    public zzsq() {
        this(new CopyOnWriteArrayList(), 0, null, 0L);
    }

    private zzsq(CopyOnWriteArrayList copyOnWriteArrayList, int i, zzsh zzshVar, long j) {
        this.zzc = copyOnWriteArrayList;
        this.zza = i;
        this.zzb = zzshVar;
    }

    private static final long zzn(long j) {
        long zzz = zzen.zzz(j);
        return zzz == C.TIME_UNSET ? C.TIME_UNSET : zzz;
    }

    public final zzsq zza(int i, zzsh zzshVar, long j) {
        return new zzsq(this.zzc, i, zzshVar, 0L);
    }

    public final void zzc(final zzsd zzsdVar) {
        Iterator it = this.zzc.iterator();
        while (it.hasNext()) {
            zzsp zzspVar = (zzsp) it.next();
            final zzsr zzsrVar = zzspVar.zzb;
            zzen.zzY(zzspVar.zza, new Runnable() { // from class: com.google.android.gms.internal.ads.zzsk
                @Override // java.lang.Runnable
                public final void run() {
                    zzsq zzsqVar = zzsq.this;
                    zzsrVar.zzaf(zzsqVar.zza, zzsqVar.zzb, zzsdVar);
                }
            });
        }
    }

    public final void zzd(int i, zzaf zzafVar, int i2, Object obj, long j) {
        zzc(new zzsd(1, i, zzafVar, 0, null, zzn(j), C.TIME_UNSET));
    }

    public final void zze(final zzry zzryVar, final zzsd zzsdVar) {
        Iterator it = this.zzc.iterator();
        while (it.hasNext()) {
            zzsp zzspVar = (zzsp) it.next();
            final zzsr zzsrVar = zzspVar.zzb;
            zzen.zzY(zzspVar.zza, new Runnable() { // from class: com.google.android.gms.internal.ads.zzsl
                @Override // java.lang.Runnable
                public final void run() {
                    zzsq zzsqVar = zzsq.this;
                    zzsrVar.zzag(zzsqVar.zza, zzsqVar.zzb, zzryVar, zzsdVar);
                }
            });
        }
    }

    public final void zzf(zzry zzryVar, int i, int i2, zzaf zzafVar, int i3, Object obj, long j, long j2) {
        zze(zzryVar, new zzsd(1, -1, null, 0, null, zzn(j), zzn(j2)));
    }

    public final void zzg(final zzry zzryVar, final zzsd zzsdVar) {
        Iterator it = this.zzc.iterator();
        while (it.hasNext()) {
            zzsp zzspVar = (zzsp) it.next();
            final zzsr zzsrVar = zzspVar.zzb;
            zzen.zzY(zzspVar.zza, new Runnable() { // from class: com.google.android.gms.internal.ads.zzso
                @Override // java.lang.Runnable
                public final void run() {
                    zzsq zzsqVar = zzsq.this;
                    zzsrVar.zzah(zzsqVar.zza, zzsqVar.zzb, zzryVar, zzsdVar);
                }
            });
        }
    }

    public final void zzh(zzry zzryVar, int i, int i2, zzaf zzafVar, int i3, Object obj, long j, long j2) {
        zzg(zzryVar, new zzsd(1, -1, null, 0, null, zzn(j), zzn(j2)));
    }

    public final void zzi(final zzry zzryVar, final zzsd zzsdVar, final IOException iOException, final boolean z) {
        Iterator it = this.zzc.iterator();
        while (it.hasNext()) {
            zzsp zzspVar = (zzsp) it.next();
            final zzsr zzsrVar = zzspVar.zzb;
            zzen.zzY(zzspVar.zza, new Runnable() { // from class: com.google.android.gms.internal.ads.zzsm
                @Override // java.lang.Runnable
                public final void run() {
                    zzsq zzsqVar = zzsq.this;
                    zzsrVar.zzai(zzsqVar.zza, zzsqVar.zzb, zzryVar, zzsdVar, iOException, z);
                }
            });
        }
    }

    public final void zzj(zzry zzryVar, int i, int i2, zzaf zzafVar, int i3, Object obj, long j, long j2, IOException iOException, boolean z) {
        zzi(zzryVar, new zzsd(1, -1, null, 0, null, zzn(j), zzn(j2)), iOException, z);
    }

    public final void zzk(final zzry zzryVar, final zzsd zzsdVar) {
        Iterator it = this.zzc.iterator();
        while (it.hasNext()) {
            zzsp zzspVar = (zzsp) it.next();
            final zzsr zzsrVar = zzspVar.zzb;
            zzen.zzY(zzspVar.zza, new Runnable() { // from class: com.google.android.gms.internal.ads.zzsn
                @Override // java.lang.Runnable
                public final void run() {
                    zzsq zzsqVar = zzsq.this;
                    zzsrVar.zzaj(zzsqVar.zza, zzsqVar.zzb, zzryVar, zzsdVar);
                }
            });
        }
    }

    public final void zzl(zzry zzryVar, int i, int i2, zzaf zzafVar, int i3, Object obj, long j, long j2) {
        zzk(zzryVar, new zzsd(1, -1, null, 0, null, zzn(j), zzn(j2)));
    }

    public final void zzm(zzsr zzsrVar) {
        Iterator it = this.zzc.iterator();
        while (it.hasNext()) {
            zzsp zzspVar = (zzsp) it.next();
            if (zzspVar.zzb == zzsrVar) {
                this.zzc.remove(zzspVar);
            }
        }
    }

    public final void zzb(Handler handler, zzsr zzsrVar) {
        zzsrVar.getClass();
        this.zzc.add(new zzsp(handler, zzsrVar));
    }
}
