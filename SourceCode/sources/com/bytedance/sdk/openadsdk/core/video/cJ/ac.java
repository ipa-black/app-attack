package com.bytedance.sdk.openadsdk.core.video.cJ;

import com.bytedance.sdk.component.utils.ROR;
import java.io.File;
import java.util.List;
/* compiled from: TotalCountLruDiskDir.java */
/* loaded from: classes2.dex */
public class ac extends com.bytedance.sdk.openadsdk.Qhi.cJ {
    public ac(int i, int i2) {
        super(i, i2);
    }

    @Override // com.bytedance.sdk.openadsdk.Qhi.cJ, com.bytedance.sdk.openadsdk.Qhi.Qhi
    protected void Qhi(List<File> list) {
        int size = list.size();
        if (Qhi(0L, size)) {
            return;
        }
        for (File file : list) {
            ROR.ac(file);
            size--;
            if (Qhi(file, 0L, size)) {
                return;
            }
        }
    }
}
