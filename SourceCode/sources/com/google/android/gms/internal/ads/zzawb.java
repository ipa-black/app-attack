package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
final class zzawb extends zzawd {
    public final long zza;
    public final List zzb;
    public final List zzc;

    public zzawb(int i, long j) {
        super(i);
        this.zza = j;
        this.zzb = new ArrayList();
        this.zzc = new ArrayList();
    }

    @Override // com.google.android.gms.internal.ads.zzawd
    public final String toString() {
        String zzg = zzg(this.zzaR);
        String arrays = Arrays.toString(this.zzb.toArray());
        String arrays2 = Arrays.toString(this.zzc.toArray());
        return zzg + " leaves: " + arrays + " containers: " + arrays2;
    }

    public final zzawb zza(int i) {
        int size = this.zzc.size();
        for (int i2 = 0; i2 < size; i2++) {
            zzawb zzawbVar = (zzawb) this.zzc.get(i2);
            if (zzawbVar.zzaR == i) {
                return zzawbVar;
            }
        }
        return null;
    }

    public final zzawc zzb(int i) {
        int size = this.zzb.size();
        for (int i2 = 0; i2 < size; i2++) {
            zzawc zzawcVar = (zzawc) this.zzb.get(i2);
            if (zzawcVar.zzaR == i) {
                return zzawcVar;
            }
        }
        return null;
    }

    public final void zzc(zzawb zzawbVar) {
        this.zzc.add(zzawbVar);
    }

    public final void zzd(zzawc zzawcVar) {
        this.zzb.add(zzawcVar);
    }
}
