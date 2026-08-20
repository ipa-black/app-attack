package com.google.common.eventbus;

import com.appnext.ads.fullscreen.RewardedVideo;
import com.google.common.eventbus.EventBus;
import java.util.concurrent.Executor;
@ElementTypesAreNonnullByDefault
/* loaded from: classes4.dex */
public class AsyncEventBus extends EventBus {
    public AsyncEventBus(String str, Executor executor) {
        super(str, executor, Dispatcher.legacyAsync(), EventBus.LoggingHandler.INSTANCE);
    }

    public AsyncEventBus(Executor executor, SubscriberExceptionHandler subscriberExceptionHandler) {
        super(RewardedVideo.VIDEO_MODE_DEFAULT, executor, Dispatcher.legacyAsync(), subscriberExceptionHandler);
    }

    public AsyncEventBus(Executor executor) {
        super(RewardedVideo.VIDEO_MODE_DEFAULT, executor, Dispatcher.legacyAsync(), EventBus.LoggingHandler.INSTANCE);
    }
}
