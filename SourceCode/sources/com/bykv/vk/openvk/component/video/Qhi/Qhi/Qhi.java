package com.bykv.vk.openvk.component.video.Qhi.Qhi;

import android.content.Context;
import android.media.MediaDataSource;
import android.text.TextUtils;
import com.bykv.vk.openvk.component.video.Qhi.Qhi.Qhi.ac;
import com.bykv.vk.openvk.component.video.Qhi.Qhi.Qhi.cJ;
import java.io.IOException;
import java.util.concurrent.ConcurrentHashMap;
/* compiled from: SdkMediaDataSource.java */
/* loaded from: classes2.dex */
public class Qhi extends MediaDataSource {
    public static final ConcurrentHashMap<String, Qhi> Qhi = new ConcurrentHashMap<>();
    private final Context CJ;
    private long ac = -2147483648L;
    private final ac cJ;
    private final com.bykv.vk.openvk.component.video.api.ac.ac fl;

    public Qhi(Context context, com.bykv.vk.openvk.component.video.api.ac.ac acVar) {
        this.CJ = context;
        this.fl = acVar;
        this.cJ = new cJ(context, acVar);
    }

    @Override // android.media.MediaDataSource
    public int readAt(long j, byte[] bArr, int i, int i2) throws IOException {
        int Qhi2 = this.cJ.Qhi(j, bArr, i, i2);
        new StringBuilder("readAt: position = ").append(j).append("  buffer.length =").append(bArr.length).append("  offset = ").append(i).append(" size =").append(Qhi2).append("  current = ").append(Thread.currentThread());
        return Qhi2;
    }

    @Override // android.media.MediaDataSource
    public long getSize() throws IOException {
        if (this.ac == -2147483648L) {
            if (this.CJ == null || TextUtils.isEmpty(this.fl.ABk())) {
                return -1L;
            }
            this.ac = this.cJ.ac();
        }
        return this.ac;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        new Object[]{"close: ", this.fl.ABk()};
        ac acVar = this.cJ;
        if (acVar != null) {
            acVar.cJ();
        }
        Qhi.remove(this.fl.iMK());
    }

    public com.bykv.vk.openvk.component.video.api.ac.ac Qhi() {
        return this.fl;
    }

    public static Qhi Qhi(Context context, com.bykv.vk.openvk.component.video.api.ac.ac acVar) {
        Qhi qhi = new Qhi(context, acVar);
        Qhi.put(acVar.iMK(), qhi);
        return qhi;
    }
}
