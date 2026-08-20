package com.ironsource.environment.e;

import android.os.Handler;
import android.os.HandlerThread;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0016\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\fJ\u0006\u0010\r\u001a\u00020\bJ\u000e\u0010\u000e\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nR\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u000f"}, d2 = {"Lcom/ironsource/environment/thread/IronSourceHandlerThread;", "Landroid/os/HandlerThread;", "name", "", "(Ljava/lang/String;)V", "handler", "Landroid/os/Handler;", "postTask", "", "task", "Ljava/lang/Runnable;", "delay", "", "prepareHandler", "removeCallback", "environment_release"}, k = 1, mv = {1, 4, 2})
/* loaded from: classes3.dex */
public final class b extends HandlerThread {

    /* renamed from: a  reason: collision with root package name */
    private Handler f10583a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b(String name) {
        super(name);
        Intrinsics.checkNotNullParameter(name, "name");
    }

    public final void a() {
        this.f10583a = new Handler(getLooper());
    }

    public final void a(Runnable task, long j) {
        Intrinsics.checkNotNullParameter(task, "task");
        Handler handler = this.f10583a;
        if (handler != null) {
            handler.postDelayed(task, j);
        }
    }
}
