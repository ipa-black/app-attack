package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.media.AudioTrack;
import android.os.Handler;
import android.os.Looper;
import android.util.Pair;
import android.view.Surface;
import com.google.android.exoplayer2.C;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.TimeoutException;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzis extends zzm implements zzcg {
    public static final /* synthetic */ int zzd = 0;
    private final zzkk zzA;
    private final zzkl zzB;
    private final long zzC;
    private int zzD;
    private int zzE;
    private boolean zzF;
    private int zzG;
    private zzkb zzH;
    private zzcc zzI;
    private zzbm zzJ;
    private zzbm zzK;
    private zzaf zzL;
    private zzaf zzM;
    private AudioTrack zzN;
    private Object zzO;
    private Surface zzP;
    private int zzQ;
    private int zzR;
    private int zzS;
    private zzgs zzT;
    private zzgs zzU;
    private int zzV;
    private zzk zzW;
    private float zzX;
    private boolean zzY;
    private zzdc zzZ;
    private boolean zzaa;
    private boolean zzab;
    private zzt zzac;
    private zzda zzad;
    private zzbm zzae;
    private zzjs zzaf;
    private int zzag;
    private long zzah;
    private final zzif zzai;
    private zzub zzaj;
    final zzwa zzb;
    final zzcc zzc;
    private final zzdg zze;
    private final Context zzf;
    private final zzcg zzg;
    private final zzjy[] zzh;
    private final zzvz zzi;
    private final zzdn zzj;
    private final zzjc zzk;
    private final zzdt zzl;
    private final CopyOnWriteArraySet zzm;
    private final zzck zzn;
    private final List zzo;
    private final boolean zzp;
    private final zzsg zzq;
    private final zzkm zzr;
    private final Looper zzs;
    private final zzwh zzt;
    private final zzde zzu;
    private final zzio zzv;
    private final zziq zzw;
    private final zzgm zzx;
    private final zzgq zzy;
    private final zzkj zzz;

    static {
        zzbh.zzb("media3.exoplayer");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v3, types: [com.google.android.gms.internal.ads.zzwg, java.lang.Object, com.google.android.gms.internal.ads.zzkm] */
    public zzis(zzhk zzhkVar, zzcg zzcgVar) {
        zzmz zza;
        Object obj;
        zzdg zzdgVar = new zzdg(zzde.zza);
        this.zze = zzdgVar;
        try {
            String hexString = Integer.toHexString(System.identityHashCode(this));
            String str = zzen.zze;
            zzdw.zzd("ExoPlayerImpl", "Init " + hexString + " [AndroidXMedia3/1.0.0-beta02] [" + str + "]");
            Context applicationContext = zzhkVar.zza.getApplicationContext();
            this.zzf = applicationContext;
            ?? apply = zzhkVar.zzh.apply(zzhkVar.zzb);
            this.zzr = apply;
            this.zzW = zzhkVar.zzj;
            this.zzQ = zzhkVar.zzk;
            this.zzY = false;
            this.zzC = zzhkVar.zzo;
            zzio zzioVar = new zzio(this, null);
            this.zzv = zzioVar;
            zziq zziqVar = new zziq(null);
            this.zzw = zziqVar;
            Handler handler = new Handler(zzhkVar.zzi);
            zzjy[] zza2 = ((zzhe) zzhkVar.zzc).zza.zza(handler, zzioVar, zzioVar, zzioVar, zzioVar);
            this.zzh = zza2;
            int length = zza2.length;
            zzvz zzvzVar = (zzvz) zzhkVar.zze.zza();
            this.zzi = zzvzVar;
            this.zzq = zzhk.zza(((zzhf) zzhkVar.zzd).zza);
            zzwl zzg = zzwl.zzg(((zzhi) zzhkVar.zzg).zza);
            this.zzt = zzg;
            this.zzp = zzhkVar.zzl;
            this.zzH = zzhkVar.zzm;
            Looper looper = zzhkVar.zzi;
            this.zzs = looper;
            zzde zzdeVar = zzhkVar.zzb;
            this.zzu = zzdeVar;
            this.zzg = zzcgVar;
            zzdt zzdtVar = new zzdt(looper, zzdeVar, new zzdr() { // from class: com.google.android.gms.internal.ads.zzie
                @Override // com.google.android.gms.internal.ads.zzdr
                public final void zza(Object obj2, zzaa zzaaVar) {
                    zzcd zzcdVar = (zzcd) obj2;
                }
            });
            this.zzl = zzdtVar;
            CopyOnWriteArraySet copyOnWriteArraySet = new CopyOnWriteArraySet();
            this.zzm = copyOnWriteArraySet;
            this.zzo = new ArrayList();
            this.zzaj = new zzub(0);
            int length2 = zza2.length;
            zzwa zzwaVar = new zzwa(new zzka[2], new zzvt[2], zzcy.zza, null);
            this.zzb = zzwaVar;
            this.zzn = new zzck();
            zzca zzcaVar = new zzca();
            zzcaVar.zzc(1, 2, 3, 13, 14, 15, 16, 17, 18, 19, 31, 20, 30, 21, 22, 23, 24, 25, 26, 27, 28);
            zzvzVar.zzl();
            zzcaVar.zzd(29, true);
            zzcc zze = zzcaVar.zze();
            this.zzc = zze;
            zzca zzcaVar2 = new zzca();
            zzcaVar2.zzb(zze);
            zzcaVar2.zza(4);
            zzcaVar2.zza(10);
            this.zzI = zzcaVar2.zze();
            this.zzj = zzdeVar.zzb(looper, null);
            zzif zzifVar = new zzif(this);
            this.zzai = zzifVar;
            this.zzaf = zzjs.zzg(zzwaVar);
            apply.zzS(zzcgVar, looper);
            if (zzen.zza < 31) {
                zza = new zzmz();
            } else {
                zza = zzih.zza(applicationContext, this, zzhkVar.zzp);
            }
            this.zzk = new zzjc(zza2, zzvzVar, zzwaVar, (zzjf) zzhkVar.zzf.zza(), zzg, 0, false, apply, this.zzH, zzhkVar.zzr, zzhkVar.zzn, false, looper, zzdeVar, zzifVar, zza, null);
            this.zzX = 1.0f;
            zzbm zzbmVar = zzbm.zza;
            this.zzJ = zzbmVar;
            this.zzK = zzbmVar;
            this.zzae = zzbmVar;
            this.zzag = -1;
            if (zzen.zza < 21) {
                AudioTrack audioTrack = this.zzN;
                if (audioTrack == null || audioTrack.getAudioSessionId() == 0) {
                    obj = null;
                } else {
                    this.zzN.release();
                    obj = null;
                    this.zzN = null;
                }
                if (this.zzN == null) {
                    this.zzN = new AudioTrack(3, 4000, 4, 2, 2, 0, 0);
                }
                this.zzV = this.zzN.getAudioSessionId();
            } else {
                obj = null;
                this.zzV = zzen.zzi(applicationContext);
            }
            this.zzZ = zzdc.zza;
            this.zzaa = true;
            apply.getClass();
            zzdtVar.zzb(apply);
            zzg.zze(new Handler(looper), apply);
            copyOnWriteArraySet.add(zzioVar);
            this.zzx = new zzgm(zzhkVar.zza, handler, zzioVar);
            this.zzy = new zzgq(zzhkVar.zza, handler, zzioVar);
            zzen.zzT(obj, obj);
            zzkj zzkjVar = new zzkj(zzhkVar.zza, handler, zzioVar);
            this.zzz = zzkjVar;
            int i = this.zzW.zzc;
            zzkjVar.zzf(3);
            this.zzA = new zzkk(zzhkVar.zza);
            this.zzB = new zzkl(zzhkVar.zza);
            this.zzac = zzal(zzkjVar);
            this.zzad = zzda.zza;
            zzvzVar.zzi(this.zzW);
            zzap(1, 10, Integer.valueOf(this.zzV));
            zzap(2, 10, Integer.valueOf(this.zzV));
            zzap(1, 3, this.zzW);
            zzap(2, 4, Integer.valueOf(this.zzQ));
            zzap(2, 5, 0);
            zzap(1, 9, Boolean.valueOf(this.zzY));
            zzap(2, 7, zziqVar);
            zzap(6, 8, zziqVar);
            zzdgVar.zze();
        } catch (Throwable th) {
            this.zze.zze();
            throw th;
        }
    }

    public static /* bridge */ /* synthetic */ zzkj zzB(zzis zzisVar) {
        return zzisVar.zzz;
    }

    public static /* bridge */ /* synthetic */ void zzG(zzis zzisVar, zzt zztVar) {
        zzisVar.zzac = zztVar;
    }

    public static /* bridge */ /* synthetic */ void zzN(zzis zzisVar, SurfaceTexture surfaceTexture) {
        Surface surface = new Surface(surfaceTexture);
        zzisVar.zzar(surface);
        zzisVar.zzP = surface;
    }

    private final int zzaf() {
        if (this.zzaf.zza.zzo()) {
            return this.zzag;
        }
        zzjs zzjsVar = this.zzaf;
        return zzjsVar.zza.zzn(zzjsVar.zzb.zza, this.zzn).zzd;
    }

    public static int zzag(boolean z, int i) {
        return (!z || i == 1) ? 1 : 2;
    }

    private final long zzah(zzjs zzjsVar) {
        if (zzjsVar.zza.zzo()) {
            return zzen.zzv(this.zzah);
        }
        if (zzjsVar.zzb.zzb()) {
            return zzjsVar.zzr;
        }
        zzcn zzcnVar = zzjsVar.zza;
        zzsh zzshVar = zzjsVar.zzb;
        long j = zzjsVar.zzr;
        zzaj(zzcnVar, zzshVar, j);
        return j;
    }

    private static long zzai(zzjs zzjsVar) {
        zzcm zzcmVar = new zzcm();
        zzck zzckVar = new zzck();
        zzjsVar.zza.zzn(zzjsVar.zzb.zza, zzckVar);
        long j = zzjsVar.zzc;
        if (j == C.TIME_UNSET) {
            long j2 = zzjsVar.zza.zze(zzckVar.zzd, zzcmVar, 0L).zzm;
            return 0L;
        }
        return j;
    }

    private final long zzaj(zzcn zzcnVar, zzsh zzshVar, long j) {
        zzcnVar.zzn(zzshVar.zza, this.zzn);
        return j;
    }

    private final Pair zzak(zzcn zzcnVar, int i, long j) {
        if (zzcnVar.zzo()) {
            this.zzag = i;
            if (j == C.TIME_UNSET) {
                j = 0;
            }
            this.zzah = j;
            return null;
        }
        if (i == -1 || i >= zzcnVar.zzc()) {
            i = zzcnVar.zzg(false);
            long j2 = zzcnVar.zze(i, this.zza, 0L).zzm;
            j = zzen.zzz(0L);
        }
        return zzcnVar.zzl(this.zza, this.zzn, i, zzen.zzv(j));
    }

    public static zzt zzal(zzkj zzkjVar) {
        return new zzt(0, zzkjVar.zzb(), zzkjVar.zza());
    }

    private final zzjs zzam(zzjs zzjsVar, zzcn zzcnVar, Pair pair) {
        zzsh zzshVar;
        zzwa zzwaVar;
        int i;
        zzjs zzb;
        zzdd.zzd(zzcnVar.zzo() || pair != null);
        zzcn zzcnVar2 = zzjsVar.zza;
        zzjs zzf = zzjsVar.zzf(zzcnVar);
        if (zzcnVar.zzo()) {
            zzsh zzh = zzjs.zzh();
            long zzv = zzen.zzv(this.zzah);
            zzjs zza = zzf.zzb(zzh, zzv, zzv, zzv, 0L, zzug.zza, this.zzb, zzgau.zzo()).zza(zzh);
            zza.zzp = zza.zzr;
            return zza;
        }
        Object obj = zzf.zzb.zza;
        int i2 = zzen.zza;
        boolean z = !obj.equals(pair.first);
        zzsh zzshVar2 = z ? new zzsh(pair.first) : zzf.zzb;
        long longValue = ((Long) pair.second).longValue();
        long zzv2 = zzen.zzv(zzk());
        if (!zzcnVar2.zzo()) {
            zzcnVar2.zzn(obj, this.zzn);
        }
        if (z || longValue < zzv2) {
            zzdd.zzf(!zzshVar2.zzb());
            zzug zzugVar = z ? zzug.zza : zzf.zzh;
            if (z) {
                zzshVar = zzshVar2;
                zzwaVar = this.zzb;
            } else {
                zzshVar = zzshVar2;
                zzwaVar = zzf.zzi;
            }
            zzjs zza2 = zzf.zzb(zzshVar, longValue, longValue, longValue, 0L, zzugVar, zzwaVar, z ? zzgau.zzo() : zzf.zzj).zza(zzshVar);
            zza2.zzp = longValue;
            return zza2;
        }
        if (i == 0) {
            int zza3 = zzcnVar.zza(zzf.zzk.zza);
            if (zza3 != -1 && zzcnVar.zzd(zza3, this.zzn, false).zzd == zzcnVar.zzn(zzshVar2.zza, this.zzn).zzd) {
                return zzf;
            }
            zzcnVar.zzn(zzshVar2.zza, this.zzn);
            long zzg = zzshVar2.zzb() ? this.zzn.zzg(zzshVar2.zzb, zzshVar2.zzc) : this.zzn.zze;
            zzb = zzf.zzb(zzshVar2, zzf.zzr, zzf.zzr, zzf.zzd, zzg - zzf.zzr, zzf.zzh, zzf.zzi, zzf.zzj).zza(zzshVar2);
            zzb.zzp = zzg;
        } else {
            zzdd.zzf(!zzshVar2.zzb());
            long max = Math.max(0L, zzf.zzq - (longValue - zzv2));
            long j = zzf.zzp;
            if (zzf.zzk.equals(zzf.zzb)) {
                j = longValue + max;
            }
            zzb = zzf.zzb(zzshVar2, longValue, longValue, longValue, max, zzf.zzh, zzf.zzi, zzf.zzj);
            zzb.zzp = j;
        }
        return zzb;
    }

    private final zzjv zzan(zzju zzjuVar) {
        int zzaf = zzaf();
        zzjc zzjcVar = this.zzk;
        zzcn zzcnVar = this.zzaf.zza;
        if (zzaf == -1) {
            zzaf = 0;
        }
        return new zzjv(zzjcVar, zzjuVar, zzcnVar, zzaf, this.zzu, zzjcVar.zzb());
    }

    public final void zzao(final int i, final int i2) {
        if (i == this.zzR && i2 == this.zzS) {
            return;
        }
        this.zzR = i;
        this.zzS = i2;
        zzdt zzdtVar = this.zzl;
        zzdtVar.zzd(24, new zzdq() { // from class: com.google.android.gms.internal.ads.zzhm
            @Override // com.google.android.gms.internal.ads.zzdq
            public final void zza(Object obj) {
                int i3 = i;
                int i4 = i2;
                int i5 = zzis.zzd;
                ((zzcd) obj).zzr(i3, i4);
            }
        });
        zzdtVar.zzc();
    }

    private final void zzap(int i, int i2, Object obj) {
        zzjy[] zzjyVarArr = this.zzh;
        int length = zzjyVarArr.length;
        for (int i3 = 0; i3 < 2; i3++) {
            zzjy zzjyVar = zzjyVarArr[i3];
            if (zzjyVar.zzb() == i) {
                zzjv zzan = zzan(zzjyVar);
                zzan.zzf(i2);
                zzan.zze(obj);
                zzan.zzd();
            }
        }
    }

    public final void zzaq() {
        zzap(1, 2, Float.valueOf(this.zzX * this.zzy.zza()));
    }

    public final void zzar(Object obj) {
        boolean z;
        ArrayList<zzjv> arrayList = new ArrayList();
        zzjy[] zzjyVarArr = this.zzh;
        int length = zzjyVarArr.length;
        int i = 0;
        while (true) {
            z = true;
            if (i >= 2) {
                break;
            }
            zzjy zzjyVar = zzjyVarArr[i];
            if (zzjyVar.zzb() == 2) {
                zzjv zzan = zzan(zzjyVar);
                zzan.zzf(1);
                zzan.zze(obj);
                zzan.zzd();
                arrayList.add(zzan);
            }
            i++;
        }
        Object obj2 = this.zzO;
        if (obj2 == null || obj2 == obj) {
            z = false;
        } else {
            try {
                for (zzjv zzjvVar : arrayList) {
                    zzjvVar.zzi(this.zzC);
                }
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
            } catch (TimeoutException unused2) {
            }
            z = false;
            Object obj3 = this.zzO;
            Surface surface = this.zzP;
            if (obj3 == surface) {
                surface.release();
                this.zzP = null;
            }
        }
        this.zzO = obj;
        if (z) {
            zzas(false, zzha.zzd(new zzjd(3), 1003));
        }
    }

    private final void zzas(boolean z, zzha zzhaVar) {
        zzjs zzjsVar = this.zzaf;
        zzjs zza = zzjsVar.zza(zzjsVar.zzb);
        zza.zzp = zza.zzr;
        zza.zzq = 0L;
        zzjs zze = zza.zze(1);
        if (zzhaVar != null) {
            zze = zze.zzd(zzhaVar);
        }
        zzjs zzjsVar2 = zze;
        this.zzD++;
        this.zzk.zzo();
        zzau(zzjsVar2, 0, 1, false, zzjsVar2.zza.zzo() && !this.zzaf.zza.zzo(), 4, zzah(zzjsVar2), -1, false);
    }

    public final void zzat(boolean z, int i, int i2) {
        int i3 = 0;
        boolean z2 = z && i != -1;
        if (z2 && i != 1) {
            i3 = 1;
        }
        zzjs zzjsVar = this.zzaf;
        if (zzjsVar.zzl == z2 && zzjsVar.zzm == i3) {
            return;
        }
        this.zzD++;
        zzjs zzc = zzjsVar.zzc(z2, i3);
        this.zzk.zzn(z2, i3);
        zzau(zzc, 0, i2, false, false, 5, C.TIME_UNSET, -1, false);
    }

    /* JADX WARN: Removed duplicated region for block: B:234:0x024e  */
    /* JADX WARN: Removed duplicated region for block: B:235:0x0281  */
    /* JADX WARN: Removed duplicated region for block: B:238:0x029a  */
    /* JADX WARN: Removed duplicated region for block: B:239:0x02a7  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void zzau(final com.google.android.gms.internal.ads.zzjs r42, final int r43, final int r44, boolean r45, boolean r46, final int r47, long r48, int r50, boolean r51) {
        /*
            Method dump skipped, instructions count: 995
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzis.zzau(com.google.android.gms.internal.ads.zzjs, int, int, boolean, boolean, int, long, int, boolean):void");
    }

    public final void zzav() {
        int zzh = zzh();
        if (zzh == 2 || zzh == 3) {
            zzaw();
            boolean z = this.zzaf.zzo;
            zzq();
            zzq();
        }
    }

    private final void zzaw() {
        this.zze.zzb();
        if (Thread.currentThread() != this.zzs.getThread()) {
            String zzI = zzen.zzI("Player is accessed on the wrong thread.\nCurrent thread: '%s'\nExpected thread: '%s'\nSee https://exoplayer.dev/issues/player-accessed-on-wrong-thread", Thread.currentThread().getName(), this.zzs.getThread().getName());
            if (this.zzaa) {
                throw new IllegalStateException(zzI);
            }
            zzdw.zzf("ExoPlayerImpl", zzI, this.zzab ? null : new IllegalStateException());
            this.zzab = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean zzax(zzjs zzjsVar) {
        return zzjsVar.zze == 3 && zzjsVar.zzl && zzjsVar.zzm == 0;
    }

    public static /* bridge */ /* synthetic */ zzt zzx(zzis zzisVar) {
        return zzisVar.zzac;
    }

    public static /* bridge */ /* synthetic */ zzt zzy(zzkj zzkjVar) {
        return zzal(zzkjVar);
    }

    public static /* bridge */ /* synthetic */ zzdt zzz(zzis zzisVar) {
        return zzisVar.zzl;
    }

    public final zzha zzA() {
        zzaw();
        return this.zzaf.zzf;
    }

    public final /* synthetic */ void zzS(zzja zzjaVar) {
        long j;
        boolean z;
        long j2;
        int i = this.zzD - zzjaVar.zzb;
        this.zzD = i;
        boolean z2 = true;
        if (zzjaVar.zzc) {
            this.zzE = zzjaVar.zzd;
            this.zzF = true;
        }
        if (zzjaVar.zze) {
            this.zzG = zzjaVar.zzf;
        }
        if (i == 0) {
            zzcn zzcnVar = zzjaVar.zza.zza;
            if (!this.zzaf.zza.zzo() && zzcnVar.zzo()) {
                this.zzag = -1;
                this.zzah = 0L;
            }
            if (!zzcnVar.zzo()) {
                List zzw = ((zzjw) zzcnVar).zzw();
                zzdd.zzf(zzw.size() == this.zzo.size());
                for (int i2 = 0; i2 < zzw.size(); i2++) {
                    ((zzir) this.zzo.get(i2)).zzb = (zzcn) zzw.get(i2);
                }
            }
            if (this.zzF) {
                if (zzjaVar.zza.zzb.equals(this.zzaf.zzb) && zzjaVar.zza.zzd == this.zzaf.zzr) {
                    z2 = false;
                }
                if (z2) {
                    if (zzcnVar.zzo() || zzjaVar.zza.zzb.zzb()) {
                        j2 = zzjaVar.zza.zzd;
                    } else {
                        zzjs zzjsVar = zzjaVar.zza;
                        zzsh zzshVar = zzjsVar.zzb;
                        j2 = zzjsVar.zzd;
                        zzaj(zzcnVar, zzshVar, j2);
                    }
                    z = z2;
                    j = j2;
                } else {
                    j = -9223372036854775807L;
                    z = z2;
                }
            } else {
                j = -9223372036854775807L;
                z = false;
            }
            this.zzF = false;
            zzau(zzjaVar.zza, 1, this.zzG, false, z, this.zzE, j, -1, false);
        }
    }

    public final /* synthetic */ void zzT(final zzja zzjaVar) {
        this.zzj.zzg(new Runnable() { // from class: com.google.android.gms.internal.ads.zzig
            @Override // java.lang.Runnable
            public final void run() {
                zzis.this.zzS(zzjaVar);
            }
        });
    }

    public final /* synthetic */ void zzU(zzcd zzcdVar) {
        zzcdVar.zza(this.zzI);
    }

    public final void zzW() {
        zzaw();
        boolean zzq = zzq();
        int zzb = this.zzy.zzb(zzq, 2);
        zzat(zzq, zzb, zzag(zzq, zzb));
        zzjs zzjsVar = this.zzaf;
        if (zzjsVar.zze != 1) {
            return;
        }
        zzjs zzd2 = zzjsVar.zzd(null);
        zzjs zze = zzd2.zze(true == zzd2.zza.zzo() ? 4 : 2);
        this.zzD++;
        this.zzk.zzk();
        zzau(zze, 1, 1, false, false, 5, C.TIME_UNSET, -1, false);
    }

    public final void zzX() {
        AudioTrack audioTrack;
        String hexString = Integer.toHexString(System.identityHashCode(this));
        String str = zzen.zze;
        String zza = zzbh.zza();
        zzdw.zzd("ExoPlayerImpl", "Release " + hexString + " [AndroidXMedia3/1.0.0-beta02] [" + str + "] [" + zza + "]");
        zzaw();
        if (zzen.zza < 21 && (audioTrack = this.zzN) != null) {
            audioTrack.release();
            this.zzN = null;
        }
        this.zzz.zze();
        this.zzy.zzd();
        if (!this.zzk.zzp()) {
            zzdt zzdtVar = this.zzl;
            zzdtVar.zzd(10, new zzdq() { // from class: com.google.android.gms.internal.ads.zzhl
                @Override // com.google.android.gms.internal.ads.zzdq
                public final void zza(Object obj) {
                    ((zzcd) obj).zzl(zzha.zzd(new zzjd(1), 1003));
                }
            });
            zzdtVar.zzc();
        }
        this.zzl.zze();
        this.zzj.zzd(null);
        this.zzt.zzf(this.zzr);
        zzjs zze = this.zzaf.zze(1);
        this.zzaf = zze;
        zzjs zza2 = zze.zza(zze.zzb);
        this.zzaf = zza2;
        zza2.zzp = zza2.zzr;
        this.zzaf.zzq = 0L;
        this.zzr.zzQ();
        this.zzi.zzh();
        Surface surface = this.zzP;
        if (surface != null) {
            surface.release();
            this.zzP = null;
        }
        this.zzZ = zzdc.zza;
    }

    public final void zzY(zzkp zzkpVar) {
        this.zzr.zzR(zzkpVar);
    }

    public final void zzZ(zzsj zzsjVar) {
        zzaw();
        List singletonList = Collections.singletonList(zzsjVar);
        zzaw();
        zzaw();
        zzaf();
        zzl();
        this.zzD++;
        if (!this.zzo.isEmpty()) {
            int size = this.zzo.size();
            for (int i = size - 1; i >= 0; i--) {
                this.zzo.remove(i);
            }
            this.zzaj = this.zzaj.zzh(0, size);
        }
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < singletonList.size(); i2++) {
            zzjp zzjpVar = new zzjp((zzsj) singletonList.get(i2), this.zzp);
            arrayList.add(zzjpVar);
            this.zzo.add(i2, new zzir(zzjpVar.zzb, zzjpVar.zza.zzB()));
        }
        this.zzaj = this.zzaj.zzg(0, arrayList.size());
        zzjw zzjwVar = new zzjw(this.zzo, this.zzaj, null);
        if (zzjwVar.zzo() || zzjwVar.zzc() >= 0) {
            int zzg = zzjwVar.zzg(false);
            zzjs zzam = zzam(this.zzaf, zzjwVar, zzak(zzjwVar, zzg, C.TIME_UNSET));
            int i3 = zzam.zze;
            if (zzg != -1 && i3 != 1) {
                i3 = 4;
                if (!zzjwVar.zzo() && zzg < zzjwVar.zzc()) {
                    i3 = 2;
                }
            }
            zzjs zze = zzam.zze(i3);
            this.zzk.zzq(arrayList, zzg, zzen.zzv(C.TIME_UNSET), this.zzaj);
            zzau(zze, 0, 1, false, (this.zzaf.zzb.zza.equals(zze.zzb.zza) || this.zzaf.zza.zzo()) ? false : true, 4, zzah(zze), -1, false);
            return;
        }
        throw new zzag(zzjwVar, -1, C.TIME_UNSET);
    }

    public final void zzaa(boolean z) {
        zzaw();
        int zzb = this.zzy.zzb(z, zzh());
        zzat(z, zzb, zzag(z, zzb));
    }

    public final void zzab(Surface surface) {
        zzaw();
        zzar(surface);
        int i = surface == null ? 0 : -1;
        zzao(i, i);
    }

    public final void zzac(float f2) {
        zzaw();
        final float zza = zzen.zza(f2, 0.0f, 1.0f);
        if (this.zzX == zza) {
            return;
        }
        this.zzX = zza;
        zzaq();
        zzdt zzdtVar = this.zzl;
        zzdtVar.zzd(22, new zzdq() { // from class: com.google.android.gms.internal.ads.zzic
            @Override // com.google.android.gms.internal.ads.zzdq
            public final void zza(Object obj) {
                float f3 = zza;
                int i = zzis.zzd;
                ((zzcd) obj).zzv(f3);
            }
        });
        zzdtVar.zzc();
    }

    public final void zzad() {
        zzaw();
        zzaw();
        this.zzy.zzb(zzq(), 1);
        zzas(false, null);
        this.zzZ = new zzdc(zzgau.zzo(), this.zzaf.zzr);
    }

    @Override // com.google.android.gms.internal.ads.zzcg
    public final int zzd() {
        zzaw();
        if (zzs()) {
            return this.zzaf.zzb.zzb;
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.ads.zzcg
    public final int zze() {
        zzaw();
        if (zzs()) {
            return this.zzaf.zzb.zzc;
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.ads.zzcg
    public final int zzf() {
        zzaw();
        int zzaf = zzaf();
        if (zzaf == -1) {
            return 0;
        }
        return zzaf;
    }

    @Override // com.google.android.gms.internal.ads.zzcg
    public final int zzg() {
        zzaw();
        if (this.zzaf.zza.zzo()) {
            return 0;
        }
        zzjs zzjsVar = this.zzaf;
        return zzjsVar.zza.zza(zzjsVar.zzb.zza);
    }

    @Override // com.google.android.gms.internal.ads.zzcg
    public final int zzh() {
        zzaw();
        return this.zzaf.zze;
    }

    @Override // com.google.android.gms.internal.ads.zzcg
    public final int zzi() {
        zzaw();
        return this.zzaf.zzm;
    }

    @Override // com.google.android.gms.internal.ads.zzcg
    public final int zzj() {
        zzaw();
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzcg
    public final long zzk() {
        zzaw();
        if (zzs()) {
            zzjs zzjsVar = this.zzaf;
            zzjsVar.zza.zzn(zzjsVar.zzb.zza, this.zzn);
            zzjs zzjsVar2 = this.zzaf;
            if (zzjsVar2.zzc != C.TIME_UNSET) {
                return zzen.zzz(0L) + zzen.zzz(this.zzaf.zzc);
            }
            long j = zzjsVar2.zza.zze(zzf(), this.zza, 0L).zzm;
            return zzen.zzz(0L);
        }
        return zzl();
    }

    @Override // com.google.android.gms.internal.ads.zzcg
    public final long zzl() {
        zzaw();
        return zzen.zzz(zzah(this.zzaf));
    }

    @Override // com.google.android.gms.internal.ads.zzcg
    public final long zzm() {
        zzaw();
        return zzen.zzz(this.zzaf.zzq);
    }

    @Override // com.google.android.gms.internal.ads.zzcg
    public final zzcn zzn() {
        zzaw();
        return this.zzaf.zza;
    }

    @Override // com.google.android.gms.internal.ads.zzcg
    public final zzcy zzo() {
        zzaw();
        return this.zzaf.zzi.zzd;
    }

    @Override // com.google.android.gms.internal.ads.zzcg
    public final void zzp(int i, long j) {
        zzaw();
        this.zzr.zzx();
        zzcn zzcnVar = this.zzaf.zza;
        if (i >= 0 && (zzcnVar.zzo() || i < zzcnVar.zzc())) {
            this.zzD++;
            if (zzs()) {
                zzdw.zze("ExoPlayerImpl", "seekTo ignored because an ad is playing");
                zzja zzjaVar = new zzja(this.zzaf);
                zzjaVar.zza(1);
                this.zzai.zza.zzT(zzjaVar);
                return;
            }
            int i2 = zzh() != 1 ? 2 : 1;
            int zzf = zzf();
            zzjs zzam = zzam(this.zzaf.zze(i2), zzcnVar, zzak(zzcnVar, i, j));
            this.zzk.zzl(zzcnVar, i, zzen.zzv(j));
            zzau(zzam, 0, 1, true, true, 1, zzah(zzam), zzf, false);
            return;
        }
        throw new zzag(zzcnVar, i, j);
    }

    @Override // com.google.android.gms.internal.ads.zzcg
    public final boolean zzq() {
        zzaw();
        return this.zzaf.zzl;
    }

    @Override // com.google.android.gms.internal.ads.zzcg
    public final boolean zzr() {
        zzaw();
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzcg
    public final boolean zzs() {
        zzaw();
        return this.zzaf.zzb.zzb();
    }

    public final int zzu() {
        zzaw();
        int length = this.zzh.length;
        return 2;
    }

    public final long zzv() {
        zzaw();
        if (!zzs()) {
            zzaw();
            if (this.zzaf.zza.zzo()) {
                return this.zzah;
            }
            zzjs zzjsVar = this.zzaf;
            long j = 0;
            if (zzjsVar.zzk.zzd != zzjsVar.zzb.zzd) {
                return zzen.zzz(zzjsVar.zza.zze(zzf(), this.zza, 0L).zzn);
            }
            long j2 = zzjsVar.zzp;
            if (this.zzaf.zzk.zzb()) {
                zzjs zzjsVar2 = this.zzaf;
                zzjsVar2.zza.zzn(zzjsVar2.zzk.zza, this.zzn).zzh(this.zzaf.zzk.zzb);
            } else {
                j = j2;
            }
            zzjs zzjsVar3 = this.zzaf;
            zzaj(zzjsVar3.zza, zzjsVar3.zzk, j);
            return zzen.zzz(j);
        }
        zzjs zzjsVar4 = this.zzaf;
        if (zzjsVar4.zzk.equals(zzjsVar4.zzb)) {
            return zzen.zzz(this.zzaf.zzp);
        }
        return zzw();
    }

    public final long zzw() {
        zzaw();
        if (!zzs()) {
            zzcn zzn = zzn();
            return zzn.zzo() ? C.TIME_UNSET : zzen.zzz(zzn.zze(zzf(), this.zza, 0L).zzn);
        }
        zzjs zzjsVar = this.zzaf;
        zzsh zzshVar = zzjsVar.zzb;
        zzjsVar.zza.zzn(zzshVar.zza, this.zzn);
        return zzen.zzz(this.zzn.zzg(zzshVar.zzb, zzshVar.zzc));
    }

    public final void zzR(zzkp zzkpVar) {
        zzkm zzkmVar = this.zzr;
        zzkpVar.getClass();
        zzkmVar.zzw(zzkpVar);
    }
}
