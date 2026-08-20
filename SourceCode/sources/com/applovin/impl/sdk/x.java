package com.applovin.impl.sdk;

import com.applovin.impl.sdk.ad.AppLovinAdImpl;
import java.util.LinkedList;
import java.util.Queue;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class x {

    /* renamed from: a  reason: collision with root package name */
    private final Queue<AppLovinAdImpl> f6223a = new LinkedList();

    /* renamed from: b  reason: collision with root package name */
    private final Object f6224b = new Object();

    /* JADX INFO: Access modifiers changed from: package-private */
    public int a() {
        int size;
        synchronized (this.f6224b) {
            size = this.f6223a.size();
        }
        return size;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(AppLovinAdImpl appLovinAdImpl) {
        synchronized (this.f6224b) {
            if (a() <= 25) {
                this.f6223a.offer(appLovinAdImpl);
            } else {
                v.i("AppLovinSdk", "Maximum queue capacity reached - discarding ad...");
            }
        }
    }

    boolean b() {
        boolean z;
        synchronized (this.f6224b) {
            z = a() == 0;
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AppLovinAdImpl c() {
        AppLovinAdImpl poll;
        synchronized (this.f6224b) {
            poll = !b() ? this.f6223a.poll() : null;
        }
        return poll;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AppLovinAdImpl d() {
        AppLovinAdImpl peek;
        synchronized (this.f6224b) {
            peek = this.f6223a.peek();
        }
        return peek;
    }
}
