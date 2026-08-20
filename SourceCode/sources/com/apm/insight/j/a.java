package com.apm.insight.j;

import android.os.Handler;
/* loaded from: classes.dex */
public abstract class a implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private Handler f901a;

    /* renamed from: b  reason: collision with root package name */
    private final long f902b;

    /* renamed from: c  reason: collision with root package name */
    private final long f903c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(Handler handler, long j, long j2) {
        this.f901a = handler;
        this.f902b = j;
        this.f903c = j2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a() {
        if (b() > 0) {
            this.f901a.postDelayed(this, b());
        } else {
            this.f901a.post(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(long j) {
        if (j > 0) {
            this.f901a.postDelayed(this, j);
        } else {
            this.f901a.post(this);
        }
    }

    long b() {
        return this.f902b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long c() {
        return this.f903c;
    }
}
