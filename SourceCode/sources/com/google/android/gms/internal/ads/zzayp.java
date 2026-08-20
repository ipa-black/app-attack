package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzayp implements zzayl {
    private final zzayl[] zza;
    private final ArrayList zzb;
    private zzayk zzd;
    private zzato zze;
    private zzayo zzg;
    private final zzatn zzc = new zzatn();
    private int zzf = -1;

    public zzayp(zzayl... zzaylVarArr) {
        this.zza = zzaylVarArr;
        this.zzb = new ArrayList(Arrays.asList(zzaylVarArr));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* bridge */ /* synthetic */ void zzf(zzayp zzaypVar, int i, zzato zzatoVar, Object obj) {
        zzayo zzayoVar;
        if (zzaypVar.zzg == null) {
            for (int i2 = 0; i2 <= 0; i2++) {
                zzatoVar.zzg(i2, zzaypVar.zzc, false);
            }
            int i3 = zzaypVar.zzf;
            if (i3 == -1) {
                zzaypVar.zzf = 1;
            } else if (i3 != 1) {
                zzayoVar = new zzayo(1);
                zzaypVar.zzg = zzayoVar;
            }
            zzayoVar = null;
            zzaypVar.zzg = zzayoVar;
        }
        if (zzaypVar.zzg != null) {
            return;
        }
        zzaypVar.zzb.remove(zzaypVar.zza[i]);
        if (i == 0) {
            zzaypVar.zze = zzatoVar;
        }
        if (zzaypVar.zzb.isEmpty()) {
            zzaypVar.zzd.zzg(zzaypVar.zze, null);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzayl
    public final void zza() throws IOException {
        zzayo zzayoVar = this.zzg;
        if (zzayoVar != null) {
            throw zzayoVar;
        }
        for (zzayl zzaylVar : this.zza) {
            zzaylVar.zza();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzayl
    public final void zzb(zzast zzastVar, boolean z, zzayk zzaykVar) {
        this.zzd = zzaykVar;
        int i = 0;
        while (true) {
            zzayl[] zzaylVarArr = this.zza;
            if (i >= zzaylVarArr.length) {
                return;
            }
            zzaylVarArr[i].zzb(zzastVar, false, new zzayn(this, i));
            i++;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzayl
    public final void zzc(zzayj zzayjVar) {
        zzaym zzaymVar = (zzaym) zzayjVar;
        int i = 0;
        while (true) {
            zzayl[] zzaylVarArr = this.zza;
            if (i >= zzaylVarArr.length) {
                return;
            }
            zzaylVarArr[i].zzc(zzaymVar.zza[i]);
            i++;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzayl
    public final void zzd() {
        for (zzayl zzaylVar : this.zza) {
            zzaylVar.zzd();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzayl
    public final zzayj zze(int i, zzazw zzazwVar) {
        int length = this.zza.length;
        zzayj[] zzayjVarArr = new zzayj[length];
        for (int i2 = 0; i2 < length; i2++) {
            zzayjVarArr[i2] = this.zza[i2].zze(i, zzazwVar);
        }
        return new zzaym(zzayjVarArr);
    }
}
