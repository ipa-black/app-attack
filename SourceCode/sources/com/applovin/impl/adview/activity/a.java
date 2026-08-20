package com.applovin.impl.adview.activity;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.os.RemoteException;
import com.applovin.adview.AppLovinFullscreenActivity;
import com.applovin.impl.adview.activity.FullscreenAdService;
import com.applovin.impl.adview.activity.b.a;
import com.applovin.impl.adview.o;
import com.applovin.impl.sdk.ad.d;
import com.applovin.impl.sdk.ad.e;
import com.applovin.impl.sdk.e.p;
import com.applovin.impl.sdk.n;
import com.applovin.impl.sdk.utils.JsonUtils;
import com.applovin.impl.sdk.v;
import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdClickListener;
import com.applovin.sdk.AppLovinAdDisplayListener;
import com.applovin.sdk.AppLovinAdLoadListener;
import com.applovin.sdk.AppLovinAdVideoPlaybackListener;
import java.lang.ref.WeakReference;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes.dex */
public class a implements ServiceConnection {

    /* renamed from: a  reason: collision with root package name */
    private final n f4270a;

    /* renamed from: b  reason: collision with root package name */
    private final v f4271b;

    /* renamed from: c  reason: collision with root package name */
    private final WeakReference<AppLovinFullscreenActivity> f4272c;

    /* renamed from: d  reason: collision with root package name */
    private final AtomicBoolean f4273d = new AtomicBoolean();

    /* renamed from: e  reason: collision with root package name */
    private Messenger f4274e;

    /* renamed from: com.applovin.impl.adview.activity.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    private class C0058a implements AppLovinAdClickListener, AppLovinAdDisplayListener, AppLovinAdVideoPlaybackListener {
        private C0058a() {
        }

        private void a(Bundle bundle, FullscreenAdService.b bVar) {
            Message obtain = Message.obtain((Handler) null, bVar.a());
            if (bundle != null) {
                obtain.setData(bundle);
            }
            try {
                a.this.f4274e.send(obtain);
            } catch (RemoteException e2) {
                v unused = a.this.f4271b;
                if (v.a()) {
                    a.this.f4271b.b("AppLovinFullscreenActivity", "Failed to forward callback (" + bVar.a() + ")", e2);
                }
            }
        }

        private void a(FullscreenAdService.b bVar) {
            a(null, bVar);
        }

        @Override // com.applovin.sdk.AppLovinAdClickListener
        public void adClicked(AppLovinAd appLovinAd) {
            a(FullscreenAdService.b.AD_CLICKED);
        }

        @Override // com.applovin.sdk.AppLovinAdDisplayListener
        public void adDisplayed(AppLovinAd appLovinAd) {
            a(FullscreenAdService.b.AD_DISPLAYED);
        }

        @Override // com.applovin.sdk.AppLovinAdDisplayListener
        public void adHidden(AppLovinAd appLovinAd) {
            a(FullscreenAdService.b.AD_HIDDEN);
        }

        @Override // com.applovin.sdk.AppLovinAdVideoPlaybackListener
        public void videoPlaybackBegan(AppLovinAd appLovinAd) {
            a(FullscreenAdService.b.AD_VIDEO_STARTED);
        }

        @Override // com.applovin.sdk.AppLovinAdVideoPlaybackListener
        public void videoPlaybackEnded(AppLovinAd appLovinAd, double d2, boolean z) {
            Bundle bundle = new Bundle();
            bundle.putDouble("percent_viewed", d2);
            bundle.putBoolean("fully_watched", z);
            a(bundle, FullscreenAdService.b.AD_VIDEO_ENDED);
        }
    }

    /* loaded from: classes.dex */
    private static class b extends Handler {

        /* renamed from: a  reason: collision with root package name */
        private final WeakReference<a> f4286a;

        private b(a aVar) {
            this.f4286a = new WeakReference<>(aVar);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            a aVar;
            if (message.what != FullscreenAdService.b.AD.a() || (aVar = this.f4286a.get()) == null) {
                super.handleMessage(message);
            } else {
                aVar.a(com.applovin.impl.sdk.ad.b.a(message.getData().getInt("ad_source")), message.getData().getString(FullscreenAdService.DATA_KEY_RAW_FULL_AD_RESPONSE));
            }
        }
    }

