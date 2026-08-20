package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.io.EOFException;
import java.io.IOException;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzayd {
    private final zzavg[] zza;
    private final zzavh zzb;
    private zzavg zzc;

    public zzayd(zzavg[] zzavgVarArr, zzavh zzavhVar) {
        this.zza = zzavgVarArr;
        this.zzb = zzavhVar;
    }

    public final void zza() {
        if (this.zzc != null) {
            this.zzc = null;
        }
    }

    public final zzavg zzb(zzavf zzavfVar, Uri uri) throws IOException, InterruptedException {
        zzavg zzavgVar = this.zzc;
        if (zzavgVar != null) {
            return zzavgVar;
        }
        zzavg[] zzavgVarArr = this.zza;
        int length = zzavgVarArr.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                break;
            }
            zzavg zzavgVar2 = zzavgVarArr[i];
            try {
            } catch (EOFException unused) {
            } catch (Throwable th) {
                zzavfVar.zze();
                throw th;
            }
            if (zzavgVar2.zzg(zzavfVar)) {
                this.zzc = zzavgVar2;
                zzavfVar.zze();
                break;
            }
            continue;
            zzavfVar.zze();
            i++;
        }
        zzavg zzavgVar3 = this.zzc;
        if (zzavgVar3 == null) {
            String zzk = zzbay.zzk(this.zza);
            throw new zzazb("None of the available extractors (" + zzk + ") could read the stream.", uri);
        }
        zzavgVar3.zzd(this.zzb);
        return this.zzc;
    }
}
