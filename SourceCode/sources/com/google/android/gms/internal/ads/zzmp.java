package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzmp {
    private final zzck zza;
    private zzgau zzb = zzgau.zzo();
    private zzgax zzc = zzgax.zzd();
    private zzsh zzd;
    private zzsh zze;
    private zzsh zzf;

    public zzmp(zzck zzckVar) {
        this.zza = zzckVar;
    }

    private static zzsh zzj(zzcg zzcgVar, zzgau zzgauVar, zzsh zzshVar, zzck zzckVar) {
        zzcn zzn = zzcgVar.zzn();
        int zzg = zzcgVar.zzg();
        Object zzf = zzn.zzo() ? null : zzn.zzf(zzg);
        int zzc = (zzcgVar.zzs() || zzn.zzo()) ? -1 : zzn.zzd(zzg, zzckVar, false).zzc(zzen.zzv(zzcgVar.zzl()));
        for (int i = 0; i < zzgauVar.size(); i++) {
            zzsh zzshVar2 = (zzsh) zzgauVar.get(i);
            if (zzm(zzshVar2, zzf, zzcgVar.zzs(), zzcgVar.zzd(), zzcgVar.zze(), zzc)) {
                return zzshVar2;
            }
        }
        if (zzgauVar.isEmpty() && zzshVar != null) {
            if (zzm(zzshVar, zzf, zzcgVar.zzs(), zzcgVar.zzd(), zzcgVar.zze(), zzc)) {
                return zzshVar;
            }
        }
        return null;
    }

    private final void zzk(zzgaw zzgawVar, zzsh zzshVar, zzcn zzcnVar) {
        if (zzshVar == null) {
            return;
        }
        if (zzcnVar.zza(zzshVar.zza) != -1) {
            zzgawVar.zza(zzshVar, zzcnVar);
            return;
        }
        zzcn zzcnVar2 = (zzcn) this.zzc.get(zzshVar);
        if (zzcnVar2 != null) {
            zzgawVar.zza(zzshVar, zzcnVar2);
        }
    }

    private final void zzl(zzcn zzcnVar) {
        zzgaw zzgawVar = new zzgaw();
        if (!this.zzb.isEmpty()) {
            for (int i = 0; i < this.zzb.size(); i++) {
                zzk(zzgawVar, (zzsh) this.zzb.get(i), zzcnVar);
            }
            if (!this.zzb.contains(this.zzd)) {
                zzk(zzgawVar, this.zzd, zzcnVar);
            }
        } else {
            zzk(zzgawVar, this.zze, zzcnVar);
            if (!zzfxz.zza(this.zzf, this.zze)) {
                zzk(zzgawVar, this.zzf, zzcnVar);
            }
            if (!zzfxz.zza(this.zzd, this.zze) && !zzfxz.zza(this.zzd, this.zzf)) {
                zzk(zzgawVar, this.zzd, zzcnVar);
            }
        }
        this.zzc = zzgawVar.zzc();
    }

    private static boolean zzm(zzsh zzshVar, Object obj, boolean z, int i, int i2, int i3) {
        if (zzshVar.zza.equals(obj)) {
            if (z) {
                if (zzshVar.zzb != i || zzshVar.zzc != i2) {
                    return false;
                }
            } else if (zzshVar.zzb != -1 || zzshVar.zze != i3) {
                return false;
            }
            return true;
        }
        return false;
    }

    public final zzcn zza(zzsh zzshVar) {
        return (zzcn) this.zzc.get(zzshVar);
    }

    public final zzsh zzb() {
        return this.zzd;
    }

    public final zzsh zzc() {
        Object next;
        Object obj;
        if (this.zzb.isEmpty()) {
            return null;
        }
        zzgau zzgauVar = this.zzb;
        if (zzgauVar instanceof List) {
            if (!zzgauVar.isEmpty()) {
                obj = zzgauVar.get(zzgauVar.size() - 1);
            } else {
                throw new NoSuchElementException();
            }
        } else {
            Iterator<E> it = zzgauVar.iterator();
            do {
                next = it.next();
            } while (it.hasNext());
            obj = next;
        }
        return (zzsh) obj;
    }

    public final zzsh zzd() {
        return this.zze;
    }

    public final zzsh zze() {
        return this.zzf;
    }

    public final void zzg(zzcg zzcgVar) {
        this.zzd = zzj(zzcgVar, this.zzb, this.zze, this.zza);
    }

    public final void zzh(List list, zzsh zzshVar, zzcg zzcgVar) {
        this.zzb = zzgau.zzm(list);
        if (!list.isEmpty()) {
            this.zze = (zzsh) list.get(0);
            zzshVar.getClass();
            this.zzf = zzshVar;
        }
        if (this.zzd == null) {
            this.zzd = zzj(zzcgVar, this.zzb, this.zze, this.zza);
        }
        zzl(zzcgVar.zzn());
    }

    public final void zzi(zzcg zzcgVar) {
        this.zzd = zzj(zzcgVar, this.zzb, this.zze, this.zza);
        zzl(zzcgVar.zzn());
    }
}
