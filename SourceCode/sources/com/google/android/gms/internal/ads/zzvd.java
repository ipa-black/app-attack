package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Point;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import java.util.HashMap;
import java.util.Map;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzvd extends zzct {
    private boolean zza;
    private boolean zzb;
    private boolean zzc;
    private boolean zzd;
    private boolean zze;
    private boolean zzf;
    private final SparseArray zzg;
    private final SparseBooleanArray zzh;

    @Deprecated
    public zzvd() {
        this.zzg = new SparseArray();
        this.zzh = new SparseBooleanArray();
        zzv();
    }

    private final void zzv() {
        this.zza = true;
        this.zzb = true;
        this.zzc = true;
        this.zzd = true;
        this.zze = true;
        this.zzf = true;
    }

    @Override // com.google.android.gms.internal.ads.zzct
    public final /* synthetic */ zzct zze(int i, int i2, boolean z) {
        super.zze(i, i2, true);
        return this;
    }

    public final zzvd zzo(int i, boolean z) {
        if (this.zzh.get(i) == z) {
            return this;
        }
        if (z) {
            this.zzh.put(i, true);
        } else {
            this.zzh.delete(i);
        }
        return this;
    }

    public zzvd(Context context) {
        super.zzd(context);
        Point zzB = zzen.zzB(context);
        zze(zzB.x, zzB.y, true);
        this.zzg = new SparseArray();
        this.zzh = new SparseBooleanArray();
        zzv();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ zzvd(zzvf zzvfVar, zzvc zzvcVar) {
        super(zzvfVar);
        this.zza = zzvfVar.zzG;
        this.zzb = zzvfVar.zzI;
        this.zzc = zzvfVar.zzK;
        this.zzd = zzvfVar.zzP;
        this.zze = zzvfVar.zzQ;
        this.zzf = zzvfVar.zzS;
        SparseArray zza = zzvf.zza(zzvfVar);
        SparseArray sparseArray = new SparseArray();
        for (int i = 0; i < zza.size(); i++) {
            sparseArray.put(zza.keyAt(i), new HashMap((Map) zza.valueAt(i)));
        }
        this.zzg = sparseArray;
        this.zzh = zzvf.zzb(zzvfVar).clone();
    }
}