    public a(AppLovinFullscreenActivity appLovinFullscreenActivity, n nVar) {
        this.f4270a = nVar;
        this.f4271b = nVar.D();
        this.f4272c = new WeakReference<>(appLovinFullscreenActivity);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        AppLovinFullscreenActivity appLovinFullscreenActivity = this.f4272c.get();
        if (appLovinFullscreenActivity != null) {
            if (v.a()) {
                this.f4271b.b("AppLovinFullscreenActivity", "Dismissing...");
            }
            appLovinFullscreenActivity.dismiss();
        } else if (v.a()) {
            this.f4271b.e("AppLovinFullscreenActivity", "Unable to dismiss parent Activity");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(com.applovin.impl.sdk.ad.b bVar, String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            this.f4270a.V().a((com.applovin.impl.sdk.e.a) new p(jSONObject, d.a(JsonUtils.getString(jSONObject, "zone_id", "")), bVar, new AppLovinAdLoadListener() { // from class: com.applovin.impl.adview.activity.a.1
                @Override // com.applovin.sdk.AppLovinAdLoadListener
                public void adReceived(final AppLovinAd appLovinAd) {
                    final AppLovinFullscreenActivity appLovinFullscreenActivity = (AppLovinFullscreenActivity) a.this.f4272c.get();
                    v unused = a.this.f4271b;
                    boolean a2 = v.a();
                    if (appLovinFullscreenActivity == null) {
                        if (a2) {
                            a.this.f4271b.e("AppLovinFullscreenActivity", "Unable to present ad, parent activity has been GC'd - " + appLovinAd);
                            return;
                        }
                        return;
                    }
                    if (a2) {
                        a.this.f4271b.b("AppLovinFullscreenActivity", "Presenting ad...");
                    }
                    final C0058a c0058a = new C0058a();
                    com.applovin.impl.adview.activity.b.a.a((e) appLovinAd, c0058a, c0058a, c0058a, a.this.f4270a, appLovinFullscreenActivity, new a.InterfaceC0060a() { // from class: com.applovin.impl.adview.activity.a.1.1
                        @Override // com.applovin.impl.adview.activity.b.a.InterfaceC0060a
                        public void a(com.applovin.impl.adview.activity.b.a aVar) {
                            appLovinFullscreenActivity.setPresenter(aVar);
                            aVar.d();
                        }

                        @Override // com.applovin.impl.adview.activity.b.a.InterfaceC0060a
                        public void a(String str2, Throwable th) {
                            o.a((e) appLovinAd, c0058a, str2, th, appLovinFullscreenActivity);
                        }
                    });
                }

                @Override // com.applovin.sdk.AppLovinAdLoadListener
                public void failedToReceiveAd(int i) {
                    a.this.a();
                }
            }, this.f4270a));
        } catch (JSONException e2) {
            if (v.a()) {
                this.f4271b.b("AppLovinFullscreenActivity", "Unable to process ad: " + str, e2);
            }
            a();
        }
    }

    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        if (this.f4273d.compareAndSet(false, true)) {
            if (v.a()) {
                this.f4271b.b("AppLovinFullscreenActivity", "Fullscreen ad service connected to " + componentName);
            }
            this.f4274e = new Messenger(iBinder);
            Message obtain = Message.obtain((Handler) null, FullscreenAdService.b.AD.a());
            obtain.replyTo = new Messenger(new b());
            try {
                if (v.a()) {
                    this.f4271b.b("AppLovinFullscreenActivity", "Requesting ad from FullscreenAdService...");
                }
                this.f4274e.send(obtain);
            } catch (RemoteException e2) {
                if (v.a()) {
                    this.f4271b.b("AppLovinFullscreenActivity", "Failed to send ad request message to FullscreenAdService", e2);
                }
                a();
            }
        }
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
        if (this.f4273d.compareAndSet(true, false) && v.a()) {
            this.f4271b.b("AppLovinFullscreenActivity", "FullscreenAdService disconnected from " + componentName);
        }
    }
}
