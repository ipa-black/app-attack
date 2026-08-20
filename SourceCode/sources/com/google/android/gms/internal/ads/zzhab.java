package com.google.android.gms.internal.ads;

import java.util.ArrayDeque;
import java.util.Arrays;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzhab {
    private final ArrayDeque zza = new ArrayDeque();

    private zzhab() {
    }

    public static /* bridge */ /* synthetic */ zzgwv zza(zzhab zzhabVar, zzgwv zzgwvVar, zzgwv zzgwvVar2) {
        zzhabVar.zzb(zzgwvVar);
        zzhabVar.zzb(zzgwvVar2);
        zzgwv zzgwvVar3 = (zzgwv) zzhabVar.zza.pop();
        while (!zzhabVar.zza.isEmpty()) {
            zzgwvVar3 = new zzhaf((zzgwv) zzhabVar.zza.pop(), zzgwvVar3);
        }
        return zzgwvVar3;
    }

    private final void zzb(zzgwv zzgwvVar) {
        zzgwv zzgwvVar2;
        zzgwv zzgwvVar3;
        if (zzgwvVar.zzh()) {
            int zzc = zzc(zzgwvVar.zzd());
            int zzc2 = zzhaf.zzc(zzc + 1);
            if (this.zza.isEmpty() || ((zzgwv) this.zza.peek()).zzd() >= zzc2) {
                this.zza.push(zzgwvVar);
                return;
            }
            int zzc3 = zzhaf.zzc(zzc);
            zzgwv zzgwvVar4 = (zzgwv) this.zza.pop();
            while (!this.zza.isEmpty() && ((zzgwv) this.zza.peek()).zzd() < zzc3) {
                zzgwvVar4 = new zzhaf((zzgwv) this.zza.pop(), zzgwvVar4);
            }
            zzhaf zzhafVar = new zzhaf(zzgwvVar4, zzgwvVar);
            while (!this.zza.isEmpty()) {
                if (((zzgwv) this.zza.peek()).zzd() >= zzhaf.zzc(zzc(zzhafVar.zzd()) + 1)) {
                    break;
                }
                zzhafVar = new zzhaf((zzgwv) this.zza.pop(), zzhafVar);
            }
            this.zza.push(zzhafVar);
        } else if (!(zzgwvVar instanceof zzhaf)) {
            throw new IllegalArgumentException("Has a new type of ByteString been created? Found ".concat(String.valueOf(String.valueOf(zzgwvVar.getClass()))));
        } else {
            zzhaf zzhafVar2 = (zzhaf) zzgwvVar;
            zzgwvVar2 = zzhafVar2.zzd;
            zzb(zzgwvVar2);
            zzgwvVar3 = zzhafVar2.zze;
            zzb(zzgwvVar3);
        }
    }

    private static final int zzc(int i) {
        int binarySearch = Arrays.binarySearch(zzhaf.zza, i);
        return binarySearch < 0 ? (-(binarySearch + 1)) - 1 : binarySearch;
    }

    public /* synthetic */ zzhab(zzhaa zzhaaVar) {
    }
}
