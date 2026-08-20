package com.google.android.gms.internal.ads;

import android.os.Looper;
import android.util.SparseArray;
import java.io.IOException;
import java.util.List;
import org.checkerframework.checker.nullness.qual.RequiresNonNull;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzmq implements zzkm {
    private final zzde zza;
    private final zzck zzb;
    private final zzcm zzc;
    private final zzmp zzd;
    private final SparseArray zze;
    private zzdt zzf;
    private zzcg zzg;
    private zzdn zzh;
    private boolean zzi;

    public static /* synthetic */ void zzW(zzmq zzmqVar) {
        final zzkn zzU = zzmqVar.zzU();
        zzmqVar.zzZ(zzU, 1028, new zzdq() { // from class: com.google.android.gms.internal.ads.zzlm
            @Override // com.google.android.gms.internal.ads.zzdq
            public final void zza(Object obj) {
                zzkp zzkpVar = (zzkp) obj;
            }
        });
        zzmqVar.zzf.zze();
    }

    private final zzkn zzab(int i, zzsh zzshVar) {
        zzcg zzcgVar = this.zzg;
        zzcgVar.getClass();
        if (zzshVar != null) {
            if (this.zzd.zza(zzshVar) != null) {
                return zzaa(zzshVar);
            }
            return zzV(zzcn.zza, i, zzshVar);
        }
        zzcn zzn = zzcgVar.zzn();
        if (i >= zzn.zzc()) {
            zzn = zzcn.zza;
        }
        return zzV(zzn, i, null);
    }

    private final zzkn zzac() {
        return zzaa(this.zzd.zzd());
    }

    private final zzkn zzad() {
        return zzaa(this.zzd.zze());
    }

    private final zzkn zzae(zzbw zzbwVar) {
        zzbn zzbnVar;
        if (!(zzbwVar instanceof zzha) || (zzbnVar = ((zzha) zzbwVar).zzj) == null) {
            return zzU();
        }
        return zzaa(new zzsh(zzbnVar));
    }

    @Override // com.google.android.gms.internal.ads.zzkm
    public final void zzA(final String str) {
        final zzkn zzad = zzad();
        zzZ(zzad, 1012, new zzdq() { // from class: com.google.android.gms.internal.ads.zzmo
            @Override // com.google.android.gms.internal.ads.zzdq
            public final void zza(Object obj) {
                zzkp zzkpVar = (zzkp) obj;
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzkm
    public final void zzB(final zzgs zzgsVar) {
        final zzkn zzac = zzac();
        zzZ(zzac, 1013, new zzdq() { // from class: com.google.android.gms.internal.ads.zzme
            @Override // com.google.android.gms.internal.ads.zzdq
            public final void zza(Object obj) {
                zzkp zzkpVar = (zzkp) obj;
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzkm
    public final void zzC(final zzgs zzgsVar) {
        final zzkn zzad = zzad();
        zzZ(zzad, 1007, new zzdq() { // from class: com.google.android.gms.internal.ads.zzlt
            @Override // com.google.android.gms.internal.ads.zzdq
            public final void zza(Object obj) {
                zzkp zzkpVar = (zzkp) obj;
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzkm
    public final void zzD(final zzaf zzafVar, final zzgt zzgtVar) {
        final zzkn zzad = zzad();
        zzZ(zzad, 1009, new zzdq() { // from class: com.google.android.gms.internal.ads.zzmd
            @Override // com.google.android.gms.internal.ads.zzdq
            public final void zza(Object obj) {
                ((zzkp) obj).zze(zzkn.this, zzafVar, zzgtVar);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzkm
    public final void zzE(final long j) {
        final zzkn zzad = zzad();
        zzZ(zzad, 1010, new zzdq(j) { // from class: com.google.android.gms.internal.ads.zzmg
            @Override // com.google.android.gms.internal.ads.zzdq
            public final void zza(Object obj) {
                zzkp zzkpVar = (zzkp) obj;
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzkm
    public final void zzF(final Exception exc) {
        final zzkn zzad = zzad();
        zzZ(zzad, 1014, new zzdq() { // from class: com.google.android.gms.internal.ads.zzlb
            @Override // com.google.android.gms.internal.ads.zzdq
            public final void zza(Object obj) {
                zzkp zzkpVar = (zzkp) obj;
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzkm
    public final void zzG(final int i, final long j, final long j2) {
        final zzkn zzad = zzad();
        zzZ(zzad, 1011, new zzdq(i, j, j2) { // from class: com.google.android.gms.internal.ads.zzkt
            @Override // com.google.android.gms.internal.ads.zzdq
            public final void zza(Object obj) {
                zzkp zzkpVar = (zzkp) obj;
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzkm
    public final void zzH(final int i, final long j) {
        final zzkn zzac = zzac();
        zzZ(zzac, 1018, new zzdq() { // from class: com.google.android.gms.internal.ads.zzlo
            @Override // com.google.android.gms.internal.ads.zzdq
            public final void zza(Object obj) {
                ((zzkp) obj).zzh(zzkn.this, i, j);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzkm
    public final void zzI(final Object obj, final long j) {
        final zzkn zzad = zzad();
        zzZ(zzad, 26, new zzdq() { // from class: com.google.android.gms.internal.ads.zzmk
            @Override // com.google.android.gms.internal.ads.zzdq
            public final void zza(Object obj2) {
                ((zzkp) obj2).zzn(zzkn.this, obj, j);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzkm
    public final void zzJ(final Exception exc) {
        final zzkn zzad = zzad();
        zzZ(zzad, 1030, new zzdq() { // from class: com.google.android.gms.internal.ads.zzkz
            @Override // com.google.android.gms.internal.ads.zzdq
            public final void zza(Object obj) {
                zzkp zzkpVar = (zzkp) obj;
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzkm
    public final void zzK(final String str, final long j, final long j2) {
        final zzkn zzad = zzad();
        zzZ(zzad, 1016, new zzdq(str, j2, j) { // from class: com.google.android.gms.internal.ads.zzlk
            public final /* synthetic */ String zzb;

            @Override // com.google.android.gms.internal.ads.zzdq
            public final void zza(Object obj) {
                zzkp zzkpVar = (zzkp) obj;
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzkm
    public final void zzL(final String str) {
        final zzkn zzad = zzad();
        zzZ(zzad, 1019, new zzdq() { // from class: com.google.android.gms.internal.ads.zzks
            @Override // com.google.android.gms.internal.ads.zzdq
            public final void zza(Object obj) {
                zzkp zzkpVar = (zzkp) obj;
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzkm
    public final void zzM(final zzgs zzgsVar) {
        final zzkn zzac = zzac();
        zzZ(zzac, 1020, new zzdq() { // from class: com.google.android.gms.internal.ads.zzmj
            @Override // com.google.android.gms.internal.ads.zzdq
            public final void zza(Object obj) {
                ((zzkp) obj).zzo(zzkn.this, zzgsVar);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzkm
    public final void zzN(final zzgs zzgsVar) {
        final zzkn zzad = zzad();
        zzZ(zzad, 1015, new zzdq() { // from class: com.google.android.gms.internal.ads.zzlp
            @Override // com.google.android.gms.internal.ads.zzdq
            public final void zza(Object obj) {
                zzkp zzkpVar = (zzkp) obj;
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzkm
    public final void zzO(final long j, final int i) {
        final zzkn zzac = zzac();
        zzZ(zzac, 1021, new zzdq(j, i) { // from class: com.google.android.gms.internal.ads.zzlc
            @Override // com.google.android.gms.internal.ads.zzdq
            public final void zza(Object obj) {
                zzkp zzkpVar = (zzkp) obj;
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzkm
    public final void zzP(final zzaf zzafVar, final zzgt zzgtVar) {
        final zzkn zzad = zzad();
        zzZ(zzad, 1017, new zzdq() { // from class: com.google.android.gms.internal.ads.zzkr
            @Override // com.google.android.gms.internal.ads.zzdq
            public final void zza(Object obj) {
                ((zzkp) obj).zzp(zzkn.this, zzafVar, zzgtVar);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzkm
    public final void zzQ() {
        zzdn zzdnVar = this.zzh;
        zzdd.zzb(zzdnVar);
        zzdnVar.zzg(new Runnable() { // from class: com.google.android.gms.internal.ads.zzmf
            @Override // java.lang.Runnable
            public final void run() {
                zzmq.zzW(zzmq.this);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzkm
    public final void zzR(zzkp zzkpVar) {
        this.zzf.zzf(zzkpVar);
    }

    @Override // com.google.android.gms.internal.ads.zzkm
    public final void zzS(final zzcg zzcgVar, Looper looper) {
        zzgau zzgauVar;
        boolean z = true;
        if (this.zzg != null) {
            zzgauVar = this.zzd.zzb;
            if (!zzgauVar.isEmpty()) {
                z = false;
            }
        }
        zzdd.zzf(z);
        zzcgVar.getClass();
        this.zzg = zzcgVar;
        this.zzh = this.zza.zzb(looper, null);
        this.zzf = this.zzf.zza(looper, new zzdr() { // from class: com.google.android.gms.internal.ads.zzlj
            @Override // com.google.android.gms.internal.ads.zzdr
            public final void zza(Object obj, zzaa zzaaVar) {
                zzmq.this.zzX(zzcgVar, (zzkp) obj, zzaaVar);
            }
        });
    }

    protected final zzkn zzU() {
        return zzaa(this.zzd.zzb());
    }

    @RequiresNonNull({"player"})
    protected final zzkn zzV(zzcn zzcnVar, int i, zzsh zzshVar) {
        boolean z = true;
        zzsh zzshVar2 = true == zzcnVar.zzo() ? null : zzshVar;
        long zza = this.zza.zza();
        if (!zzcnVar.equals(this.zzg.zzn()) || i != this.zzg.zzf()) {
            z = false;
        }
        long j = 0;
        if (zzshVar2 == null || !zzshVar2.zzb()) {
            if (z) {
                j = this.zzg.zzk();
            } else if (!zzcnVar.zzo()) {
                long j2 = zzcnVar.zze(i, this.zzc, 0L).zzm;
                j = zzen.zzz(0L);
            }
        } else if (z && this.zzg.zzd() == zzshVar2.zzb && this.zzg.zze() == zzshVar2.zzc) {
            j = this.zzg.zzl();
        }
        return new zzkn(zza, zzcnVar, i, zzshVar2, j, this.zzg.zzn(), this.zzg.zzf(), this.zzd.zzb(), this.zzg.zzl(), this.zzg.zzm());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zzX(zzcg zzcgVar, zzkp zzkpVar, zzaa zzaaVar) {
        zzkpVar.zzi(zzcgVar, new zzko(zzaaVar, this.zze));
    }

    @Override // com.google.android.gms.internal.ads.zzwg
    public final void zzY(final int i, final long j, final long j2) {
        final zzkn zzaa = zzaa(this.zzd.zzc());
        zzZ(zzaa, 1006, new zzdq() { // from class: com.google.android.gms.internal.ads.zzla
            @Override // com.google.android.gms.internal.ads.zzdq
            public final void zza(Object obj) {
                ((zzkp) obj).zzf(zzkn.this, i, j, j2);
            }
        });
    }

    protected final void zzZ(zzkn zzknVar, int i, zzdq zzdqVar) {
        this.zze.put(i, zzknVar);
        zzdt zzdtVar = this.zzf;
        zzdtVar.zzd(i, zzdqVar);
        zzdtVar.zzc();
    }

    @Override // com.google.android.gms.internal.ads.zzcd
    public final void zza(final zzcc zzccVar) {
        final zzkn zzU = zzU();
        zzZ(zzU, 13, new zzdq() { // from class: com.google.android.gms.internal.ads.zzle
            @Override // com.google.android.gms.internal.ads.zzdq
            public final void zza(Object obj) {
                zzkp zzkpVar = (zzkp) obj;
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzsr
    public final void zzaf(int i, zzsh zzshVar, final zzsd zzsdVar) {
        final zzkn zzab = zzab(i, zzshVar);
        zzZ(zzab, 1004, new zzdq() { // from class: com.google.android.gms.internal.ads.zzky
            @Override // com.google.android.gms.internal.ads.zzdq
            public final void zza(Object obj) {
                ((zzkp) obj).zzg(zzkn.this, zzsdVar);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzsr
    public final void zzag(int i, zzsh zzshVar, final zzry zzryVar, final zzsd zzsdVar) {
        final zzkn zzab = zzab(i, zzshVar);
        zzZ(zzab, 1002, new zzdq() { // from class: com.google.android.gms.internal.ads.zzlq
            @Override // com.google.android.gms.internal.ads.zzdq
            public final void zza(Object obj) {
                zzkp zzkpVar = (zzkp) obj;
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzsr
    public final void zzah(int i, zzsh zzshVar, final zzry zzryVar, final zzsd zzsdVar) {
        final zzkn zzab = zzab(i, zzshVar);
        zzZ(zzab, 1001, new zzdq() { // from class: com.google.android.gms.internal.ads.zzma
            @Override // com.google.android.gms.internal.ads.zzdq
            public final void zza(Object obj) {
                zzkp zzkpVar = (zzkp) obj;
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzsr
    public final void zzai(int i, zzsh zzshVar, final zzry zzryVar, final zzsd zzsdVar, final IOException iOException, final boolean z) {
        final zzkn zzab = zzab(i, zzshVar);
        zzZ(zzab, 1003, new zzdq() { // from class: com.google.android.gms.internal.ads.zzll
            @Override // com.google.android.gms.internal.ads.zzdq
            public final void zza(Object obj) {
                ((zzkp) obj).zzj(zzkn.this, zzryVar, zzsdVar, iOException, z);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzsr
    public final void zzaj(int i, zzsh zzshVar, final zzry zzryVar, final zzsd zzsdVar) {
        final zzkn zzab = zzab(i, zzshVar);
        zzZ(zzab, 1000, new zzdq() { // from class: com.google.android.gms.internal.ads.zzlu
            @Override // com.google.android.gms.internal.ads.zzdq
            public final void zza(Object obj) {
                zzkp zzkpVar = (zzkp) obj;
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzcd
    public final void zzb(final zzt zztVar) {
        final zzkn zzU = zzU();
        zzZ(zzU, 29, new zzdq() { // from class: com.google.android.gms.internal.ads.zzlf
            @Override // com.google.android.gms.internal.ads.zzdq
            public final void zza(Object obj) {
                zzkp zzkpVar = (zzkp) obj;
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzcd
    public final void zzc(final int i, final boolean z) {
        final zzkn zzU = zzU();
        zzZ(zzU, 30, new zzdq(i, z) { // from class: com.google.android.gms.internal.ads.zzli
            @Override // com.google.android.gms.internal.ads.zzdq
            public final void zza(Object obj) {
                zzkp zzkpVar = (zzkp) obj;
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzcd
    public final void zzd(final boolean z) {
        final zzkn zzU = zzU();
        zzZ(zzU, 3, new zzdq(z) { // from class: com.google.android.gms.internal.ads.zzmn
            @Override // com.google.android.gms.internal.ads.zzdq
            public final void zza(Object obj) {
                zzkp zzkpVar = (zzkp) obj;
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzcd
    public final void zze(final boolean z) {
        final zzkn zzU = zzU();
        zzZ(zzU, 7, new zzdq(z) { // from class: com.google.android.gms.internal.ads.zzlw
            @Override // com.google.android.gms.internal.ads.zzdq
            public final void zza(Object obj) {
                zzkp zzkpVar = (zzkp) obj;
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzcd
    public final void zzf(final zzbg zzbgVar, final int i) {
        final zzkn zzU = zzU();
        zzZ(zzU, 1, new zzdq(zzbgVar, i) { // from class: com.google.android.gms.internal.ads.zzlz
            public final /* synthetic */ zzbg zzb;

            @Override // com.google.android.gms.internal.ads.zzdq
            public final void zza(Object obj) {
                zzkp zzkpVar = (zzkp) obj;
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzcd
    public final void zzg(final zzbm zzbmVar) {
        final zzkn zzU = zzU();
        zzZ(zzU, 14, new zzdq() { // from class: com.google.android.gms.internal.ads.zzmc
            @Override // com.google.android.gms.internal.ads.zzdq
            public final void zza(Object obj) {
                zzkp zzkpVar = (zzkp) obj;
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzcd
    public final void zzh(final boolean z, final int i) {
        final zzkn zzU = zzU();
        zzZ(zzU, 5, new zzdq(z, i) { // from class: com.google.android.gms.internal.ads.zzlv
            @Override // com.google.android.gms.internal.ads.zzdq
            public final void zza(Object obj) {
                zzkp zzkpVar = (zzkp) obj;
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzcd
    public final void zzi(final zzby zzbyVar) {
        final zzkn zzU = zzU();
        zzZ(zzU, 12, new zzdq() { // from class: com.google.android.gms.internal.ads.zzkv
            @Override // com.google.android.gms.internal.ads.zzdq
            public final void zza(Object obj) {
                zzkp zzkpVar = (zzkp) obj;
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzcd
    public final void zzj(final int i) {
        final zzkn zzU = zzU();
        zzZ(zzU, 4, new zzdq() { // from class: com.google.android.gms.internal.ads.zzly
            @Override // com.google.android.gms.internal.ads.zzdq
            public final void zza(Object obj) {
                ((zzkp) obj).zzk(zzkn.this, i);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzcd
    public final void zzk(final int i) {
        final zzkn zzU = zzU();
        zzZ(zzU, 6, new zzdq(i) { // from class: com.google.android.gms.internal.ads.zzmm
            @Override // com.google.android.gms.internal.ads.zzdq
            public final void zza(Object obj) {
                zzkp zzkpVar = (zzkp) obj;
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzcd
    public final void zzl(final zzbw zzbwVar) {
        final zzkn zzae = zzae(zzbwVar);
        zzZ(zzae, 10, new zzdq() { // from class: com.google.android.gms.internal.ads.zzlr
            @Override // com.google.android.gms.internal.ads.zzdq
            public final void zza(Object obj) {
                ((zzkp) obj).zzl(zzkn.this, zzbwVar);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzcd
    public final void zzm(final zzbw zzbwVar) {
        final zzkn zzae = zzae(zzbwVar);
        zzZ(zzae, 10, new zzdq() { // from class: com.google.android.gms.internal.ads.zzmb
            @Override // com.google.android.gms.internal.ads.zzdq
            public final void zza(Object obj) {
                zzkp zzkpVar = (zzkp) obj;
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzcd
    public final void zzn(final boolean z, final int i) {
        final zzkn zzU = zzU();
        zzZ(zzU, -1, new zzdq(z, i) { // from class: com.google.android.gms.internal.ads.zzkq
            @Override // com.google.android.gms.internal.ads.zzdq
            public final void zza(Object obj) {
                zzkp zzkpVar = (zzkp) obj;
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzcd
    public final void zzp() {
        final zzkn zzU = zzU();
        zzZ(zzU, -1, new zzdq() { // from class: com.google.android.gms.internal.ads.zzkx
            @Override // com.google.android.gms.internal.ads.zzdq
            public final void zza(Object obj) {
                zzkp zzkpVar = (zzkp) obj;
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzcd
    public final void zzq(final boolean z) {
        final zzkn zzad = zzad();
        zzZ(zzad, 23, new zzdq(z) { // from class: com.google.android.gms.internal.ads.zzlx
            @Override // com.google.android.gms.internal.ads.zzdq
            public final void zza(Object obj) {
                zzkp zzkpVar = (zzkp) obj;
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzcd
    public final void zzr(final int i, final int i2) {
        final zzkn zzad = zzad();
        zzZ(zzad, 24, new zzdq(i, i2) { // from class: com.google.android.gms.internal.ads.zzml
            @Override // com.google.android.gms.internal.ads.zzdq
            public final void zza(Object obj) {
                zzkp zzkpVar = (zzkp) obj;
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzcd
    public final void zzt(final zzcy zzcyVar) {
        final zzkn zzU = zzU();
        zzZ(zzU, 2, new zzdq() { // from class: com.google.android.gms.internal.ads.zzlg
            @Override // com.google.android.gms.internal.ads.zzdq
            public final void zza(Object obj) {
                zzkp zzkpVar = (zzkp) obj;
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzcd
    public final void zzu(final zzda zzdaVar) {
        final zzkn zzad = zzad();
        zzZ(zzad, 25, new zzdq() { // from class: com.google.android.gms.internal.ads.zzmi
            @Override // com.google.android.gms.internal.ads.zzdq
            public final void zza(Object obj) {
                zzkn zzknVar = zzkn.this;
                zzda zzdaVar2 = zzdaVar;
                ((zzkp) obj).zzq(zzknVar, zzdaVar2);
                int i = zzdaVar2.zzc;
                int i2 = zzdaVar2.zzd;
                int i3 = zzdaVar2.zze;
                float f2 = zzdaVar2.zzf;
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzcd
    public final void zzv(final float f2) {
        final zzkn zzad = zzad();
        zzZ(zzad, 22, new zzdq(f2) { // from class: com.google.android.gms.internal.ads.zzku
            @Override // com.google.android.gms.internal.ads.zzdq
            public final void zza(Object obj) {
                zzkp zzkpVar = (zzkp) obj;
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzkm
    public final void zzw(zzkp zzkpVar) {
        this.zzf.zzb(zzkpVar);
    }

    @Override // com.google.android.gms.internal.ads.zzkm
    public final void zzx() {
        if (this.zzi) {
            return;
        }
        final zzkn zzU = zzU();
        this.zzi = true;
        zzZ(zzU, -1, new zzdq() { // from class: com.google.android.gms.internal.ads.zzmh
            @Override // com.google.android.gms.internal.ads.zzdq
            public final void zza(Object obj) {
                zzkp zzkpVar = (zzkp) obj;
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzkm
    public final void zzy(final Exception exc) {
        final zzkn zzad = zzad();
        zzZ(zzad, 1029, new zzdq() { // from class: com.google.android.gms.internal.ads.zzlh
            @Override // com.google.android.gms.internal.ads.zzdq
            public final void zza(Object obj) {
                zzkp zzkpVar = (zzkp) obj;
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzkm
    public final void zzz(final String str, final long j, final long j2) {
        final zzkn zzad = zzad();
        zzZ(zzad, 1008, new zzdq(str, j2, j) { // from class: com.google.android.gms.internal.ads.zzls
            public final /* synthetic */ String zzb;

            @Override // com.google.android.gms.internal.ads.zzdq
            public final void zza(Object obj) {
                zzkp zzkpVar = (zzkp) obj;
            }
        });
    }

    private final zzkn zzaa(zzsh zzshVar) {
        this.zzg.getClass();
        zzcn zza = zzshVar == null ? null : this.zzd.zza(zzshVar);
        if (zzshVar == null || zza == null) {
            int zzf = this.zzg.zzf();
            zzcn zzn = this.zzg.zzn();
            if (zzf >= zzn.zzc()) {
                zzn = zzcn.zza;
            }
            return zzV(zzn, zzf, null);
        }
        return zzV(zza, zza.zzn(zzshVar.zza, this.zzb).zzd, zzshVar);
    }

    @Override // com.google.android.gms.internal.ads.zzkm
    public final void zzT(List list, zzsh zzshVar) {
        zzmp zzmpVar = this.zzd;
        zzcg zzcgVar = this.zzg;
        zzcgVar.getClass();
        zzmpVar.zzh(list, zzshVar, zzcgVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcd
    public final void zzo(final zzcf zzcfVar, final zzcf zzcfVar2, final int i) {
        if (i == 1) {
            this.zzi = false;
            i = 1;
        }
        zzmp zzmpVar = this.zzd;
        zzcg zzcgVar = this.zzg;
        zzcgVar.getClass();
        zzmpVar.zzg(zzcgVar);
        final zzkn zzU = zzU();
        zzZ(zzU, 11, new zzdq() { // from class: com.google.android.gms.internal.ads.zzld
            @Override // com.google.android.gms.internal.ads.zzdq
            public final void zza(Object obj) {
                zzkp zzkpVar = (zzkp) obj;
                zzkpVar.zzm(zzkn.this, zzcfVar, zzcfVar2, i);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzcd
    public final void zzs(zzcn zzcnVar, final int i) {
        zzmp zzmpVar = this.zzd;
        zzcg zzcgVar = this.zzg;
        zzcgVar.getClass();
        zzmpVar.zzi(zzcgVar);
        final zzkn zzU = zzU();
        zzZ(zzU, 0, new zzdq(i) { // from class: com.google.android.gms.internal.ads.zzln
            @Override // com.google.android.gms.internal.ads.zzdq
            public final void zza(Object obj) {
                zzkp zzkpVar = (zzkp) obj;
            }
        });
    }

    public zzmq(zzde zzdeVar) {
        zzdeVar.getClass();
        this.zza = zzdeVar;
        this.zzf = new zzdt(zzen.zzE(), zzdeVar, new zzdr() { // from class: com.google.android.gms.internal.ads.zzkw
            @Override // com.google.android.gms.internal.ads.zzdr
            public final void zza(Object obj, zzaa zzaaVar) {
                zzkp zzkpVar = (zzkp) obj;
            }
        });
        zzck zzckVar = new zzck();
        this.zzb = zzckVar;
        this.zzc = new zzcm();
        this.zzd = new zzmp(zzckVar);
        this.zze = new SparseArray();
    }
}
