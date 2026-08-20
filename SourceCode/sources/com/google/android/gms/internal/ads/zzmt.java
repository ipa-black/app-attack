package com.google.android.gms.internal.ads;

import android.util.Base64;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Random;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzmt implements zzmx {
    public static final zzfyu zza = new zzfyu() { // from class: com.google.android.gms.internal.ads.zzmr
        @Override // com.google.android.gms.internal.ads.zzfyu
        public final Object zza() {
            String zzl;
            zzl = zzmt.zzl();
            return zzl;
        }
    };
    private static final Random zzb = new Random();
    private final zzcm zzc;
    private final zzck zzd;
    private final HashMap zze;
    private final zzfyu zzf;
    private zzmw zzg;
    private zzcn zzh;
    private String zzi;

    public zzmt() {
        throw null;
    }

    private final zzms zzk(int i, zzsh zzshVar) {
        long j;
        int i2;
        zzsh zzshVar2;
        zzsh zzshVar3;
        zzms zzmsVar = null;
        long j2 = Long.MAX_VALUE;
        for (zzms zzmsVar2 : this.zze.values()) {
            zzmsVar2.zzg(i, zzshVar);
            if (zzmsVar2.zzj(i, zzshVar)) {
                j = zzmsVar2.zzd;
                if (j == -1 || j < j2) {
                    zzmsVar = zzmsVar2;
                    j2 = j;
                } else if (i2 == 0) {
                    int i3 = zzen.zza;
                    zzshVar2 = zzmsVar.zze;
                    if (zzshVar2 != null) {
                        zzshVar3 = zzmsVar2.zze;
                        if (zzshVar3 != null) {
                            zzmsVar = zzmsVar2;
                        }
                    }
                }
            }
        }
        if (zzmsVar == null) {
            String zzl = zzl();
            zzms zzmsVar3 = new zzms(this, zzl, i, zzshVar);
            this.zze.put(zzl, zzmsVar3);
            return zzmsVar3;
        }
        return zzmsVar;
    }

    public static String zzl() {
        byte[] bArr = new byte[12];
        zzb.nextBytes(bArr);
        return Base64.encodeToString(bArr, 10);
    }

    @RequiresNonNull({ServiceSpecificExtraArgs.CastExtraArgs.LISTENER})
    private final void zzm(zzkn zzknVar) {
        String str;
        long j;
        zzsh zzshVar;
        zzsh zzshVar2;
        zzsh zzshVar3;
        String unused;
        String unused2;
        if (zzknVar.zzb.zzo()) {
            this.zzi = null;
            return;
        }
        zzms zzmsVar = (zzms) this.zze.get(this.zzi);
        zzms zzk = zzk(zzknVar.zzc, zzknVar.zzd);
        str = zzk.zzb;
        this.zzi = str;
        zzh(zzknVar);
        zzsh zzshVar4 = zzknVar.zzd;
        if (zzshVar4 == null || !zzshVar4.zzb()) {
            return;
        }
        if (zzmsVar != null) {
            j = zzmsVar.zzd;
            if (j == zzknVar.zzd.zzd) {
                zzshVar = zzmsVar.zze;
                if (zzshVar != null) {
                    zzshVar2 = zzmsVar.zze;
                    if (zzshVar2.zzb == zzknVar.zzd.zzb) {
                        zzshVar3 = zzmsVar.zze;
                        if (zzshVar3.zzc == zzknVar.zzd.zzc) {
                            return;
                        }
                    }
                }
            }
        }
        zzsh zzshVar5 = zzknVar.zzd;
        unused = zzk(zzknVar.zzc, new zzsh(zzshVar5.zza, zzshVar5.zzd)).zzb;
        unused2 = zzk.zzb;
    }

    @Override // com.google.android.gms.internal.ads.zzmx
    public final synchronized String zzd() {
        return this.zzi;
    }

    @Override // com.google.android.gms.internal.ads.zzmx
    public final synchronized String zze(zzcn zzcnVar, zzsh zzshVar) {
        String str;
        str = zzk(zzcnVar.zzn(zzshVar.zza, this.zzd).zzd, zzshVar).zzb;
        return str;
    }

    @Override // com.google.android.gms.internal.ads.zzmx
    public final synchronized void zzf(zzkn zzknVar) {
        boolean z;
        zzmw zzmwVar;
        String str;
        this.zzi = null;
        Iterator it = this.zze.values().iterator();
        while (it.hasNext()) {
            zzms zzmsVar = (zzms) it.next();
            it.remove();
            z = zzmsVar.zzf;
            if (z && (zzmwVar = this.zzg) != null) {
                str = zzmsVar.zzb;
                zzmwVar.zzd(zzknVar, str, false);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzmx
    public final void zzg(zzmw zzmwVar) {
        this.zzg = zzmwVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:68:0x003d, code lost:
        if (r1 < r3) goto L18;
     */
    @Override // com.google.android.gms.internal.ads.zzmx
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized void zzh(com.google.android.gms.internal.ads.zzkn r10) {
        /*
            r9 = this;
            monitor-enter(r9)
            com.google.android.gms.internal.ads.zzmw r0 = r9.zzg     // Catch: java.lang.Throwable -> Lcb
            r0.getClass()
            com.google.android.gms.internal.ads.zzcn r0 = r10.zzb     // Catch: java.lang.Throwable -> Lcb
            boolean r0 = r0.zzo()     // Catch: java.lang.Throwable -> Lcb
            if (r0 == 0) goto L10
            monitor-exit(r9)
            return
        L10:
            java.util.HashMap r0 = r9.zze     // Catch: java.lang.Throwable -> Lcb
            java.lang.String r1 = r9.zzi     // Catch: java.lang.Throwable -> Lcb
            java.lang.Object r0 = r0.get(r1)     // Catch: java.lang.Throwable -> Lcb
            com.google.android.gms.internal.ads.zzms r0 = (com.google.android.gms.internal.ads.zzms) r0     // Catch: java.lang.Throwable -> Lcb
            com.google.android.gms.internal.ads.zzsh r1 = r10.zzd     // Catch: java.lang.Throwable -> Lcb
            if (r1 == 0) goto L41
            if (r0 == 0) goto L41
            long r1 = com.google.android.gms.internal.ads.zzms.zzb(r0)     // Catch: java.lang.Throwable -> Lcb
            r3 = -1
            int r1 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r1 != 0) goto L33
            int r0 = com.google.android.gms.internal.ads.zzms.zza(r0)     // Catch: java.lang.Throwable -> Lcb
            int r1 = r10.zzc     // Catch: java.lang.Throwable -> Lcb
            if (r0 != r1) goto L3f
            goto L41
        L33:
            com.google.android.gms.internal.ads.zzsh r1 = r10.zzd     // Catch: java.lang.Throwable -> Lcb
            long r1 = r1.zzd     // Catch: java.lang.Throwable -> Lcb
            long r3 = com.google.android.gms.internal.ads.zzms.zzb(r0)     // Catch: java.lang.Throwable -> Lcb
            int r0 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r0 >= 0) goto L41
        L3f:
            monitor-exit(r9)
            return
        L41:
            int r0 = r10.zzc     // Catch: java.lang.Throwable -> Lcb
            com.google.android.gms.internal.ads.zzsh r1 = r10.zzd     // Catch: java.lang.Throwable -> Lcb
            com.google.android.gms.internal.ads.zzms r0 = r9.zzk(r0, r1)     // Catch: java.lang.Throwable -> Lcb
            java.lang.String r1 = r9.zzi     // Catch: java.lang.Throwable -> Lcb
            if (r1 != 0) goto L53
            java.lang.String r1 = com.google.android.gms.internal.ads.zzms.zzd(r0)     // Catch: java.lang.Throwable -> Lcb
            r9.zzi = r1     // Catch: java.lang.Throwable -> Lcb
        L53:
            com.google.android.gms.internal.ads.zzsh r1 = r10.zzd     // Catch: java.lang.Throwable -> Lcb
            r2 = 1
            if (r1 == 0) goto L9d
            boolean r3 = r1.zzb()     // Catch: java.lang.Throwable -> Lcb
            if (r3 == 0) goto L9d
            com.google.android.gms.internal.ads.zzsh r3 = new com.google.android.gms.internal.ads.zzsh     // Catch: java.lang.Throwable -> Lcb
            java.lang.Object r4 = r1.zza     // Catch: java.lang.Throwable -> Lcb
            long r5 = r1.zzd     // Catch: java.lang.Throwable -> Lcb
            int r1 = r1.zzb     // Catch: java.lang.Throwable -> Lcb
            r3.<init>(r4, r5, r1)     // Catch: java.lang.Throwable -> Lcb
            int r1 = r10.zzc     // Catch: java.lang.Throwable -> Lcb
            com.google.android.gms.internal.ads.zzms r1 = r9.zzk(r1, r3)     // Catch: java.lang.Throwable -> Lcb
            boolean r3 = com.google.android.gms.internal.ads.zzms.zzi(r1)     // Catch: java.lang.Throwable -> Lcb
            if (r3 != 0) goto L9d
            com.google.android.gms.internal.ads.zzms.zzf(r1, r2)     // Catch: java.lang.Throwable -> Lcb
            com.google.android.gms.internal.ads.zzcn r3 = r10.zzb     // Catch: java.lang.Throwable -> Lcb
            com.google.android.gms.internal.ads.zzsh r4 = r10.zzd     // Catch: java.lang.Throwable -> Lcb
            java.lang.Object r4 = r4.zza     // Catch: java.lang.Throwable -> Lcb
            com.google.android.gms.internal.ads.zzck r5 = r9.zzd     // Catch: java.lang.Throwable -> Lcb
            r3.zzn(r4, r5)     // Catch: java.lang.Throwable -> Lcb
            com.google.android.gms.internal.ads.zzck r3 = r9.zzd     // Catch: java.lang.Throwable -> Lcb
            com.google.android.gms.internal.ads.zzsh r4 = r10.zzd     // Catch: java.lang.Throwable -> Lcb
            int r4 = r4.zzb     // Catch: java.lang.Throwable -> Lcb
            r3.zzh(r4)     // Catch: java.lang.Throwable -> Lcb
            r3 = 0
            long r5 = com.google.android.gms.internal.ads.zzen.zzz(r3)     // Catch: java.lang.Throwable -> Lcb
            long r7 = com.google.android.gms.internal.ads.zzen.zzz(r3)     // Catch: java.lang.Throwable -> Lcb
            long r5 = r5 + r7
            java.lang.Math.max(r3, r5)     // Catch: java.lang.Throwable -> Lcb
            com.google.android.gms.internal.ads.zzms.zzd(r1)     // Catch: java.lang.Throwable -> Lcb
        L9d:
            boolean r1 = com.google.android.gms.internal.ads.zzms.zzi(r0)     // Catch: java.lang.Throwable -> Lcb
            if (r1 != 0) goto La9
            com.google.android.gms.internal.ads.zzms.zzf(r0, r2)     // Catch: java.lang.Throwable -> Lcb
            com.google.android.gms.internal.ads.zzms.zzd(r0)     // Catch: java.lang.Throwable -> Lcb
        La9:
            java.lang.String r1 = com.google.android.gms.internal.ads.zzms.zzd(r0)     // Catch: java.lang.Throwable -> Lcb
            java.lang.String r3 = r9.zzi     // Catch: java.lang.Throwable -> Lcb
            boolean r1 = r1.equals(r3)     // Catch: java.lang.Throwable -> Lcb
            if (r1 == 0) goto Lc9
            boolean r1 = com.google.android.gms.internal.ads.zzms.zzh(r0)     // Catch: java.lang.Throwable -> Lcb
            if (r1 != 0) goto Lc9
            com.google.android.gms.internal.ads.zzms.zze(r0, r2)     // Catch: java.lang.Throwable -> Lcb
            com.google.android.gms.internal.ads.zzmw r1 = r9.zzg     // Catch: java.lang.Throwable -> Lcb
            java.lang.String r0 = com.google.android.gms.internal.ads.zzms.zzd(r0)     // Catch: java.lang.Throwable -> Lcb
            r1.zzc(r10, r0)     // Catch: java.lang.Throwable -> Lcb
            monitor-exit(r9)
            return
        Lc9:
            monitor-exit(r9)
            return
        Lcb:
            r10 = move-exception
            monitor-exit(r9)
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzmt.zzh(com.google.android.gms.internal.ads.zzkn):void");
    }

    @Override // com.google.android.gms.internal.ads.zzmx
    public final synchronized void zzi(zzkn zzknVar, int i) {
        boolean z;
        String str;
        String str2;
        boolean z2;
        this.zzg.getClass();
        Iterator it = this.zze.values().iterator();
        while (it.hasNext()) {
            zzms zzmsVar = (zzms) it.next();
            if (zzmsVar.zzk(zzknVar)) {
                it.remove();
                z = zzmsVar.zzf;
                if (z) {
                    str = zzmsVar.zzb;
                    boolean equals = str.equals(this.zzi);
                    boolean z3 = false;
                    if (i == 0 && equals) {
                        z2 = zzmsVar.zzg;
                        if (z2) {
                            z3 = true;
                        }
                    }
                    if (equals) {
                        this.zzi = null;
                    }
                    zzmw zzmwVar = this.zzg;
                    str2 = zzmsVar.zzb;
                    zzmwVar.zzd(zzknVar, str2, z3);
                }
            }
        }
        zzm(zzknVar);
    }

    @Override // com.google.android.gms.internal.ads.zzmx
    public final synchronized void zzj(zzkn zzknVar) {
        boolean z;
        String str;
        String str2;
        this.zzg.getClass();
        zzcn zzcnVar = this.zzh;
        this.zzh = zzknVar.zzb;
        Iterator it = this.zze.values().iterator();
        while (it.hasNext()) {
            zzms zzmsVar = (zzms) it.next();
            if (!zzmsVar.zzl(zzcnVar, this.zzh) || zzmsVar.zzk(zzknVar)) {
                it.remove();
                z = zzmsVar.zzf;
                if (z) {
                    str = zzmsVar.zzb;
                    if (str.equals(this.zzi)) {
                        this.zzi = null;
                    }
                    zzmw zzmwVar = this.zzg;
                    str2 = zzmsVar.zzb;
                    zzmwVar.zzd(zzknVar, str2, false);
                }
            }
        }
        zzm(zzknVar);
    }

    public zzmt(zzfyu zzfyuVar) {
        this.zzf = zzfyuVar;
        this.zzc = new zzcm();
        this.zzd = new zzck();
        this.zze = new HashMap();
        this.zzh = zzcn.zza;
    }
}
