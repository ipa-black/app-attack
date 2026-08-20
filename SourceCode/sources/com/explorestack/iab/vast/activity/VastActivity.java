package com.explorestack.iab.vast.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import androidx.core.view.ViewCompat;
import com.explorestack.iab.measurer.VastAdMeasurer;
import com.explorestack.iab.utils.IabClickCallback;
import com.explorestack.iab.utils.Utils;
import com.explorestack.iab.vast.VastActivityListener;
import com.explorestack.iab.vast.VastLog;
import com.explorestack.iab.vast.VastPlaybackListener;
import com.explorestack.iab.vast.VastRequest;
import com.explorestack.iab.vast.activity.VastView;
import com.explorestack.iab.vast.c;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2.dex */
public class VastActivity extends Activity {

    /* renamed from: h  reason: collision with root package name */
    public static WeakReference<VastPlaybackListener> f9500h;
    public static WeakReference<VastAdMeasurer> i;

    /* renamed from: a  reason: collision with root package name */
    public VastRequest f9501a;

    /* renamed from: b  reason: collision with root package name */
    public VastView f9502b;

    /* renamed from: c  reason: collision with root package name */
    public VastActivityListener f9503c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f9504d;

    /* renamed from: e  reason: collision with root package name */
    public boolean f9505e;

    /* renamed from: f  reason: collision with root package name */
    public final VastView.VastViewListener f9506f = new a();

    /* renamed from: g  reason: collision with root package name */
    public static final Map<String, WeakReference<VastActivityListener>> f9499g = new HashMap();
    public static final String j = "VastActivity";

    /* loaded from: classes2.dex */
    public static class Builder {

        /* renamed from: a  reason: collision with root package name */
        public VastRequest f9507a;

        /* renamed from: b  reason: collision with root package name */
        public VastActivityListener f9508b;

        /* renamed from: c  reason: collision with root package name */
        public VastPlaybackListener f9509c;

        /* renamed from: d  reason: collision with root package name */
        public VastAdMeasurer f9510d;

        public Intent a(Context context) {
            Intent intent = new Intent(context, VastActivity.class);
            if (!(context instanceof Activity)) {
                intent.addFlags(268435456);
            }
            return intent;
        }

        public boolean display(Context context) {
            VastRequest vastRequest = this.f9507a;
            if (vastRequest == null) {
                VastLog.a("VastRequest not provided");
                return false;
            }
            try {
                c.b(vastRequest);
                Intent a2 = a(context);
                a2.putExtra("vast_request_id", this.f9507a.getId());
                VastActivityListener vastActivityListener = this.f9508b;
                if (vastActivityListener != null) {
                    VastActivity.b(this.f9507a, vastActivityListener);
                }
                if (this.f9509c != null) {
                    WeakReference unused = VastActivity.f9500h = new WeakReference(this.f9509c);
                } else {
                    WeakReference unused2 = VastActivity.f9500h = null;
                }
                if (this.f9510d != null) {
                    WeakReference unused3 = VastActivity.i = new WeakReference(this.f9510d);
                } else {
                    WeakReference unused4 = VastActivity.i = null;
                }
                context.startActivity(a2);
                return true;
            } catch (Throwable th) {
                VastLog.a(VastActivity.j, th);
                VastActivity.d(this.f9507a);
                WeakReference unused5 = VastActivity.f9500h = null;
                WeakReference unused6 = VastActivity.i = null;
                return false;
            }
        }

        public Builder setAdMeasurer(VastAdMeasurer vastAdMeasurer) {
            this.f9510d = vastAdMeasurer;
            return this;
        }

        public Builder setListener(VastActivityListener vastActivityListener) {
            this.f9508b = vastActivityListener;
            return this;
        }

        public Builder setPlaybackListener(VastPlaybackListener vastPlaybackListener) {
            this.f9509c = vastPlaybackListener;
            return this;
        }

        public Builder setRequest(VastRequest vastRequest) {
            this.f9507a = vastRequest;
            return this;
        }
    }

    /* loaded from: classes2.dex */
    public class a implements VastView.VastViewListener {
        public a() {
        }

        @Override // com.explorestack.iab.vast.activity.VastView.VastViewListener
        public void onClick(VastView vastView, VastRequest vastRequest, IabClickCallback iabClickCallback, String str) {
            if (VastActivity.this.f9503c != null) {
                VastActivity.this.f9503c.onVastClick(VastActivity.this, vastRequest, iabClickCallback, str);
            }
        }

        @Override // com.explorestack.iab.vast.activity.VastView.VastViewListener
        public void onComplete(VastView vastView, VastRequest vastRequest) {
            if (VastActivity.this.f9503c != null) {
                VastActivity.this.f9503c.onVastComplete(VastActivity.this, vastRequest);
            }
        }

        @Override // com.explorestack.iab.vast.activity.VastView.VastViewListener
        public void onError(VastView vastView, VastRequest vastRequest, int i) {
            VastActivity.this.a(vastRequest, i);
        }

        @Override // com.explorestack.iab.vast.activity.VastView.VastViewListener
        public void onFinish(VastView vastView, VastRequest vastRequest, boolean z) {
            VastActivity.this.a(vastRequest, z);
        }

