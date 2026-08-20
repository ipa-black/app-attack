package com.applovin.adview;

import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.LifecycleObserver;
import androidx.lifecycle.OnLifecycleEvent;
import com.applovin.impl.adview.activity.b.a;
import com.applovin.impl.adview.o;
import com.applovin.impl.sdk.n;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes.dex */
public class AppLovinFullscreenAdViewObserver implements LifecycleObserver {

    /* renamed from: a  reason: collision with root package name */
    private final n f1191a;

    /* renamed from: b  reason: collision with root package name */
    private final AtomicBoolean f1192b = new AtomicBoolean(true);

    /* renamed from: c  reason: collision with root package name */
    private a f1193c;

    /* renamed from: d  reason: collision with root package name */
    private o f1194d;

    public AppLovinFullscreenAdViewObserver(Lifecycle lifecycle, o oVar, n nVar) {
        this.f1194d = oVar;
        this.f1191a = nVar;
        lifecycle.addObserver(this);
    }

    @OnLifecycleEvent(Lifecycle.Event.ON_DESTROY)
    public void onDestroy() {
        o oVar = this.f1194d;
        if (oVar != null) {
            oVar.a();
            this.f1194d = null;
        }
        a aVar = this.f1193c;
        if (aVar != null) {
            aVar.h();
            this.f1193c.k();
            this.f1193c = null;
        }
    }

    @OnLifecycleEvent(Lifecycle.Event.ON_PAUSE)
    public void onPause() {
        a aVar = this.f1193c;
        if (aVar != null) {
            aVar.g();
            this.f1193c.e();
        }
    }

    @OnLifecycleEvent(Lifecycle.Event.ON_RESUME)
    public void onResume() {
        a aVar;
        if (this.f1192b.getAndSet(false) || (aVar = this.f1193c) == null) {
            return;
        }
        aVar.f();
        this.f1193c.a(0L);
    }

    @OnLifecycleEvent(Lifecycle.Event.ON_STOP)
    public void onStop() {
        a aVar = this.f1193c;
        if (aVar != null) {
            aVar.j();
        }
    }

    public void setPresenter(a aVar) {
        this.f1193c = aVar;
    }
}
