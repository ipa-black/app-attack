package com.bytedance.sdk.component.fl.Qhi;

import com.appnext.ads.fullscreen.RewardedVideo;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* compiled from: ThreadPoolFactory.java */
/* loaded from: classes2.dex */
public class ac {
    private static final TimeUnit Qhi = TimeUnit.SECONDS;

    public static ExecutorService Qhi() {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(1, 2, 30L, Qhi, new LinkedBlockingQueue(), new Qhi(RewardedVideo.VIDEO_MODE_DEFAULT));
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        return threadPoolExecutor;
    }
}
