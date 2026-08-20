package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.exoplayer2.C;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.TimeoutException;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzasw implements zzast {
    private final zzati[] zza;
    private final zzazo zzb;
    private final zzazm zzc;
    private final Handler zzd;
    private final zzatb zze;
    private final CopyOnWriteArraySet zzf;
    private final zzatn zzg;
    private final zzatm zzh;
    private boolean zzi;
    private boolean zzj;
    private int zzk;
    private int zzl;
    private int zzm;
    private boolean zzn;
    private zzato zzo;
    private Object zzp;
    private zzaza zzq;
    private zzazm zzr;
    private zzath zzs;
    private zzasy zzt;
    private long zzu;

    public zzasw(zzati[] zzatiVarArr, zzazo zzazoVar, zzcku zzckuVar, byte[] bArr) {
        String str = zzbay.zze;
        Log.i("ExoPlayerImpl", "Init ExoPlayerLib/2.4.2 [" + str + "]");
        this.zza = zzatiVarArr;
        zzazoVar.getClass();
        this.zzb = zzazoVar;
        this.zzj = false;
        this.zzk = 1;
        this.zzf = new CopyOnWriteArraySet();
        zzazm zzazmVar = new zzazm(new zzaze[2], null);
        this.zzc = zzazmVar;
        this.zzo = zzato.zza;
        this.zzg = new zzatn();
        this.zzh = new zzatm();
        this.zzq = zzaza.zza;
        this.zzr = zzazmVar;
        this.zzs = zzath.zza;
        zzasv zzasvVar = new zzasv(this, Looper.myLooper() != null ? Looper.myLooper() : Looper.getMainLooper());
        this.zzd = zzasvVar;
        this.zzt = new zzasy(0, 0L);
        this.zze = new zzatb(zzatiVarArr, zzazoVar, zzckuVar, this.zzj, 0, zzasvVar, this.zzt, this, null);
    }

    @Override // com.google.android.gms.internal.ads.zzast
    public final int zza() {
        return this.zzk;
    }

    @Override // com.google.android.gms.internal.ads.zzast
    public final long zzb() {
        if (this.zzo.zzh() || this.zzl > 0) {
            return this.zzu;
        }
        this.zzo.zzd(this.zzt.zza, this.zzh, false);
        return zzaso.zzb(0L) + zzaso.zzb(this.zzt.zzd);
    }

    @Override // com.google.android.gms.internal.ads.zzast
    public final long zzc() {
        if (this.zzo.zzh() || this.zzl > 0) {
            return this.zzu;
        }
        this.zzo.zzd(this.zzt.zza, this.zzh, false);
        return zzaso.zzb(0L) + zzaso.zzb(this.zzt.zzc);
    }

    @Override // com.google.android.gms.internal.ads.zzast
    public final long zzd() {
        if (this.zzo.zzh()) {
            return C.TIME_UNSET;
        }
        zzato zzatoVar = this.zzo;
        zzs();
        return zzaso.zzb(zzatoVar.zzg(0, this.zzg, false).zza);
    }

    @Override // com.google.android.gms.internal.ads.zzast
    public final void zze(zzasq zzasqVar) {
        this.zzf.add(zzasqVar);
    }

    @Override // com.google.android.gms.internal.ads.zzast
    public final void zzf(zzass... zzassVarArr) {
        if (this.zze.zzr()) {
            if (this.zze.zzq(zzassVarArr)) {
                return;
            }
            Iterator it = this.zzf.iterator();
            while (it.hasNext()) {
                ((zzasq) it.next()).zzc(zzasp.zzc(new RuntimeException(new TimeoutException("ExoPlayer3 blockingSendMessages timeout"))));
            }
            return;
        }
        this.zze.zza(zzassVarArr);
    }

    @Override // com.google.android.gms.internal.ads.zzast
    public final void zzg() {
        this.zze.zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzast
    public final void zzh(int i) {
        this.zze.zzc(i);
    }

    @Override // com.google.android.gms.internal.ads.zzast
    public final void zzi() {
        this.zze.zzd();
    }

    @Override // com.google.android.gms.internal.ads.zzast
    public final void zzj(zzayl zzaylVar) {
        if (!this.zzo.zzh() || this.zzp != null) {
            this.zzo = zzato.zza;
            this.zzp = null;
            Iterator it = this.zzf.iterator();
            while (it.hasNext()) {
                ((zzasq) it.next()).zzf(this.zzo, this.zzp);
            }
        }
        if (this.zzi) {
            this.zzi = false;
            this.zzq = zzaza.zza;
            this.zzr = this.zzc;
            this.zzb.zzd(null);
            Iterator it2 = this.zzf.iterator();
            while (it2.hasNext()) {
                ((zzasq) it2.next()).zzg(this.zzq, this.zzr);
            }
        }
        this.zzm++;
        this.zze.zzi(zzaylVar, true);
    }

    @Override // com.google.android.gms.internal.ads.zzast
    public final void zzk() {
        if (this.zze.zzr()) {
            if (!this.zze.zzs()) {
                Iterator it = this.zzf.iterator();
                while (it.hasNext()) {
                    ((zzasq) it.next()).zzc(zzasp.zzc(new RuntimeException(new TimeoutException("ExoPlayer3 release timeout"))));
                }
            }
            this.zzd.removeCallbacksAndMessages(null);
            return;
        }
        this.zze.zzj();
        this.zzd.removeCallbacksAndMessages(null);
    }

    @Override // com.google.android.gms.internal.ads.zzast
    public final void zzl(zzasq zzasqVar) {
        this.zzf.remove(zzasqVar);
    }

    @Override // com.google.android.gms.internal.ads.zzast
    public final void zzm(long j) {
        zzs();
        if (this.zzo.zzh() || this.zzo.zzc() > 0) {
            this.zzl++;
            if (!this.zzo.zzh()) {
                this.zzo.zzg(0, this.zzg, false);
                zzaso.zza(j);
                long j2 = this.zzo.zzd(0, this.zzh, false).zzc;
            }
            this.zzu = j;
            this.zze.zzk(this.zzo, 0, zzaso.zza(j));
            Iterator it = this.zzf.iterator();
            while (it.hasNext()) {
                ((zzasq) it.next()).zze();
            }
            return;
        }
        throw new zzatf(this.zzo, 0, j);
    }

    @Override // com.google.android.gms.internal.ads.zzast
    public final void zzn(zzass... zzassVarArr) {
        this.zze.zzl(zzassVarArr);
    }

    @Override // com.google.android.gms.internal.ads.zzast
    public final void zzo(int i) {
        this.zze.zzm(i);
    }

    @Override // com.google.android.gms.internal.ads.zzast
    public final void zzp(int i) {
        this.zze.zzn(i);
    }

    @Override // com.google.android.gms.internal.ads.zzast
    public final void zzq(boolean z) {
        if (this.zzj != z) {
            this.zzj = z;
            this.zze.zzo(z);
            Iterator it = this.zzf.iterator();
            while (it.hasNext()) {
                ((zzasq) it.next()).zzd(z, this.zzk);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzast
    public final void zzr() {
        this.zze.zzp();
    }

    public final int zzs() {
        if (!this.zzo.zzh() && this.zzl <= 0) {
            this.zzo.zzd(this.zzt.zza, this.zzh, false);
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzt(Message message) {
        switch (message.what) {
            case 0:
                this.zzm--;
                return;
            case 1:
                this.zzk = message.arg1;
                Iterator it = this.zzf.iterator();
                while (it.hasNext()) {
                    ((zzasq) it.next()).zzd(this.zzj, this.zzk);
                }
                return;
            case 2:
                this.zzn = message.arg1 != 0;
                Iterator it2 = this.zzf.iterator();
                while (it2.hasNext()) {
                    ((zzasq) it2.next()).zza(this.zzn);
                }
                return;
            case 3:
                if (this.zzm == 0) {
                    zzazp zzazpVar = (zzazp) message.obj;
                    this.zzi = true;
                    this.zzq = zzazpVar.zza;
                    this.zzr = zzazpVar.zzb;
                    this.zzb.zzd(zzazpVar.zzc);
                    Iterator it3 = this.zzf.iterator();
                    while (it3.hasNext()) {
                        ((zzasq) it3.next()).zzg(this.zzq, this.zzr);
                    }
                    return;
                }
                return;
            case 4:
                int i = this.zzl - 1;
                this.zzl = i;
                if (i == 0) {
                    this.zzt = (zzasy) message.obj;
                    if (message.arg1 != 0) {
                        Iterator it4 = this.zzf.iterator();
                        while (it4.hasNext()) {
                            ((zzasq) it4.next()).zze();
                        }
                        return;
                    }
                    return;
                }
                return;
            case 5:
                if (this.zzl == 0) {
                    this.zzt = (zzasy) message.obj;
                    Iterator it5 = this.zzf.iterator();
                    while (it5.hasNext()) {
                        ((zzasq) it5.next()).zze();
                    }
                    return;
                }
                return;
            case 6:
                zzata zzataVar = (zzata) message.obj;
                this.zzl -= zzataVar.zzd;
                if (this.zzm == 0) {
                    this.zzo = zzataVar.zza;
                    this.zzp = zzataVar.zzb;
                    this.zzt = zzataVar.zzc;
                    Iterator it6 = this.zzf.iterator();
                    while (it6.hasNext()) {
                        ((zzasq) it6.next()).zzf(this.zzo, this.zzp);
                    }
                    return;
                }
                return;
            case 7:
                zzath zzathVar = (zzath) message.obj;
                if (this.zzs.equals(zzathVar)) {
                    return;
                }
                this.zzs = zzathVar;
                Iterator it7 = this.zzf.iterator();
                while (it7.hasNext()) {
                    ((zzasq) it7.next()).zzb(zzathVar);
                }
                return;
            case 8:
                zzasp zzaspVar = (zzasp) message.obj;
                Iterator it8 = this.zzf.iterator();
                while (it8.hasNext()) {
                    ((zzasq) it8.next()).zzc(zzaspVar);
                }
                return;
            default:
                throw new IllegalStateException();
        }
    }
}
