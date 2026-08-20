package com.google.android.gms.internal.ads;

import android.os.Handler;
import android.util.Pair;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzjr {
    private final zzmz zza;
    private final zzjq zze;
    private final zzsq zzf;
    private final zzpi zzg;
    private final HashMap zzh;
    private final Set zzi;
    private boolean zzj;
    private zzfz zzk;
    private zzub zzl = new zzub(0);
    private final IdentityHashMap zzc = new IdentityHashMap();
    private final Map zzd = new HashMap();
    private final List zzb = new ArrayList();

    public zzjr(zzjq zzjqVar, zzkm zzkmVar, Handler handler, zzmz zzmzVar) {
        this.zza = zzmzVar;
        this.zze = zzjqVar;
        zzsq zzsqVar = new zzsq();
        this.zzf = zzsqVar;
        zzpi zzpiVar = new zzpi();
        this.zzg = zzpiVar;
        this.zzh = new HashMap();
        this.zzi = new HashSet();
        zzsqVar.zzb(handler, zzkmVar);
        zzpiVar.zzb(handler, zzkmVar);
    }

    private final void zzp(int i, int i2) {
        while (i < this.zzb.size()) {
            ((zzjp) this.zzb.get(i)).zzd += i2;
            i++;
        }
    }

    private final void zzq(zzjp zzjpVar) {
        zzjo zzjoVar = (zzjo) this.zzh.get(zzjpVar);
        if (zzjoVar != null) {
            zzjoVar.zza.zzi(zzjoVar.zzb);
        }
    }

    private final void zzr() {
        Iterator it = this.zzi.iterator();
        while (it.hasNext()) {
            zzjp zzjpVar = (zzjp) it.next();
            if (zzjpVar.zzc.isEmpty()) {
                zzq(zzjpVar);
                it.remove();
            }
        }
    }

    private final void zzs(zzjp zzjpVar) {
        if (zzjpVar.zze && zzjpVar.zzc.isEmpty()) {
            zzjo zzjoVar = (zzjo) this.zzh.remove(zzjpVar);
            zzjoVar.getClass();
            zzjoVar.zza.zzp(zzjoVar.zzb);
            zzjoVar.zza.zzs(zzjoVar.zzc);
            zzjoVar.zza.zzr(zzjoVar.zzc);
            this.zzi.remove(zzjpVar);
        }
    }

    private final void zzt(zzjp zzjpVar) {
        zzsc zzscVar = zzjpVar.zza;
        zzsi zzsiVar = new zzsi() { // from class: com.google.android.gms.internal.ads.zzjm
            @Override // com.google.android.gms.internal.ads.zzsi
            public final void zza(zzsj zzsjVar, zzcn zzcnVar) {
                zzjr.this.zze(zzsjVar, zzcnVar);
            }
        };
        zzjn zzjnVar = new zzjn(this, zzjpVar);
        this.zzh.put(zzjpVar, new zzjo(zzscVar, zzsiVar, zzjnVar));
        zzscVar.zzh(new Handler(zzen.zzE(), null), zzjnVar);
        zzscVar.zzg(new Handler(zzen.zzE(), null), zzjnVar);
        zzscVar.zzm(zzsiVar, this.zzk, this.zza);
    }

    private final void zzu(int i, int i2) {
        while (true) {
            i2--;
            if (i2 < i) {
                return;
            }
            zzjp zzjpVar = (zzjp) this.zzb.remove(i2);
            this.zzd.remove(zzjpVar.zzb);
            zzp(i2, -zzjpVar.zza.zzB().zzc());
            zzjpVar.zze = true;
            if (this.zzj) {
                zzs(zzjpVar);
            }
        }
    }

    public final int zza() {
        return this.zzb.size();
    }

    public final zzcn zzb() {
        if (this.zzb.isEmpty()) {
            return zzcn.zza;
        }
        int i = 0;
        for (int i2 = 0; i2 < this.zzb.size(); i2++) {
            zzjp zzjpVar = (zzjp) this.zzb.get(i2);
            zzjpVar.zzd = i;
            i += zzjpVar.zza.zzB().zzc();
        }
        return new zzjw(this.zzb, this.zzl, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void zze(zzsj zzsjVar, zzcn zzcnVar) {
        this.zze.zzh();
    }

    public final void zzf(zzfz zzfzVar) {
        zzdd.zzf(!this.zzj);
        this.zzk = zzfzVar;
        for (int i = 0; i < this.zzb.size(); i++) {
            zzjp zzjpVar = (zzjp) this.zzb.get(i);
            zzt(zzjpVar);
            this.zzi.add(zzjpVar);
        }
        this.zzj = true;
    }

    public final void zzg() {
        for (zzjo zzjoVar : this.zzh.values()) {
            try {
                zzjoVar.zza.zzp(zzjoVar.zzb);
            } catch (RuntimeException e2) {
                zzdw.zzc("MediaSourceList", "Failed to release child source.", e2);
            }
            zzjoVar.zza.zzs(zzjoVar.zzc);
            zzjoVar.zza.zzr(zzjoVar.zzc);
        }
        this.zzh.clear();
        this.zzi.clear();
        this.zzj = false;
    }

    public final void zzh(zzsf zzsfVar) {
        zzjp zzjpVar = (zzjp) this.zzc.remove(zzsfVar);
        zzjpVar.getClass();
        zzjpVar.zza.zzF(zzsfVar);
        zzjpVar.zzc.remove(((zzrz) zzsfVar).zza);
        if (!this.zzc.isEmpty()) {
            zzr();
        }
        zzs(zzjpVar);
    }

    public final boolean zzi() {
        return this.zzj;
    }

    public final zzcn zzj(int i, List list, zzub zzubVar) {
        if (!list.isEmpty()) {
            this.zzl = zzubVar;
            for (int i2 = i; i2 < list.size() + i; i2++) {
                zzjp zzjpVar = (zzjp) list.get(i2 - i);
                if (i2 > 0) {
                    zzjp zzjpVar2 = (zzjp) this.zzb.get(i2 - 1);
                    zzjpVar.zzc(zzjpVar2.zzd + zzjpVar2.zza.zzB().zzc());
                } else {
                    zzjpVar.zzc(0);
                }
                zzp(i2, zzjpVar.zza.zzB().zzc());
                this.zzb.add(i2, zzjpVar);
                this.zzd.put(zzjpVar.zzb, zzjpVar);
                if (this.zzj) {
                    zzt(zzjpVar);
                    if (this.zzc.isEmpty()) {
                        this.zzi.add(zzjpVar);
                    } else {
                        zzq(zzjpVar);
                    }
                }
            }
        }
        return zzb();
    }

    public final zzcn zzk(int i, int i2, int i3, zzub zzubVar) {
        zzdd.zzd(zza() >= 0);
        this.zzl = null;
        return zzb();
    }

    public final zzcn zzl(int i, int i2, zzub zzubVar) {
        boolean z = false;
        if (i >= 0 && i <= i2 && i2 <= zza()) {
            z = true;
        }
        zzdd.zzd(z);
        this.zzl = zzubVar;
        zzu(i, i2);
        return zzb();
    }

    public final zzcn zzm(List list, zzub zzubVar) {
        zzu(0, this.zzb.size());
        return zzj(this.zzb.size(), list, zzubVar);
    }

    public final zzcn zzn(zzub zzubVar) {
        int zza = zza();
        if (zzubVar.zzc() != zza) {
            zzubVar = zzubVar.zzf().zzg(0, zza);
        }
        this.zzl = zzubVar;
        return zzb();
    }

    public final zzsf zzo(zzsh zzshVar, zzwi zzwiVar, long j) {
        Object obj = ((Pair) zzshVar.zza).first;
        zzsh zzc = zzshVar.zzc(((Pair) zzshVar.zza).second);
        zzjp zzjpVar = (zzjp) this.zzd.get(obj);
        zzjpVar.getClass();
        this.zzi.add(zzjpVar);
        zzjo zzjoVar = (zzjo) this.zzh.get(zzjpVar);
        if (zzjoVar != null) {
            zzjoVar.zza.zzk(zzjoVar.zzb);
        }
        zzjpVar.zzc.add(zzc);
        zzrz zzH = zzjpVar.zza.zzH(zzc, zzwiVar, j);
        this.zzc.put(zzH, zzjpVar);
        zzr();
        return zzH;
    }
}
