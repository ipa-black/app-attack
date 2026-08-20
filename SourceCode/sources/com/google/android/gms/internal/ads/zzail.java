package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import android.util.SparseIntArray;
import com.google.android.exoplayer2.C;
import com.google.android.exoplayer2.extractor.ts.TsExtractor;
import java.util.Collections;
import java.util.List;
import java.util.Map;
/* compiled from: com.google.android.gms:play-services-ads@@21.5.0 */
/* loaded from: classes4.dex */
public final class zzail implements zzzj {
    public static final zzzq zza = new zzzq() { // from class: com.google.android.gms.internal.ads.zzaii
        @Override // com.google.android.gms.internal.ads.zzzq
        public final zzzj[] zza() {
            zzzq zzzqVar = zzail.zza;
            return new zzzj[]{new zzail(0)};
        }

        @Override // com.google.android.gms.internal.ads.zzzq
        public final /* synthetic */ zzzj[] zzb(Uri uri, Map map) {
            return zzzp.zza(this, uri, map);
        }
    };
    private final List zzb;
    private final zzef zzc;
    private final SparseIntArray zzd;
    private final zzaio zze;
    private final SparseArray zzf;
    private final SparseBooleanArray zzg;
    private final SparseBooleanArray zzh;
    private final zzaih zzi;
    private zzaig zzj;
    private zzzm zzk;
    private int zzl;
    private boolean zzm;
    private boolean zzn;
    private boolean zzo;
    private int zzp;
    private int zzq;

    public zzail() {
        this(0);
    }

    /* JADX WARN: Code restructure failed: missing block: B:87:0x0194, code lost:
        if (r1 == false) goto L78;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r3v14 */
    /* JADX WARN: Type inference failed for: r3v15 */
    /* JADX WARN: Type inference failed for: r3v2, types: [int, boolean] */
    @Override // com.google.android.gms.internal.ads.zzzj
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int zza(com.google.android.gms.internal.ads.zzzk r19, com.google.android.gms.internal.ads.zzaaj r20) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 425
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzail.zza(com.google.android.gms.internal.ads.zzzk, com.google.android.gms.internal.ads.zzaaj):int");
    }

    @Override // com.google.android.gms.internal.ads.zzzj
    public final void zzb(zzzm zzzmVar) {
        this.zzk = zzzmVar;
    }

    @Override // com.google.android.gms.internal.ads.zzzj
    public final void zzc(long j, long j2) {
        zzaig zzaigVar;
        int size = this.zzb.size();
        for (int i = 0; i < size; i++) {
            zzel zzelVar = (zzel) this.zzb.get(i);
            if (zzelVar.zze() != C.TIME_UNSET) {
                long zzc = zzelVar.zzc();
                if (zzc != C.TIME_UNSET) {
                    if (zzc != 0) {
                        if (zzc == j2) {
                        }
                    }
                }
            }
            zzelVar.zzf(j2);
        }
        if (j2 != 0 && (zzaigVar = this.zzj) != null) {
            zzaigVar.zzd(j2);
        }
        this.zzc.zzC(0);
        this.zzd.clear();
        for (int i2 = 0; i2 < this.zzf.size(); i2++) {
            ((zzaiq) this.zzf.valueAt(i2)).zzc();
        }
        this.zzp = 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0020, code lost:
        r1 = r1 + 1;
     */
    @Override // com.google.android.gms.internal.ads.zzzj
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean zzd(com.google.android.gms.internal.ads.zzzk r7) throws java.io.IOException {
        /*
            r6 = this;
            com.google.android.gms.internal.ads.zzef r0 = r6.zzc
            byte[] r0 = r0.zzH()
            com.google.android.gms.internal.ads.zzyz r7 = (com.google.android.gms.internal.ads.zzyz) r7
            r1 = 940(0x3ac, float:1.317E-42)
            r2 = 0
            r7.zzm(r0, r2, r1, r2)
            r1 = r2
        Lf:
            r3 = 188(0xbc, float:2.63E-43)
            if (r1 >= r3) goto L2b
            r3 = r2
        L14:
            r4 = 5
            if (r3 >= r4) goto L26
            int r4 = r3 * 188
            int r4 = r4 + r1
            r4 = r0[r4]
            r5 = 71
            if (r4 == r5) goto L23
            int r1 = r1 + 1
            goto Lf
        L23:
            int r3 = r3 + 1
            goto L14
        L26:
            r7.zzo(r1, r2)
            r7 = 1
            return r7
        L2b:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzail.zzd(com.google.android.gms.internal.ads.zzzk):boolean");
    }

    public zzail(int i) {
        this(1, 0, TsExtractor.DEFAULT_TIMESTAMP_SEARCH_BYTES);
    }

    public zzail(int i, int i2, int i3) {
        zzel zzelVar = new zzel(0L);
        this.zze = new zzaha(0);
        this.zzb = Collections.singletonList(zzelVar);
        this.zzc = new zzef(new byte[9400], 0);
        SparseBooleanArray sparseBooleanArray = new SparseBooleanArray();
        this.zzg = sparseBooleanArray;
        this.zzh = new SparseBooleanArray();
        SparseArray sparseArray = new SparseArray();
        this.zzf = sparseArray;
        this.zzd = new SparseIntArray();
        this.zzi = new zzaih(TsExtractor.DEFAULT_TIMESTAMP_SEARCH_BYTES);
        this.zzk = zzzm.zza;
        this.zzq = -1;
        sparseBooleanArray.clear();
        sparseArray.clear();
        SparseArray sparseArray2 = new SparseArray();
        int size = sparseArray2.size();
        for (int i4 = 0; i4 < size; i4++) {
            this.zzf.put(sparseArray2.keyAt(i4), (zzaiq) sparseArray2.valueAt(i4));
        }
        this.zzf.put(0, new zzaid(new zzaij(this)));
    }
}
