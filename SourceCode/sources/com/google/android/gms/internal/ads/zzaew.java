package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzaew extends zzaey {
    public final long zza;
    public final List zzb;
    public final List zzc;

    public zzaew(int i, long j) {
        super(i);
        this.zza = j;
        this.zzb = new ArrayList();
        this.zzc = new ArrayList();
    }

    @Override // com.google.android.gms.internal.ads.zzaey
    public final String toString() {
        String zzf = zzf(this.zzd);
        String arrays = Arrays.toString(this.zzb.toArray());
        String arrays2 = Arrays.toString(this.zzc.toArray());
        return zzf + " leaves: " + arrays + " containers: " + arrays2;
    }

    public final zzaew zza(int i) {
        int size = this.zzc.size();
        for (int i2 = 0; i2 < size; i2++) {
            zzaew zzaewVar = (zzaew) this.zzc.get(i2);
            if (zzaewVar.zzd == i) {
                return zzaewVar;
            }
        }
        return null;
    }

    public final zzaex zzb(int i) {
        int size = this.zzb.size();
        for (int i2 = 0; i2 < size; i2++) {
            zzaex zzaexVar = (zzaex) this.zzb.get(i2);
            if (zzaexVar.zzd == i) {
                return zzaexVar;
            }
        }
        return null;
    }

    public final void zzc(zzaew zzaewVar) {
        this.zzc.add(zzaewVar);
    }

    public final void zzd(zzaex zzaexVar) {
        this.zzb.add(zzaexVar);
    }
}
