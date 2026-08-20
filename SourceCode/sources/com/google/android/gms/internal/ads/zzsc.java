package com.google.android.gms.internal.ads;

import com.google.android.exoplayer2.C;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzsc extends zzui {
    private final boolean zzb;
    private final zzcm zzc;
    private final zzck zzd;
    private zzsa zze;
    private zzrz zzf;
    private boolean zzg;
    private boolean zzh;
    private boolean zzi;

    public zzsc(zzsj zzsjVar, boolean z) {
        super(zzsjVar);
        boolean z2;
        if (z) {
            zzsjVar.zzu();
            z2 = true;
        } else {
            z2 = false;
        }
        this.zzb = z2;
        this.zzc = new zzcm();
        this.zzd = new zzck();
        zzsjVar.zzL();
        this.zze = zzsa.zzq(zzsjVar.zzI());
    }

    private final Object zzJ(Object obj) {
        Object obj2;
        Object obj3;
        obj2 = this.zze.zzf;
        if (obj2 == null || !obj.equals(zzsa.zzd)) {
            return obj;
        }
        obj3 = this.zze.zzf;
        return obj3;
    }

    @RequiresNonNull({"unpreparedMaskingMediaPeriod"})
    private final void zzK(long j) {
        zzrz zzrzVar = this.zzf;
        int zza = this.zze.zza(zzrzVar.zza.zza);
        if (zza == -1) {
            return;
        }
        zzsa zzsaVar = this.zze;
        zzck zzckVar = this.zzd;
        zzsaVar.zzd(zza, zzckVar, false);
        long j2 = zzckVar.zze;
        if (j2 != C.TIME_UNSET && j >= j2) {
            j = Math.max(0L, j2 - 1);
        }
        zzrzVar.zzs(j);
    }

    public final zzcn zzB() {
        return this.zze;
    }

    @Override // com.google.android.gms.internal.ads.zzui
    protected final zzsh zzC(zzsh zzshVar) {
        Object obj;
        Object obj2;
        Object obj3 = zzshVar.zza;
        obj = this.zze.zzf;
        if (obj != null) {
            obj2 = this.zze.zzf;
            if (obj2.equals(obj3)) {
                obj3 = zzsa.zzd;
            }
        }
        return zzshVar.zzc(obj3);
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x007b  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0082  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x008c  */
    @Override // com.google.android.gms.internal.ads.zzui
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    protected final void zzD(com.google.android.gms.internal.ads.zzcn r15) {
        /*
            r14 = this;
            boolean r0 = r14.zzh
            r1 = 0
            if (r0 == 0) goto L1a
            com.google.android.gms.internal.ads.zzsa r0 = r14.zze
            com.google.android.gms.internal.ads.zzsa r15 = r0.zzp(r15)
            r14.zze = r15
            com.google.android.gms.internal.ads.zzrz r15 = r14.zzf
            if (r15 == 0) goto L9b
            long r2 = r15.zzn()
            r14.zzK(r2)
            goto L9b
        L1a:
            boolean r0 = r15.zzo()
            if (r0 == 0) goto L36
            boolean r0 = r14.zzi
            if (r0 == 0) goto L2b
            com.google.android.gms.internal.ads.zzsa r0 = r14.zze
            com.google.android.gms.internal.ads.zzsa r15 = r0.zzp(r15)
            goto L33
        L2b:
            java.lang.Object r0 = com.google.android.gms.internal.ads.zzcm.zza
            java.lang.Object r2 = com.google.android.gms.internal.ads.zzsa.zzd
            com.google.android.gms.internal.ads.zzsa r15 = com.google.android.gms.internal.ads.zzsa.zzr(r15, r0, r2)
        L33:
            r14.zze = r15
            goto L9b
        L36:
            com.google.android.gms.internal.ads.zzcm r0 = r14.zzc
            r2 = 0
            r3 = 0
            r15.zze(r2, r0, r3)
            com.google.android.gms.internal.ads.zzcm r0 = r14.zzc
            java.lang.Object r0 = r0.zzc
            com.google.android.gms.internal.ads.zzrz r5 = r14.zzf
            if (r5 == 0) goto L62
            long r6 = r5.zzq()
            com.google.android.gms.internal.ads.zzsa r8 = r14.zze
            com.google.android.gms.internal.ads.zzsh r5 = r5.zza
            java.lang.Object r5 = r5.zza
            com.google.android.gms.internal.ads.zzck r9 = r14.zzd
            r8.zzn(r5, r9)
            com.google.android.gms.internal.ads.zzsa r5 = r14.zze
            com.google.android.gms.internal.ads.zzcm r8 = r14.zzc
            r5.zze(r2, r8, r3)
            int r2 = (r6 > r3 ? 1 : (r6 == r3 ? 0 : -1))
            if (r2 == 0) goto L62
            r12 = r6
            goto L63
        L62:
            r12 = r3
        L63:
            com.google.android.gms.internal.ads.zzcm r9 = r14.zzc
            com.google.android.gms.internal.ads.zzck r10 = r14.zzd
            r11 = 0
            r8 = r15
            android.util.Pair r2 = r8.zzl(r9, r10, r11, r12)
            java.lang.Object r3 = r2.first
            java.lang.Object r2 = r2.second
            java.lang.Long r2 = (java.lang.Long) r2
            long r4 = r2.longValue()
            boolean r2 = r14.zzi
            if (r2 == 0) goto L82
            com.google.android.gms.internal.ads.zzsa r0 = r14.zze
            com.google.android.gms.internal.ads.zzsa r15 = r0.zzp(r15)
            goto L86
        L82:
            com.google.android.gms.internal.ads.zzsa r15 = com.google.android.gms.internal.ads.zzsa.zzr(r15, r0, r3)
        L86:
            r14.zze = r15
            com.google.android.gms.internal.ads.zzrz r15 = r14.zzf
            if (r15 == 0) goto L9b
            r14.zzK(r4)
            com.google.android.gms.internal.ads.zzsh r15 = r15.zza
            java.lang.Object r0 = r15.zza
            java.lang.Object r0 = r14.zzJ(r0)
            com.google.android.gms.internal.ads.zzsh r1 = r15.zzc(r0)
        L9b:
            r15 = 1
            r14.zzi = r15
            r14.zzh = r15
            com.google.android.gms.internal.ads.zzsa r15 = r14.zze
            r14.zzo(r15)
            if (r1 == 0) goto Laf
            com.google.android.gms.internal.ads.zzrz r15 = r14.zzf
            r15.getClass()
            r15.zzr(r1)
        Laf:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzsc.zzD(com.google.android.gms.internal.ads.zzcn):void");
    }

    @Override // com.google.android.gms.internal.ads.zzui
    public final void zzE() {
        if (this.zzb) {
            return;
        }
        this.zzg = true;
        zzA(null, ((zzui) this).zza);
    }

    @Override // com.google.android.gms.internal.ads.zzui, com.google.android.gms.internal.ads.zzsj
    public final void zzF(zzsf zzsfVar) {
        ((zzrz) zzsfVar).zzt();
        if (zzsfVar == this.zzf) {
            this.zzf = null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzui, com.google.android.gms.internal.ads.zzsj
    /* renamed from: zzG */
    public final zzrz zzH(zzsh zzshVar, zzwi zzwiVar, long j) {
        zzrz zzrzVar = new zzrz(zzshVar, zzwiVar, j, null);
        zzrzVar.zzu(this.zza);
        if (this.zzh) {
            zzrzVar.zzr(zzshVar.zzc(zzJ(zzshVar.zza)));
        } else {
            this.zzf = zzrzVar;
            if (!this.zzg) {
                this.zzg = true;
                zzA(null, ((zzui) this).zza);
            }
        }
        return zzrzVar;
    }

    @Override // com.google.android.gms.internal.ads.zzrq, com.google.android.gms.internal.ads.zzri
    public final void zzq() {
        this.zzh = false;
        this.zzg = false;
        super.zzq();
    }

    @Override // com.google.android.gms.internal.ads.zzrq, com.google.android.gms.internal.ads.zzsj
    public final void zzy() {
    }
}
