package com.google.android.gms.ads.internal;

import android.os.Build;
import com.google.android.gms.ads.internal.overlay.zzw;
import com.google.android.gms.ads.internal.util.zzaa;
import com.google.android.gms.ads.internal.util.zzab;
import com.google.android.gms.ads.internal.util.zzaw;
import com.google.android.gms.ads.internal.util.zzbv;
import com.google.android.gms.ads.internal.util.zzbw;
import com.google.android.gms.ads.internal.util.zzcg;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.DefaultClock;
import com.google.android.gms.internal.ads.zzbcr;
import com.google.android.gms.internal.ads.zzbee;
import com.google.android.gms.internal.ads.zzbet;
import com.google.android.gms.internal.ads.zzbjp;
import com.google.android.gms.internal.ads.zzbsz;
import com.google.android.gms.internal.ads.zzbuk;
import com.google.android.gms.internal.ads.zzbvp;
import com.google.android.gms.internal.ads.zzccj;
import com.google.android.gms.internal.ads.zzcft;
import com.google.android.gms.internal.ads.zzcgx;
import com.google.android.gms.internal.ads.zzcih;
import com.google.android.gms.internal.ads.zzcio;
import com.google.android.gms.internal.ads.zzclt;
import com.google.android.gms.internal.ads.zzcoa;
import com.google.android.gms.internal.ads.zzekm;
import com.google.android.gms.internal.ads.zzekn;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes3.dex */
public final class zzt {
    private static final zzt zza = new zzt();
    private final zzcft zzA;
    private final zzcg zzB;
    private final zzclt zzC;
    private final zzcio zzD;
    private final com.google.android.gms.ads.internal.overlay.zza zzb;
    private final com.google.android.gms.ads.internal.overlay.zzm zzc;
    private final com.google.android.gms.ads.internal.util.zzs zzd;
    private final zzcoa zze;
    private final zzaa zzf;
    private final zzbcr zzg;
    private final zzcgx zzh;
    private final zzab zzi;
    private final zzbee zzj;
    private final Clock zzk;
    private final zze zzl;
    private final zzbjp zzm;
    private final zzaw zzn;
    private final zzccj zzo;
    private final zzbsz zzp;
    private final zzcih zzq;
    private final zzbuk zzr;
    private final zzw zzs;
    private final zzbv zzt;
    private final com.google.android.gms.ads.internal.overlay.zzaa zzu;
    private final com.google.android.gms.ads.internal.overlay.zzab zzv;
    private final zzbvp zzw;
    private final zzbw zzx;
    private final zzekn zzy;
    private final zzbet zzz;

    protected zzt() {
        com.google.android.gms.ads.internal.overlay.zza zzaVar = new com.google.android.gms.ads.internal.overlay.zza();
        com.google.android.gms.ads.internal.overlay.zzm zzmVar = new com.google.android.gms.ads.internal.overlay.zzm();
        com.google.android.gms.ads.internal.util.zzs zzsVar = new com.google.android.gms.ads.internal.util.zzs();
        zzcoa zzcoaVar = new zzcoa();
        zzaa zzn = zzaa.zzn(Build.VERSION.SDK_INT);
        zzbcr zzbcrVar = new zzbcr();
        zzcgx zzcgxVar = new zzcgx();
        zzab zzabVar = new zzab();
        zzbee zzbeeVar = new zzbee();
        Clock defaultClock = DefaultClock.getInstance();
        zze zzeVar = new zze();
        zzbjp zzbjpVar = new zzbjp();
        zzaw zzawVar = new zzaw();
        zzccj zzccjVar = new zzccj();
        zzbsz zzbszVar = new zzbsz();
        zzcih zzcihVar = new zzcih();
        zzbuk zzbukVar = new zzbuk();
        zzw zzwVar = new zzw();
        zzbv zzbvVar = new zzbv();
        com.google.android.gms.ads.internal.overlay.zzaa zzaaVar = new com.google.android.gms.ads.internal.overlay.zzaa();
        com.google.android.gms.ads.internal.overlay.zzab zzabVar2 = new com.google.android.gms.ads.internal.overlay.zzab();
        zzbvp zzbvpVar = new zzbvp();
        zzbw zzbwVar = new zzbw();
        zzekm zzekmVar = new zzekm();
        zzbet zzbetVar = new zzbet();
        zzcft zzcftVar = new zzcft();
        zzcg zzcgVar = new zzcg();
        zzclt zzcltVar = new zzclt();
        zzcio zzcioVar = new zzcio();
        this.zzb = zzaVar;
        this.zzc = zzmVar;
        this.zzd = zzsVar;
        this.zze = zzcoaVar;
        this.zzf = zzn;
        this.zzg = zzbcrVar;
        this.zzh = zzcgxVar;
        this.zzi = zzabVar;
        this.zzj = zzbeeVar;
        this.zzk = defaultClock;
        this.zzl = zzeVar;
        this.zzm = zzbjpVar;
        this.zzn = zzawVar;
        this.zzo = zzccjVar;
        this.zzp = zzbszVar;
        this.zzq = zzcihVar;
        this.zzr = zzbukVar;
        this.zzt = zzbvVar;
        this.zzs = zzwVar;
        this.zzu = zzaaVar;
        this.zzv = zzabVar2;
        this.zzw = zzbvpVar;
        this.zzx = zzbwVar;
        this.zzy = zzekmVar;
        this.zzz = zzbetVar;
        this.zzA = zzcftVar;
        this.zzB = zzcgVar;
        this.zzC = zzcltVar;
        this.zzD = zzcioVar;
    }

    public static zzekn zzA() {
        return zza.zzy;
    }

    public static Clock zzB() {
        return zza.zzk;
    }

    public static zze zza() {
        return zza.zzl;
    }

    public static zzbcr zzb() {
        return zza.zzg;
    }

    public static zzbee zzc() {
        return zza.zzj;
    }

    public static zzbet zzd() {
        return zza.zzz;
    }

    public static zzbjp zze() {
        return zza.zzm;
    }

    public static zzbuk zzf() {
        return zza.zzr;
    }

    public static zzbvp zzg() {
        return zza.zzw;
    }

    public static com.google.android.gms.ads.internal.overlay.zza zzh() {
        return zza.zzb;
    }

    public static com.google.android.gms.ads.internal.overlay.zzm zzi() {
        return zza.zzc;
    }

    public static zzw zzj() {
        return zza.zzs;
    }

    public static com.google.android.gms.ads.internal.overlay.zzaa zzk() {
        return zza.zzu;
    }

    public static com.google.android.gms.ads.internal.overlay.zzab zzl() {
        return zza.zzv;
    }

    public static zzccj zzm() {
        return zza.zzo;
    }

    public static zzcft zzn() {
        return zza.zzA;
    }

    public static zzcgx zzo() {
        return zza.zzh;
    }

    public static com.google.android.gms.ads.internal.util.zzs zzp() {
        return zza.zzd;
    }

    public static zzaa zzq() {
        return zza.zzf;
    }

    public static zzab zzr() {
        return zza.zzi;
    }

    public static zzaw zzs() {
        return zza.zzn;
    }

    public static zzbv zzt() {
        return zza.zzt;
    }

    public static zzbw zzu() {
        return zza.zzx;
    }

    public static zzcg zzv() {
        return zza.zzB;
    }

    public static zzcih zzw() {
        return zza.zzq;
    }

    public static zzcio zzx() {
        return zza.zzD;
    }

    public static zzclt zzy() {
        return zza.zzC;
    }

    public static zzcoa zzz() {
        return zza.zze;
    }
}
