package com.google.android.gms.internal.ads;

import com.google.android.exoplayer2.C;
import java.io.IOException;
import java.util.ArrayList;
import java.util.IdentityHashMap;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzaym implements zzayj, zzayi {
    public final zzayj[] zza;
    private final IdentityHashMap zzb = new IdentityHashMap();
    private zzayi zzc;
    private int zzd;
    private zzaza zze;
    private zzayj[] zzf;
    private zzayx zzg;

    public zzaym(zzayj... zzayjVarArr) {
        this.zza = zzayjVarArr;
    }

    @Override // com.google.android.gms.internal.ads.zzayj
    public final long zzB(zzaze[] zzazeVarArr, boolean[] zArr, zzayv[] zzayvVarArr, boolean[] zArr2, long j) {
        int length;
        zzayv[] zzayvVarArr2 = zzayvVarArr;
        int length2 = zzazeVarArr.length;
        int[] iArr = new int[length2];
        int[] iArr2 = new int[length2];
        int i = 0;
        while (true) {
            length = zzazeVarArr.length;
            if (i >= length) {
                break;
            }
            zzayv zzayvVar = zzayvVarArr2[i];
            iArr[i] = zzayvVar == null ? -1 : ((Integer) this.zzb.get(zzayvVar)).intValue();
            iArr2[i] = -1;
            zzaze zzazeVar = zzazeVarArr[i];
            if (zzazeVar != null) {
                zzayz zzd = zzazeVar.zzd();
                int i2 = 0;
                while (true) {
                    zzayj[] zzayjVarArr = this.zza;
                    if (i2 >= zzayjVarArr.length) {
                        break;
                    } else if (zzayjVarArr[i2].zzn().zza(zzd) != -1) {
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
        zzayv[] zzayvVarArr3 = new zzayv[length];
        zzayv[] zzayvVarArr4 = new zzayv[length];
        zzaze[] zzazeVarArr2 = new zzaze[length];
        ArrayList arrayList = new ArrayList(this.zza.length);
        long j2 = j;
        int i3 = 0;
        while (i3 < this.zza.length) {
            for (int i4 = 0; i4 < zzazeVarArr.length; i4++) {
                zzaze zzazeVar2 = null;
                zzayvVarArr4[i4] = iArr[i4] == i3 ? zzayvVarArr2[i4] : null;
                if (iArr2[i4] == i3) {
                    zzazeVar2 = zzazeVarArr[i4];
                }
                zzazeVarArr2[i4] = zzazeVar2;
            }
            int i5 = i3;
            zzaze[] zzazeVarArr3 = zzazeVarArr2;
            ArrayList arrayList2 = arrayList;
            long zzB = this.zza[i3].zzB(zzazeVarArr2, zArr, zzayvVarArr4, zArr2, j2);
            if (i5 == 0) {
                j2 = zzB;
            } else if (zzB != j2) {
                throw new IllegalStateException("Children enabled at different positions");
            }
            boolean z = false;
            for (int i6 = 0; i6 < zzazeVarArr.length; i6++) {
                if (iArr2[i6] == i5) {
                    zzbaj.zze(zzayvVarArr4[i6] != null);
                    zzayv zzayvVar2 = zzayvVarArr4[i6];
                    zzayvVarArr3[i6] = zzayvVar2;
                    this.zzb.put(zzayvVar2, Integer.valueOf(i5));
                    z = true;
                } else if (iArr[i6] == i5) {
                    zzbaj.zze(zzayvVarArr4[i6] == null);
                }
            }
            if (z) {
                arrayList2.add(this.zza[i5]);
            }
            i3 = i5 + 1;
            arrayList = arrayList2;
            zzazeVarArr2 = zzazeVarArr3;
            zzayvVarArr2 = zzayvVarArr;
        }
        zzayv[] zzayvVarArr5 = zzayvVarArr2;
        ArrayList arrayList3 = arrayList;
        System.arraycopy(zzayvVarArr3, 0, zzayvVarArr5, 0, length);
        zzayj[] zzayjVarArr2 = new zzayj[arrayList3.size()];
        this.zzf = zzayjVarArr2;
        arrayList3.toArray(zzayjVarArr2);
        this.zzg = new zzaxx(this.zzf);
        return j2;
    }

    @Override // com.google.android.gms.internal.ads.zzayj, com.google.android.gms.internal.ads.zzayx
    public final long zza() {
        return this.zzg.zza();
    }

    @Override // com.google.android.gms.internal.ads.zzayj, com.google.android.gms.internal.ads.zzayx
    public final boolean zzbj(long j) {
        return this.zzg.zzbj(j);
    }

    @Override // com.google.android.gms.internal.ads.zzayw
    public final /* bridge */ /* synthetic */ void zze(zzayx zzayxVar) {
        zzayj zzayjVar = (zzayj) zzayxVar;
        if (this.zze == null) {
            return;
        }
        this.zzc.zze(this);
    }

    @Override // com.google.android.gms.internal.ads.zzayi
    public final void zzf(zzayj zzayjVar) {
        int i = this.zzd - 1;
        this.zzd = i;
        if (i > 0) {
            return;
        }
        int i2 = 0;
        for (zzayj zzayjVar2 : this.zza) {
            i2 += zzayjVar2.zzn().zzb;
        }
        zzayz[] zzayzVarArr = new zzayz[i2];
        int i3 = 0;
        for (zzayj zzayjVar3 : this.zza) {
            zzaza zzn = zzayjVar3.zzn();
            int i4 = zzn.zzb;
            int i5 = 0;
            while (i5 < i4) {
                zzayzVarArr[i3] = zzn.zzb(i5);
                i5++;
                i3++;
            }
        }
        this.zze = new zzaza(zzayzVarArr);
        this.zzc.zzf(this);
    }

    @Override // com.google.android.gms.internal.ads.zzayj
    public final long zzg() {
        long j = Long.MAX_VALUE;
        for (zzayj zzayjVar : this.zzf) {
            long zzg = zzayjVar.zzg();
            if (zzg != Long.MIN_VALUE) {
                j = Math.min(j, zzg);
            }
        }
        if (j == Long.MAX_VALUE) {
            return Long.MIN_VALUE;
        }
        return j;
    }

    @Override // com.google.android.gms.internal.ads.zzayj
    public final long zzh() {
        zzayj[] zzayjVarArr;
        long zzh = this.zza[0].zzh();
        int i = 1;
        while (true) {
            zzayj[] zzayjVarArr2 = this.zza;
            if (i >= zzayjVarArr2.length) {
                if (zzh != C.TIME_UNSET) {
                    for (zzayj zzayjVar : this.zzf) {
                        if (zzayjVar != this.zza[0] && zzayjVar.zzi(zzh) != zzh) {
                            throw new IllegalStateException("Children seeked to different positions");
                        }
                    }
                }
                return zzh;
            } else if (zzayjVarArr2[i].zzh() != C.TIME_UNSET) {
                throw new IllegalStateException("Child reported discontinuity");
            } else {
                i++;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzayj
    public final long zzi(long j) {
        long zzi = this.zzf[0].zzi(j);
        int i = 1;
        while (true) {
            zzayj[] zzayjVarArr = this.zzf;
            if (i >= zzayjVarArr.length) {
                return zzi;
            }
            if (zzayjVarArr[i].zzi(zzi) != zzi) {
                throw new IllegalStateException("Children seeked to different positions");
            }
            i++;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzayj
    public final zzaza zzn() {
        return this.zze;
    }

    @Override // com.google.android.gms.internal.ads.zzayj
    public final void zzq(long j) {
        for (zzayj zzayjVar : this.zzf) {
            zzayjVar.zzq(j);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzayj
    public final void zzs() throws IOException {
        for (zzayj zzayjVar : this.zza) {
            zzayjVar.zzs();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzayj
    public final void zzw(zzayi zzayiVar, long j) {
        this.zzc = zzayiVar;
        zzayj[] zzayjVarArr = this.zza;
        this.zzd = zzayjVarArr.length;
        for (zzayj zzayjVar : zzayjVarArr) {
            zzayjVar.zzw(this, j);
        }
    }
}
