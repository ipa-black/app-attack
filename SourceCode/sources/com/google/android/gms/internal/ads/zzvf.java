package com.google.android.gms.internal.ads;

import android.content.Context;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import java.util.Map;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzvf extends zzcu {
    public static final zzvf zzD;
    @Deprecated
    public static final zzvf zzE;
    public static final zzn zzF;
    public final boolean zzG;
    public final boolean zzH;
    public final boolean zzI;
    public final boolean zzJ;
    public final boolean zzK;
    public final boolean zzL;
    public final boolean zzM;
    public final boolean zzN;
    public final boolean zzO;
    public final boolean zzP;
    public final boolean zzQ;
    public final boolean zzR;
    public final boolean zzS;
    private final SparseArray zzT;
    private final SparseBooleanArray zzU;

    static {
        zzvf zzvfVar = new zzvf(new zzvd());
        zzD = zzvfVar;
        zzE = zzvfVar;
        zzF = new zzn() { // from class: com.google.android.gms.internal.ads.zzvb
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public zzvf(zzvd zzvdVar) {
        super(zzvdVar);
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        boolean z6;
        SparseArray sparseArray;
        SparseBooleanArray sparseBooleanArray;
        z = zzvdVar.zza;
        this.zzG = z;
        this.zzH = false;
        z2 = zzvdVar.zzb;
        this.zzI = z2;
        this.zzJ = false;
        z3 = zzvdVar.zzc;
        this.zzK = z3;
        this.zzL = false;
        this.zzM = false;
        this.zzN = false;
        this.zzO = false;
        z4 = zzvdVar.zzd;
        this.zzP = z4;
        z5 = zzvdVar.zze;
        this.zzQ = z5;
        this.zzR = false;
        z6 = zzvdVar.zzf;
        this.zzS = z6;
        sparseArray = zzvdVar.zzg;
        this.zzT = sparseArray;
        sparseBooleanArray = zzvdVar.zzh;
        this.zzU = sparseBooleanArray;
    }

    public static zzvf zzd(Context context) {
        return new zzvf(new zzvd(context));
    }

    @Override // com.google.android.gms.internal.ads.zzcu
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            zzvf zzvfVar = (zzvf) obj;
            if (super.equals(zzvfVar) && this.zzG == zzvfVar.zzG && this.zzI == zzvfVar.zzI && this.zzK == zzvfVar.zzK && this.zzP == zzvfVar.zzP && this.zzQ == zzvfVar.zzQ && this.zzS == zzvfVar.zzS) {
                SparseBooleanArray sparseBooleanArray = this.zzU;
                SparseBooleanArray sparseBooleanArray2 = zzvfVar.zzU;
                int size = sparseBooleanArray.size();
                if (sparseBooleanArray2.size() == size) {
                    int i = 0;
                    while (true) {
                        if (i < size) {
                            if (sparseBooleanArray2.indexOfKey(sparseBooleanArray.keyAt(i)) < 0) {
                                break;
                            }
                            i++;
                        } else {
                            SparseArray sparseArray = this.zzT;
                            SparseArray sparseArray2 = zzvfVar.zzT;
                            int size2 = sparseArray.size();
                            if (sparseArray2.size() == size2) {
                                for (int i2 = 0; i2 < size2; i2++) {
                                    int indexOfKey = sparseArray2.indexOfKey(sparseArray.keyAt(i2));
                                    if (indexOfKey >= 0) {
                                        Map map = (Map) sparseArray.valueAt(i2);
                                        Map map2 = (Map) sparseArray2.valueAt(indexOfKey);
                                        if (map2.size() == map.size()) {
                                            for (Map.Entry entry : map.entrySet()) {
                                                zzug zzugVar = (zzug) entry.getKey();
                                                if (map2.containsKey(zzugVar)) {
                                                    if (!zzen.zzT(entry.getValue(), map2.get(zzugVar))) {
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                                return true;
                            }
                        }
                    }
                }
            }
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzcu
    public final int hashCode() {
        return ((((((((((((super.hashCode() + 31) * 31) + (this.zzG ? 1 : 0)) * 961) + (this.zzI ? 1 : 0)) * 961) + (this.zzK ? 1 : 0)) * 28629151) + (this.zzP ? 1 : 0)) * 31) + (this.zzQ ? 1 : 0)) * 961) + (this.zzS ? 1 : 0);
    }

    public final zzvd zzc() {
        return new zzvd(this, null);
    }

    @Deprecated
    public final zzvh zze(int i, zzug zzugVar) {
        Map map = (Map) this.zzT.get(i);
        if (map != null) {
            return (zzvh) map.get(zzugVar);
        }
        return null;
    }

    public final boolean zzf(int i) {
        return this.zzU.get(i);
    }

    @Deprecated
    public final boolean zzg(int i, zzug zzugVar) {
        Map map = (Map) this.zzT.get(i);
        return map != null && map.containsKey(zzugVar);
    }
}
