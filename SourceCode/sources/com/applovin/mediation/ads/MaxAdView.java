package com.applovin.mediation.ads;

import android.content.Context;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.View;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.view.ViewCompat;
import com.applovin.adview.AppLovinAdView;
import com.applovin.impl.mediation.ads.MaxAdViewImpl;
import com.applovin.impl.mediation.ads.a;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.sdk.utils.c;
import com.applovin.impl.sdk.utils.r;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.mediation.MaxAdRequestListener;
import com.applovin.mediation.MaxAdRevenueListener;
import com.applovin.mediation.MaxAdReviewListener;
import com.applovin.mediation.MaxAdViewAdListener;
import com.applovin.sdk.AppLovinSdk;
/* loaded from: classes.dex */
public class MaxAdView extends RelativeLayout {

    /* renamed from: a  reason: collision with root package name */
    private MaxAdViewImpl f6243a;

    /* renamed from: b  reason: collision with root package name */
    private View f6244b;

    /* renamed from: c  reason: collision with root package name */
    private int f6245c;

    public MaxAdView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public MaxAdView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        String a2 = c.a(context, attributeSet, AppLovinAdView.NAMESPACE, "adUnitId");
        String a3 = c.a(context, attributeSet, AppLovinAdView.NAMESPACE, "adFormat");
        MaxAdFormat formatFromString = StringUtils.isValidString(a3) ? MaxAdFormat.formatFromString(a3) : c.a(context);
        int attributeIntValue = attributeSet.getAttributeIntValue("http://schemas.android.com/apk/res/android", "gravity", 49);
        if (a2 == null) {
            throw new IllegalArgumentException("No ad unit ID specified");
        }
        if (TextUtils.isEmpty(a2)) {
            throw new IllegalArgumentException("Empty ad unit ID specified");
        }
        if (isInEditMode()) {
            a(context);
        } else {
            a(a2, formatFromString, attributeIntValue, AppLovinSdk.getInstance(context), context);
        }
    }

    public MaxAdView(String str, Context context) {
        this(str, AppLovinSdk.getInstance(context), context);
    }

    public MaxAdView(String str, MaxAdFormat maxAdFormat, Context context) {
        this(str, maxAdFormat, AppLovinSdk.getInstance(context), context);
    }

    public MaxAdView(String str, MaxAdFormat maxAdFormat, AppLovinSdk appLovinSdk, Context context) {
        super(context.getApplicationContext());
        a.logApiCall("MaxAdView", "MaxAdView(adUnitId=" + str + ", adFormat=" + maxAdFormat + ", sdk=" + appLovinSdk + ")");
        a(str, maxAdFormat, 49, appLovinSdk, context);
    }

    public MaxAdView(String str, AppLovinSdk appLovinSdk, Context context) {
        this(str, c.a(context), appLovinSdk, context);
    }

    private void a(Context context) {
        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
        int i = displayMetrics.widthPixels;
        int i2 = displayMetrics.heightPixels;
        TextView textView = new TextView(context);
        textView.setBackgroundColor(Color.rgb(220, 220, 220));
        textView.setTextColor(ViewCompat.MEASURED_STATE_MASK);
        textView.setText("AppLovin MAX Ad");
        textView.setGravity(17);
        addView(textView, i, i2);
    }

    private void a(String str, MaxAdFormat maxAdFormat, int i, AppLovinSdk appLovinSdk, Context context) {
        View view = new View(context.getApplicationContext());
        this.f6244b = view;
        view.setBackgroundColor(0);
        addView(this.f6244b);
        this.f6244b.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        this.f6245c = getVisibility();
        this.f6243a = new MaxAdViewImpl(str.trim(), maxAdFormat, this, this.f6244b, appLovinSdk.coreSdk, context);
        setGravity(i);
        if (getBackground() instanceof ColorDrawable) {
            setBackgroundColor(((ColorDrawable) getBackground()).getColor());
        }
        super.setBackgroundColor(0);
    }

    public void destroy() {
        this.f6243a.destroy();
    }

    public MaxAdFormat getAdFormat() {
        return this.f6243a.getAdFormat();
    }

    public String getAdUnitId() {
        return this.f6243a.getAdUnitId();
    }

    public String getPlacement() {
        this.f6243a.logApiCall("getPlacement()");
        return this.f6243a.getPlacement();
    }

    public void loadAd() {
        this.f6243a.logApiCall("loadAd()");
        this.f6243a.loadAd();
    }

    @Override // android.view.View
    protected void onWindowVisibilityChanged(int i) {
        super.onWindowVisibilityChanged(i);
        if (isInEditMode()) {
            return;
        }
        this.f6243a.logApiCall("onWindowVisibilityChanged(visibility=" + i + ")");
        if (this.f6243a != null && r.a(this.f6245c, i)) {
            this.f6243a.onWindowVisibilityChanged(i);
        }
        this.f6245c = i;
    }

    public void setAdReviewListener(MaxAdReviewListener maxAdReviewListener) {
        this.f6243a.logApiCall("setAdReviewListener(listener=" + maxAdReviewListener + ")");
        this.f6243a.setAdReviewListener(maxAdReviewListener);
    }

    @Override // android.view.View
    public void setAlpha(float f2) {
        this.f6243a.logApiCall("setAlpha(alpha=" + f2 + ")");
        View view = this.f6244b;
        if (view != null) {
            view.setAlpha(f2);
        }
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
        this.f6243a.logApiCall("setBackgroundColor(color=" + i + ")");
        MaxAdViewImpl maxAdViewImpl = this.f6243a;
        if (maxAdViewImpl != null) {
            maxAdViewImpl.setPublisherBackgroundColor(i);
        }
        View view = this.f6244b;
        if (view != null) {
            view.setBackgroundColor(i);
        }
    }

    public void setCustomData(String str) {
        this.f6243a.logApiCall("setCustomData(value=" + str + ")");
        this.f6243a.setCustomData(str);
    }

    public void setExtraParameter(String str, String str2) {
        this.f6243a.logApiCall("setExtraParameter(key=" + str + ", value=" + str2 + ")");
        this.f6243a.setExtraParameter(str, str2);
    }

    public void setListener(MaxAdViewAdListener maxAdViewAdListener) {
        this.f6243a.logApiCall("setListener(listener=" + maxAdViewAdListener + ")");
        this.f6243a.setListener(maxAdViewAdListener);
    }

    public void setLocalExtraParameter(String str, Object obj) {
        this.f6243a.logApiCall("setLocalExtraParameter(key=" + str + ", value=" + obj + ")");
        this.f6243a.setLocalExtraParameter(str, obj);
    }

    public void setPlacement(String str) {
        this.f6243a.logApiCall("setPlacement(placement=" + str + ")");
        this.f6243a.setPlacement(str);
    }

    public void setRequestListener(MaxAdRequestListener maxAdRequestListener) {
        this.f6243a.logApiCall("setRequestListener(listener=" + maxAdRequestListener + ")");
        this.f6243a.setRequestListener(maxAdRequestListener);
    }

    public void setRevenueListener(MaxAdRevenueListener maxAdRevenueListener) {
        this.f6243a.logApiCall("setRevenueListener(listener=" + maxAdRevenueListener + ")");
        this.f6243a.setRevenueListener(maxAdRevenueListener);
    }

    public void startAutoRefresh() {
        this.f6243a.logApiCall("startAutoRefresh()");
        this.f6243a.startAutoRefresh();
    }

    public void stopAutoRefresh() {
        this.f6243a.logApiCall("stopAutoRefresh()");
        this.f6243a.stopAutoRefresh();
    }

    @Override // android.view.View
    public String toString() {
        MaxAdViewImpl maxAdViewImpl = this.f6243a;
        return maxAdViewImpl != null ? maxAdViewImpl.toString() : "MaxAdView";
    }
}
