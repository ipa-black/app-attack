package com.google.android.gms.internal.ads;

import com.google.android.exoplayer2.C;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.IdentityHashMap;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzsx implements zzsf, zzse {
    private final zzsf[] zza;
    private zzse zze;
    private zzug zzf;
    private final zzrs zzi;
    private final ArrayList zzc = new ArrayList();
    private final HashMap zzd = new HashMap();
    private zzua zzh = new zzrr(new zzua[0]);
    private final IdentityHashMap zzb = new IdentityHashMap();
    private zzsf[] zzg = new zzsf[0];

    public zzsx(zzrs zzrsVar, long[] jArr, zzsf[] zzsfVarArr, byte... bArr) {
        this.zzi = zzrsVar;
        this.zza = zzsfVarArr;
        for (int i = 0; i < zzsfVarArr.length; i++) {
            long j = jArr[i];
            if (j != 0) {
                this.zza[i] = new zzsv(zzsfVarArr[i], j);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzsf
    public final long zza(long j, zzkb zzkbVar) {
        zzsf[] zzsfVarArr = this.zzg;
        return (zzsfVarArr.length > 0 ? zzsfVarArr[0] : this.zza[0]).zza(j, zzkbVar);
    }

    @Override // com.google.android.gms.internal.ads.zzsf, com.google.android.gms.internal.ads.zzua
    public final long zzb() {
        return this.zzh.zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzsf, com.google.android.gms.internal.ads.zzua
    public final long zzc() {
        return this.zzh.zzc();
    }

    @Override // com.google.android.gms.internal.ads.zzsf
    public final long zzd() {
        zzsf[] zzsfVarArr;
        zzsf[] zzsfVarArr2;
        long j = -9223372036854775807L;
        for (zzsf zzsfVar : this.zzg) {
            long zzd = zzsfVar.zzd();
            if (zzd != C.TIME_UNSET) {
                if (j == C.TIME_UNSET) {
                    for (zzsf zzsfVar2 : this.zzg) {
                        if (zzsfVar2 == zzsfVar) {
                            break;
                        } else if (zzsfVar2.zze(zzd) != zzd) {
                            throw new IllegalStateException("Unexpected child seekToUs result.");
                        }
                    }
                    j = zzd;
                } else if (zzd != j) {
                    throw new IllegalStateException("Conflicting discontinuities.");
                }
            } else if (j != C.TIME_UNSET && zzsfVar.zze(j) != j) {
                throw new IllegalStateException("Unexpected child seekToUs result.");
            }
        }
        return j;
    }

    @Override // com.google.android.gms.internal.ads.zzsf
    public final long zze(long j) {
        long zze = this.zzg[0].zze(j);
        int i = 1;
        while (true) {
            zzsf[] zzsfVarArr = this.zzg;
            if (i >= zzsfVarArr.length) {
                return zze;
            }
            if (zzsfVarArr[i].zze(zze) != zze) {
                throw new IllegalStateException("Unexpected child seekToUs result.");
            }
            i++;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzsf
    public final long zzf(zzvt[] zzvtVarArr, boolean[] zArr, zzty[] zztyVarArr, boolean[] zArr2, long j) {
        int length;
        zzvt zzvtVar;
        int length2 = zzvtVarArr.length;
        int[] iArr = new int[length2];
        int[] iArr2 = new int[length2];
        int i = 0;
        while (true) {
            length = zzvtVarArr.length;
            zzvtVar = null;
            if (i >= length) {
                break;
            }
            zzty zztyVar = zztyVarArr[i];
            Integer num = zztyVar != null ? (Integer) this.zzb.get(zztyVar) : null;
            iArr[i] = num == null ? -1 : num.intValue();
            iArr2[i] = -1;
            zzvt zzvtVar2 = zzvtVarArr[i];
            if (zzvtVar2 != null) {
                zzcp zzcpVar = (zzcp) this.zzd.get(zzvtVar2.zze());
                zzcpVar.getClass();
                int i2 = 0;
                while (true) {
                    zzsf[] zzsfVarArr = this.zza;
                    if (i2 >= zzsfVarArr.length) {
                        break;
                    } else if (zzsfVarArr[i2].zzh().zza(zzcpVar) != -1) {
                        iArr2[i] = i2;
                        break;
                    } else {
                        i2++;
                    }
                }
            }
            i++;
        }
        this.zzb.clear();
        zzty[] zztyVarArr2 = new zzty[length];
        zzty[] zztyVarArr3 = new zzty[length];
        zzvt[] zzvtVarArr2 = new zzvt[length];
        ArrayList arrayList = new ArrayList(this.zza.length);
        long j2 = j;
        int i3 = 0;
        while (i3 < this.zza.length) {
            for (int i4 = 0; i4 < zzvtVarArr.length; i4++) {
                zztyVarArr3[i4] = iArr[i4] == i3 ? zztyVarArr[i4] : zzvtVar;
                if (iArr2[i4] == i3) {
                    zzvt zzvtVar3 = zzvtVarArr[i4];
                    zzvtVar3.getClass();
                    zzcp zzcpVar2 = (zzcp) this.zzd.get(zzvtVar3.zze());
                    zzcpVar2.getClass();
                    zzvtVarArr2[i4] = new zzsu(zzvtVar3, zzcpVar2);
                } else {
                    zzvtVarArr2[i4] = zzvtVar;
                }
            }
            int i5 = i3;
            ArrayList arrayList2 = arrayList;
            zzty[] zztyVarArr4 = zztyVarArr3;
            zzvt[] zzvtVarArr3 = zzvtVarArr2;
            long zzf = this.zza[i3].zzf(zzvtVarArr2, zArr, zztyVarArr3, zArr2, j2);
            if (i5 == 0) {
                j2 = zzf;
            } else if (zzf != j2) {
                throw new IllegalStateException("Children enabled at different positions.");
            }
            boolean z = false;
            for (int i6 = 0; i6 < zzvtVarArr.length; i6++) {
                if (iArr2[i6] == i5) {
                    zzty zztyVar2 = zztyVarArr4[i6];
                    zztyVar2.getClass();
                    zztyVarArr2[i6] = zztyVar2;
                    this.zzb.put(zztyVar2, Integer.valueOf(i5));
                    z = true;
                } else if (iArr[i6] == i5) {
                    zzdd.zzf(zztyVarArr4[i6] == null);
                }
            }
            if (z) {
                arrayList2.add(this.zza[i5]);
            }
            i3 = i5 + 1;
            arrayList = arrayList2;
            zztyVarArr3 = zztyVarArr4;
            zzvtVarArr2 = zzvtVarArr3;
            zzvtVar = null;
        }
        System.arraycopy(zztyVarArr2, 0, zztyVarArr, 0, length);
        zzsf[] zzsfVarArr2 = (zzsf[]) arrayList.toArray(new zzsf[0]);
        this.zzg = zzsfVarArr2;
        this.zzh = new zzrr(zzsfVarArr2);
        return j2;
    }

    @Override // com.google.android.gms.internal.ads.zztz
    public final /* bridge */ /* synthetic */ void zzg(zzua zzuaVar) {
        zzsf zzsfVar = (zzsf) zzuaVar;
        zzse zzseVar = this.zze;
        zzseVar.getClass();
        zzseVar.zzg(this);
    }

    @Override // com.google.android.gms.internal.ads.zzsf
    public final zzug zzh() {
        zzug zzugVar = this.zzf;
        zzugVar.getClass();
        return zzugVar;
    }

    @Override // com.google.android.gms.internal.ads.zzse
    public final void zzi(zzsf zzsfVar) {
        this.zzc.remove(zzsfVar);
        if (!this.zzc.isEmpty()) {
            return;
        }
        int i = 0;
        for (zzsf zzsfVar2 : this.zza) {
            i += zzsfVar2.zzh().zzc;
        }
        zzcp[] zzcpVarArr = new zzcp[i];
        int i2 = 0;
        int i3 = 0;
        while (true) {
            zzsf[] zzsfVarArr = this.zza;
            if (i2 < zzsfVarArr.length) {
                zzug zzh = zzsfVarArr[i2].zzh();
                int i4 = zzh.zzc;
                int i5 = 0;
                while (i5 < i4) {
                    zzcp zzb = zzh.zzb(i5);
                    zzcp zzc = zzb.zzc(i2 + ":" + zzb.zzc);
                    this.zzd.put(zzc, zzb);
                    zzcpVarArr[i3] = zzc;
                    i5++;
                    i3++;
                }
                i2++;
            } else {
                this.zzf = new zzug(zzcpVarArr);
                zzse zzseVar = this.zze;
                zzseVar.getClass();
                zzseVar.zzi(this);
                return;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzsf
    public final void zzj(long j, boolean z) {
        for (zzsf zzsfVar : this.zzg) {
            zzsfVar.zzj(j, false);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzsf
    public final void zzk() throws IOException {
        for (zzsf zzsfVar : this.zza) {
            zzsfVar.zzk();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzsf
    public final void zzl(zzse zzseVar, long j) {
        this.zze = zzseVar;
        Collections.addAll(this.zzc, this.zza);
        for (zzsf zzsfVar : this.zza) {
            zzsfVar.zzl(this, j);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzsf, com.google.android.gms.internal.ads.zzua
    public final void zzm(long j) {
        this.zzh.zzm(j);
    }

    public final zzsf zzn(int i) {
        zzsf zzsfVar;
        zzsf zzsfVar2 = this.zza[i];
        if (zzsfVar2 instanceof zzsv) {
            zzsfVar = ((zzsv) zzsfVar2).zza;
            return zzsfVar;
        }
        return zzsfVar2;
    }

    @Override // com.google.android.gms.internal.ads.zzsf, com.google.android.gms.internal.ads.zzua
    public final boolean zzo(long j) {
        if (!this.zzc.isEmpty()) {
            int size = this.zzc.size();
            for (int i = 0; i < size; i++) {
                ((zzsf) this.zzc.get(i)).zzo(j);
            }
            return false;
        }
        return this.zzh.zzo(j);
    }

    @Override // com.google.android.gms.internal.ads.zzsf, com.google.android.gms.internal.ads.zzua
    public final boolean zzp() {
        return this.zzh.zzp();
    }
}
