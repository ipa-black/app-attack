package com.bytedance.sdk.component.ROR;

import com.bytedance.sdk.component.cJ.Qhi.Gm;
import java.io.File;
import java.util.Map;
/* compiled from: NetResponse.java */
/* loaded from: classes2.dex */
public class cJ {
    final String CJ;
    final int Qhi;
    Gm ROR;
    final long Tgh;
    final Map<String, String> ac;
    final String cJ;
    final long fl;
    private final boolean hm;
    private File Sf = null;
    private byte[] WAv = null;

    public cJ(boolean z, int i, String str, Map<String, String> map, String str2, long j, long j2) {
        this.hm = z;
        this.Qhi = i;
        this.cJ = str;
        this.ac = map;
        this.CJ = str2;
        this.fl = j;
        this.Tgh = j2;
    }

    public int Qhi() {
        return this.Qhi;
    }

    public String cJ() {
        return this.cJ;
    }

    public Map<String, String> ac() {
        return this.ac;
    }

    public String CJ() {
        return this.CJ;
    }

    public File fl() {
        return this.Sf;
    }

    public void Qhi(File file) {
        this.Sf = file;
    }

    public boolean Tgh() {
        return this.hm;
    }

    public long ROR() {
        return this.fl - this.Tgh;
    }

    public void Qhi(byte[] bArr) {
        this.WAv = bArr;
    }

    public Gm Sf() {
        return this.ROR;
    }

    public void Qhi(Gm gm) {
        this.ROR = gm;
    }
}
