package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzggu {
    private final List zza = new ArrayList();

    public final void zzd() {
        for (zzggs zzggsVar : this.zza) {
            zzggsVar.zza = false;
        }
    }

    public final zzggu zza(zzggs zzggsVar) {
        zzggu zzgguVar;
        boolean z;
        zzgguVar = zzggsVar.zzf;
        if (zzgguVar != null) {
            throw new IllegalStateException("Entry has already been added to a KeysetHandle.Builder");
        }
        z = zzggsVar.zza;
        if (z) {
            zzd();
        }
        zzggsVar.zzf = this;
        this.zza.add(zzggsVar);
        return this;
    }

    public final zzggw zzb() throws GeneralSecurityException {
        zzggt zzggtVar;
        zzggt zzggtVar2;
        zzggt zzggtVar3;
        int i;
        zzghb zzghbVar;
        boolean z;
        zzggt zzggtVar4;
        zzggt zzggtVar5;
        zzggt zzggtVar6;
        zzggt zzggtVar7;
        zzggo unused;
        zzggt unused2;
        zzgtg zzd = zzgtj.zzd();
        List list = this.zza;
        for (int i2 = 0; i2 < list.size() - 1; i2++) {
            zzggtVar4 = ((zzggs) list.get(i2)).zze;
            zzggtVar5 = zzggt.zza;
            if (zzggtVar4 == zzggtVar5) {
                zzggtVar6 = ((zzggs) list.get(i2 + 1)).zze;
                zzggtVar7 = zzggt.zza;
                if (zzggtVar6 != zzggtVar7) {
                    throw new GeneralSecurityException("Entries with 'withRandomId()' may only be followed by other entries with 'withRandomId()'.");
                }
            }
        }
        HashSet hashSet = new HashSet();
        Integer num = null;
        for (zzggs zzggsVar : this.zza) {
            unused = zzggsVar.zzb;
            zzggtVar = zzggsVar.zze;
            if (zzggtVar != null) {
                zzggtVar2 = zzggsVar.zze;
                zzggtVar3 = zzggt.zza;
                int i3 = 3;
                if (zzggtVar2 == zzggtVar3) {
                    i = 0;
                    while (true) {
                        if (i != 0 && !hashSet.contains(Integer.valueOf(i))) {
                            break;
                        }
                        SecureRandom secureRandom = new SecureRandom();
                        byte[] bArr = new byte[4];
                        int i4 = 0;
                        while (i4 == 0) {
                            secureRandom.nextBytes(bArr);
                            i4 = ((bArr[0] & Byte.MAX_VALUE) << 24) | ((bArr[1] & 255) << 16) | ((bArr[2] & 255) << 8) | (bArr[3] & 255);
                        }
                        i = i4;
                    }
                } else {
                    unused2 = zzggsVar.zze;
                    i = 0;
                }
                Integer valueOf = Integer.valueOf(i);
                if (!hashSet.contains(valueOf)) {
                    hashSet.add(valueOf);
                    zzggs.zza(zzggsVar);
                    zzghbVar = zzggsVar.zzd;
                    zzggo zzc = zzggsVar.zzc();
                    if (!zzggo.zza.equals(zzc)) {
                        if (zzggo.zzb.equals(zzc)) {
                            i3 = 4;
                        } else if (!zzggo.zzc.equals(zzc)) {
                            throw new IllegalStateException("Unknown key status");
                        } else {
                            i3 = 5;
                        }
                    }
                    zzgmg zza = ((zzgln) zzghbVar).zza();
                    zzgsw zzc2 = zzghm.zzc(zza.zzb());
                    zzgth zzd2 = zzgti.zzd();
                    zzd2.zzb(i);
                    zzd2.zzd(i3);
                    zzd2.zza(zzc2);
                    zzd2.zzc(zza.zzb().zze());
                    zzd.zza((zzgti) zzd2.zzak());
                    z = zzggsVar.zza;
                    if (z) {
                        if (num != null) {
                            throw new GeneralSecurityException("Two primaries were set");
                        }
                        num = valueOf;
                    }
                } else {
                    throw new GeneralSecurityException("Id " + i + " is used twice in the keyset");
                }
            } else {
                throw new GeneralSecurityException("No ID was set (with withFixedId or withRandomId)");
            }
        }
        if (num == null) {
            throw new GeneralSecurityException("No primary was set");
        }
        zzd.zzb(num.intValue());
        return new zzggw((zzgtj) zzd.zzak());
    }
}
