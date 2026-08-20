package com.bytedance.sdk.openadsdk.Qhi;

import com.bytedance.sdk.component.utils.ROR;
import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
/* compiled from: LruDiskFile.java */
/* loaded from: classes2.dex */
public abstract class Qhi {
    private final ExecutorService Qhi = Executors.newSingleThreadExecutor();

    protected abstract void Qhi(List<File> list);

    protected abstract boolean Qhi(long j, int i);

    protected abstract boolean Qhi(File file, long j, int i);

    public void Qhi(File file) throws IOException {
        this.Qhi.submit(new CallableC0208Qhi(file));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void cJ(File file) throws IOException {
        try {
            ROR.cJ(file);
        } catch (Throwable unused) {
        }
        Qhi(ROR.Qhi(file.getParentFile()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long cJ(List<File> list) {
        long j = 0;
        for (File file : list) {
            j += file.length();
        }
        return j;
    }

    /* compiled from: LruDiskFile.java */
    /* renamed from: com.bytedance.sdk.openadsdk.Qhi.Qhi$Qhi  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    private class CallableC0208Qhi implements Callable<Void> {
        private final File cJ;

        private CallableC0208Qhi(File file) {
            this.cJ = file;
        }

        @Override // java.util.concurrent.Callable
        /* renamed from: Qhi */
        public Void call() throws Exception {
            Qhi.this.cJ(this.cJ);
            return null;
        }
    }
}
