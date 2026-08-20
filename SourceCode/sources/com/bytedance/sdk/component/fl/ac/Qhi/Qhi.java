package com.bytedance.sdk.component.fl.ac.Qhi;

import android.content.Context;
import android.os.Environment;
import android.os.StatFs;
import java.io.File;
/* compiled from: CacheConfig.java */
/* loaded from: classes2.dex */
public class Qhi implements com.bytedance.sdk.component.fl.cJ, Cloneable {
    private static volatile com.bytedance.sdk.component.fl.cJ Tgh;
    private boolean CJ;
    private long Qhi;
    private boolean ac;
    private int cJ;
    private File fl;

    @Override // com.bytedance.sdk.component.fl.cJ
    public boolean Tgh() {
        return true;
    }

    public Qhi(int i, long j, File file) {
        this(i, j, i != 0, j != 0, file);
    }

    public Qhi(int i, long j, boolean z, boolean z2, File file) {
        this.Qhi = j;
        this.cJ = i;
        this.ac = z;
        this.CJ = z2;
        this.fl = file;
    }

    @Override // com.bytedance.sdk.component.fl.cJ
    public long Qhi() {
        return this.Qhi;
    }

    @Override // com.bytedance.sdk.component.fl.cJ
    public int cJ() {
        return this.cJ;
    }

    @Override // com.bytedance.sdk.component.fl.cJ
    public boolean ac() {
        return this.ac;
    }

    @Override // com.bytedance.sdk.component.fl.cJ
    public boolean CJ() {
        return this.CJ;
    }

    @Override // com.bytedance.sdk.component.fl.cJ
    public File fl() {
        return this.fl;
    }

    public static void Qhi(Context context, com.bytedance.sdk.component.fl.cJ cJVar) {
        if (cJVar != null) {
            Tgh = cJVar;
        } else {
            Tgh = Qhi(new File(context.getCacheDir(), "image"));
        }
    }

    public static com.bytedance.sdk.component.fl.cJ Qhi(File file) {
        int min;
        long min2;
        file.mkdirs();
        if (Tgh == null) {
            min = Math.min(Long.valueOf(Runtime.getRuntime().maxMemory()).intValue() / 16, 31457280);
            min2 = Math.min(Sf() / 16, 41943040L);
        } else {
            min = Math.min(Tgh.cJ() / 2, 31457280);
            min2 = Math.min(Tgh.Qhi() / 2, 41943040L);
        }
        return new Qhi(Math.max(min, 26214400), Math.max(min2, 20971520L), file);
    }

    public static com.bytedance.sdk.component.fl.cJ ROR() {
        return Tgh;
    }

    private static long Sf() {
        StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
        return statFs.getAvailableBlocks() * statFs.getBlockSize();
    }
}
