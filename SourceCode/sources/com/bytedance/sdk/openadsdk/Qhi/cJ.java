package com.bytedance.sdk.openadsdk.Qhi;

import java.io.File;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
/* compiled from: TotalCountLruDiskFile.java */
/* loaded from: classes2.dex */
public class cJ extends Qhi {
    private int Qhi;
    private volatile boolean ac;
    private int cJ;

    public cJ(int i, int i2) {
        this.Qhi = 15;
        this.cJ = 3;
        if (i <= 0) {
            throw new IllegalArgumentException("Max count must be positive number!");
        }
        this.Qhi = i;
        this.cJ = i2;
    }

    public cJ(int i, int i2, boolean z) {
        this.Qhi = 15;
        this.cJ = 3;
        if (i <= 0) {
            throw new IllegalArgumentException("Max count must be positive number!");
        }
        this.Qhi = i;
        this.cJ = i2;
        this.ac = z;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.openadsdk.Qhi.Qhi
    public boolean Qhi(long j, int i) {
        return i <= this.Qhi;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.bytedance.sdk.openadsdk.Qhi.Qhi
    public boolean Qhi(File file, long j, int i) {
        return i <= this.cJ;
    }

    @Override // com.bytedance.sdk.openadsdk.Qhi.Qhi
    protected void Qhi(List<File> list) {
        if (this.ac) {
            CJ(list);
            this.ac = false;
            return;
        }
        ac(list);
    }

    private void ac(List<File> list) {
        long cJ = cJ(list);
        int size = list.size();
        if (Qhi(cJ, size)) {
            return;
        }
        for (File file : list) {
            long length = file.length();
            if (file.delete()) {
                size--;
                cJ -= length;
            }
            if (Qhi(file, cJ, size)) {
                return;
            }
        }
    }

    private void CJ(List<File> list) {
        long cJ;
        int size;
        boolean Qhi;
        if (list != null) {
            try {
                if (list.size() == 0 || (Qhi = Qhi((cJ = cJ(list)), (size = list.size())))) {
                    return;
                }
                TreeMap treeMap = new TreeMap();
                for (File file : list) {
                    treeMap.put(Long.valueOf(file.lastModified()), file);
                }
                for (Map.Entry entry : treeMap.entrySet()) {
                    if (entry != null && !Qhi) {
                        ((Long) entry.getKey()).longValue();
                        File file2 = (File) entry.getValue();
                        long length = file2.length();
                        if (file2.delete()) {
                            size--;
                            cJ -= length;
                        }
                        if (Qhi(file2, cJ, size)) {
                            return;
                        }
                    }
                }
            } catch (Throwable unused) {
            }
        }
    }
}
