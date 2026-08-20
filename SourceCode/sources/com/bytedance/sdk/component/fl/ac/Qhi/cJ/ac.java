package com.bytedance.sdk.component.fl.ac.Qhi.cJ;

import com.bytedance.sdk.component.fl.MQ;
/* compiled from: LruCountRawCache.java */
/* loaded from: classes2.dex */
public class ac implements MQ {
    private int Qhi;
    private com.bytedance.sdk.component.fl.ac.Qhi.ac<String, byte[]> ac;
    private int cJ;

    public ac(int i, int i2) {
        this.cJ = i;
        this.Qhi = i2;
        this.ac = new com.bytedance.sdk.component.fl.ac.Qhi.ac<String, byte[]>(i) { // from class: com.bytedance.sdk.component.fl.ac.Qhi.cJ.ac.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.bytedance.sdk.component.fl.ac.Qhi.ac
            /* renamed from: Qhi */
            public int cJ(String str, byte[] bArr) {
                if (bArr == null) {
                    return 0;
                }
                return bArr.length;
            }
        };
    }

    @Override // com.bytedance.sdk.component.fl.Qhi
    public boolean Qhi(String str, byte[] bArr) {
        if (str == null || bArr == null) {
            return false;
        }
        this.ac.Qhi(str, bArr);
        return true;
    }

    @Override // com.bytedance.sdk.component.fl.Qhi
    public byte[] Qhi(String str) {
        return this.ac.Qhi((com.bytedance.sdk.component.fl.ac.Qhi.ac<String, byte[]>) str);
    }

    @Override // com.bytedance.sdk.component.fl.Qhi
    public boolean cJ(String str) {
        return this.ac.Qhi((com.bytedance.sdk.component.fl.ac.Qhi.ac<String, byte[]>) str) != null;
    }
}