        @Override // com.explorestack.iab.vast.activity.VastView.VastViewListener
        public void onOrientationRequested(VastView vastView, VastRequest vastRequest, int i) {
            int forceOrientation = vastRequest.getForceOrientation();
            if (forceOrientation > -1) {
                i = forceOrientation;
            }
            VastActivity.this.a(i);
        }

        @Override // com.explorestack.iab.vast.activity.VastView.VastViewListener
        public void onShown(VastView vastView, VastRequest vastRequest) {
            if (VastActivity.this.f9503c != null) {
                VastActivity.this.f9503c.onVastShown(VastActivity.this, vastRequest);
            }
        }
    }

    public static void b(VastRequest vastRequest, VastActivityListener vastActivityListener) {
        f9499g.put(vastRequest.getId(), new WeakReference<>(vastActivityListener));
    }

    public static VastActivityListener c(VastRequest vastRequest) {
        Map<String, WeakReference<VastActivityListener>> map = f9499g;
        WeakReference<VastActivityListener> weakReference = map.get(vastRequest.getId());
        if (weakReference == null || weakReference.get() == null) {
            map.remove(vastRequest.getId());
            return null;
        }
        return weakReference.get();
    }

    public static void d(VastRequest vastRequest) {
        f9499g.remove(vastRequest.getId());
    }

    public final void a(int i2) {
        setRequestedOrientation(i2 == 1 ? 7 : i2 == 2 ? 6 : 4);
    }

    public final void a(VastRequest vastRequest, int i2) {
        VastActivityListener vastActivityListener = this.f9503c;
        if (vastActivityListener != null) {
            vastActivityListener.onVastError(this, vastRequest, i2);
        }
    }

    public final void a(VastRequest vastRequest, boolean z) {
        VastActivityListener vastActivityListener = this.f9503c;
        if (vastActivityListener != null && !this.f9505e) {
            vastActivityListener.onVastDismiss(this, vastRequest, z);
        }
        this.f9505e = true;
        try {
            getWindow().clearFlags(128);
        } catch (Exception e2) {
            VastLog.a(e2.getMessage());
        }
        if (vastRequest != null) {
            a(vastRequest.getRequestedOrientation());
        }
        finish();
        overridePendingTransition(0, 0);
    }

    public final void a(VastView vastView) {
        Utils.applyFullscreenActivityFlags(this);
        setContentView(vastView);
    }

    public final Integer b(VastRequest vastRequest) {
        int forceOrientation = vastRequest.getForceOrientation();
        if (forceOrientation > -1) {
            return Integer.valueOf(forceOrientation);
        }
        int preferredVideoOrientation = vastRequest.getPreferredVideoOrientation();
        if (preferredVideoOrientation == 0 || preferredVideoOrientation == getResources().getConfiguration().orientation) {
            return null;
        }
        return Integer.valueOf(preferredVideoOrientation);
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        VastView vastView = this.f9502b;
        if (vastView != null) {
            vastView.handleBackPress();
        }
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        Integer b2;
        getWindow().setBackgroundDrawable(new ColorDrawable(ViewCompat.MEASURED_STATE_MASK));
        overridePendingTransition(0, 0);
        super.onCreate(bundle);
        this.f9501a = c.a(getIntent().getStringExtra("vast_request_id"));
        if (bundle != null && bundle.getBoolean("isFinishedPerformed")) {
            finish();
            return;
        }
        VastRequest vastRequest = this.f9501a;
        if (vastRequest == null) {
            a((VastRequest) null, 405);
            a((VastRequest) null, false);
            return;
        }
        if (bundle == null && (b2 = b(vastRequest)) != null) {
            a(b2.intValue());
            try {
                if ((getPackageManager().getActivityInfo(getComponentName(), 65536).configChanges & 128) == 0) {
                    return;
                }
            } catch (PackageManager.NameNotFoundException unused) {
            }
        }
        this.f9503c = c(this.f9501a);
        VastView vastView = new VastView(this);
        this.f9502b = vastView;
        vastView.setId(1);
        this.f9502b.setListener(this.f9506f);
        WeakReference<VastPlaybackListener> weakReference = f9500h;
        if (weakReference != null) {
            this.f9502b.setPlaybackListener(weakReference.get());
        }
        WeakReference<VastAdMeasurer> weakReference2 = i;
        if (weakReference2 != null) {
            this.f9502b.setAdMeasurer(weakReference2.get());
        }
        if (bundle == null || !bundle.getBoolean("isLoadPerformed")) {
            this.f9504d = true;
            if (!this.f9502b.display(this.f9501a, Boolean.TRUE)) {
                return;
            }
        }
        a(this.f9502b);
    }

    @Override // android.app.Activity
    public void onDestroy() {
        VastRequest vastRequest;
        super.onDestroy();
        if (isChangingConfigurations() || (vastRequest = this.f9501a) == null) {
            return;
        }
        VastView vastView = this.f9502b;
        a(vastRequest, vastView != null && vastView.isFinished());
        VastView vastView2 = this.f9502b;
        if (vastView2 != null) {
            vastView2.destroy();
        }
        d(this.f9501a);
        f9500h = null;
        i = null;
    }

    @Override // android.app.Activity
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean("isLoadPerformed", this.f9504d);
        bundle.putBoolean("isFinishedPerformed", this.f9505e);
    }
}
