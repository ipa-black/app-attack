package com.applovin.mediation.nativeAds;

import android.app.Activity;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.applovin.impl.mediation.a.d;
import com.applovin.impl.mediation.ads.a;
import com.applovin.impl.mediation.ads.b;
import com.applovin.impl.sdk.n;
import com.applovin.impl.sdk.utils.StringUtils;
import com.applovin.impl.sdk.v;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.mediation.nativeAds.MaxNativeAd;
import com.applovin.mediation.nativeAds.MaxNativeAdViewBinder;
import com.applovin.sdk.AppLovinSdk;
import com.applovin.sdk.R;
import com.google.android.exoplayer2.ExoPlayer;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class MaxNativeAdView extends FrameLayout {
    public static final String MEDIUM_TEMPLATE_1 = "medium_template_1";

    /* renamed from: a  reason: collision with root package name */
    private final View f6283a;

    /* renamed from: b  reason: collision with root package name */
    private final TextView f6284b;

    /* renamed from: c  reason: collision with root package name */
    private final TextView f6285c;

    /* renamed from: d  reason: collision with root package name */
    private final TextView f6286d;

    /* renamed from: e  reason: collision with root package name */
    private final ImageView f6287e;

    /* renamed from: f  reason: collision with root package name */
    private final FrameLayout f6288f;

    /* renamed from: g  reason: collision with root package name */
    private final ViewGroup f6289g;

    /* renamed from: h  reason: collision with root package name */
    private final FrameLayout f6290h;
    private final ViewGroup i;
    private final FrameLayout j;
    private final Button k;
    private b l;

    public MaxNativeAdView(MaxNativeAd maxNativeAd, Activity activity) {
        this(maxNativeAd, (String) null, activity);
    }

    public MaxNativeAdView(MaxNativeAd maxNativeAd, MaxNativeAdViewBinder maxNativeAdViewBinder, Context context) {
        super(context);
        View inflate;
        boolean z = maxNativeAdViewBinder.templateType != null;
        MaxAdFormat format = maxNativeAd != null ? maxNativeAd.getFormat() : MaxAdFormat.NATIVE;
        if (maxNativeAdViewBinder.mainView != null) {
            inflate = maxNativeAdViewBinder.mainView;
        } else {
            inflate = LayoutInflater.from(context).inflate(z ? a(maxNativeAdViewBinder.templateType, format) : maxNativeAdViewBinder.layoutResourceId, (ViewGroup) this, false);
        }
        this.f6283a = inflate;
        addView(this.f6283a);
        this.f6284b = (TextView) findViewById(maxNativeAdViewBinder.titleTextViewId);
        this.f6285c = (TextView) findViewById(maxNativeAdViewBinder.advertiserTextViewId);
        this.f6286d = (TextView) findViewById(maxNativeAdViewBinder.bodyTextViewId);
        this.f6287e = (ImageView) findViewById(maxNativeAdViewBinder.iconImageViewId);
        this.f6288f = (FrameLayout) findViewById(maxNativeAdViewBinder.iconContentViewId);
        this.f6289g = (ViewGroup) findViewById(maxNativeAdViewBinder.optionsContentViewGroupId);
        this.f6290h = (FrameLayout) findViewById(maxNativeAdViewBinder.optionsContentFrameLayoutId);
        this.i = (ViewGroup) findViewById(maxNativeAdViewBinder.mediaContentViewGroupId);
        this.j = (FrameLayout) findViewById(maxNativeAdViewBinder.mediaContentFrameLayoutId);
        this.k = (Button) findViewById(maxNativeAdViewBinder.callToActionButtonId);
        if (maxNativeAd != null) {
            a(maxNativeAd);
        }
    }

    @Deprecated
    public MaxNativeAdView(MaxNativeAd maxNativeAd, String str, Activity activity) {
        this(maxNativeAd, str, activity.getApplicationContext());
    }

    public MaxNativeAdView(MaxNativeAd maxNativeAd, String str, Context context) {
        this(maxNativeAd, new MaxNativeAdViewBinder.Builder(-1).setTemplateType(str).setTitleTextViewId(R.id.applovin_native_title_text_view).setAdvertiserTextViewId(R.id.applovin_native_advertiser_text_view).setBodyTextViewId(R.id.applovin_native_body_text_view).setIconImageViewId(R.id.applovin_native_icon_image_view).setIconContentViewId(R.id.applovin_native_icon_view).setOptionsContentViewGroupId(R.id.applovin_native_options_view).setOptionsContentFrameLayoutId(R.id.applovin_native_options_view).setMediaContentViewGroupId(R.id.applovin_native_media_content_view).setMediaContentFrameLayoutId(R.id.applovin_native_media_content_view).setCallToActionButtonId(R.id.applovin_native_cta_button).build(), context);
    }

    public MaxNativeAdView(MaxNativeAdViewBinder maxNativeAdViewBinder, Context context) {
        this((MaxNativeAd) null, maxNativeAdViewBinder, context);
    }

    public MaxNativeAdView(String str, Context context) {
        this((MaxNativeAd) null, str, context);
    }

    private int a(String str, MaxAdFormat maxAdFormat) {
        if (maxAdFormat == MaxAdFormat.NATIVE) {
            if ("small_template_1".equalsIgnoreCase(str)) {
                return R.layout.max_native_ad_small_template_1;
            }
            if (MEDIUM_TEMPLATE_1.equalsIgnoreCase(str)) {
                return R.layout.max_native_ad_medium_template_1;
            }
            throw new IllegalArgumentException("Attempting to render MAX native ad with invalid format: " + str);
        } else if (maxAdFormat == MaxAdFormat.BANNER) {
            return "vertical_banner_template".equals(str) ? R.layout.max_native_ad_vertical_banner_view : ("media_banner_template".equals(str) || "no_body_banner_template".equals(str)) ? R.layout.max_native_ad_media_banner_view : "vertical_media_banner_template".equals(str) ? R.layout.max_native_ad_vertical_media_banner_view : R.layout.max_native_ad_banner_view;
        } else if (maxAdFormat == MaxAdFormat.LEADER) {
            return "vertical_leader_template".equals(str) ? R.layout.max_native_ad_vertical_leader_view : R.layout.max_native_ad_leader_view;
        } else if (maxAdFormat == MaxAdFormat.MREC) {
            return R.layout.max_native_ad_mrec_view;
        } else {
            throw new IllegalArgumentException("Unsupported ad format: " + maxAdFormat);
        }
    }

    private void a() {
        final ViewGroup viewGroup = (ViewGroup) findViewById(R.id.applovin_native_inner_parent_layout);
        if (viewGroup == null) {
            return;
        }
        ViewTreeObserver viewTreeObserver = getViewTreeObserver();
        if (viewTreeObserver.isAlive()) {
            final WeakReference weakReference = new WeakReference(viewTreeObserver);
            viewTreeObserver.addOnPreDrawListener(new ViewTreeObserver.OnPreDrawListener() { // from class: com.applovin.mediation.nativeAds.MaxNativeAdView.3
                @Override // android.view.ViewTreeObserver.OnPreDrawListener
                public boolean onPreDraw() {
                    ViewTreeObserver viewTreeObserver2 = (ViewTreeObserver) weakReference.get();
                    if (viewTreeObserver2 == null || !viewTreeObserver2.isAlive()) {
                        n nVar = AppLovinSdk.getInstance(MaxNativeAdView.this.getContext()).coreSdk;
                        nVar.D();
                        if (v.a()) {
                            nVar.D().d("MaxNativeAdView", "Failed to remove onPreDrawListener since the view tree observer is not alive.");
                        }
                    } else {
                        viewTreeObserver2.removeOnPreDrawListener(this);
                    }
                    weakReference.clear();
                    LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) viewGroup.getLayoutParams();
                    layoutParams.height = ((View) viewGroup.getParent()).getWidth();
                    viewGroup.setLayoutParams(layoutParams);
                    return true;
                }
            });
        }
    }

    private void a(MaxNativeAd maxNativeAd) {
        this.f6284b.setText(maxNativeAd.getTitle());
        if (this.f6285c != null) {
            if (StringUtils.isValidString(maxNativeAd.getAdvertiser())) {
                this.f6285c.setText(maxNativeAd.getAdvertiser());
            } else {
                this.f6285c.setVisibility(8);
            }
        }
        if (this.f6286d != null) {
            if (StringUtils.isValidString(maxNativeAd.getBody())) {
                this.f6286d.setText(maxNativeAd.getBody());
            } else {
                this.f6286d.setVisibility(4);
            }
        }
        if (this.k != null) {
            if (StringUtils.isValidString(maxNativeAd.getCallToAction())) {
                this.k.setText(maxNativeAd.getCallToAction());
            } else {
                this.k.setVisibility(4);
            }
        }
        MaxNativeAd.MaxNativeAdImage icon = maxNativeAd.getIcon();
        View iconView = maxNativeAd.getIconView();
        FrameLayout frameLayout = this.f6288f;
        if (frameLayout != null) {
            if (icon == null || this.f6287e == null) {
                if (iconView != null) {
                    iconView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
                    this.f6288f.removeAllViews();
                    this.f6288f.addView(iconView);
                } else {
                    frameLayout.setVisibility(8);
                }
            } else if (icon.getDrawable() != null) {
                this.f6287e.setImageDrawable(icon.getDrawable());
            } else if (icon.getUri() == null || !StringUtils.isValidString(icon.getUri().toString())) {
                this.f6288f.setVisibility(8);
            } else {
                this.f6287e.setImageURI(icon.getUri());
            }
        }
        View optionsView = maxNativeAd.getOptionsView();
        FrameLayout frameLayout2 = this.f6290h;
        if (frameLayout2 != null && optionsView != null) {
            optionsView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
            this.f6290h.addView(optionsView);
            this.f6290h.bringToFront();
        } else if (frameLayout2 != null) {
            frameLayout2.setVisibility(8);
        }
        View mediaView = maxNativeAd.getMediaView();
        if (this.j != null) {
            if (mediaView != null) {
                mediaView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
                this.j.addView(mediaView);
            } else if (maxNativeAd.getFormat() == MaxAdFormat.LEADER) {
                this.j.setVisibility(8);
            }
        }
        a();
        postDelayed(new Runnable() { // from class: com.applovin.mediation.nativeAds.MaxNativeAdView.2
            @Override // java.lang.Runnable
            public void run() {
                MaxNativeAdView.this.setSelected(true);
            }
        }, ExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS);
    }

    public b getAdViewTracker() {
        return this.l;
    }

    public TextView getAdvertiserTextView() {
        return this.f6285c;
    }

    public TextView getBodyTextView() {
        return this.f6286d;
    }

    public Button getCallToActionButton() {
        return this.k;
    }

    public List<View> getClickableViews() {
        ArrayList arrayList = new ArrayList(5);
        TextView textView = this.f6284b;
        if (textView != null) {
            arrayList.add(textView);
        }
        TextView textView2 = this.f6285c;
        if (textView2 != null) {
            arrayList.add(textView2);
        }
        TextView textView3 = this.f6286d;
        if (textView3 != null) {
            arrayList.add(textView3);
        }
        ImageView imageView = this.f6287e;
        if (imageView != null) {
            arrayList.add(imageView);
        }
        Button button = this.k;
        if (button != null) {
            arrayList.add(button);
        }
        return arrayList;
    }

    @Deprecated
    public FrameLayout getIconContentView() {
        return this.f6288f;
    }

    public ImageView getIconImageView() {
        return this.f6287e;
    }

    public View getMainView() {
        return this.f6283a;
    }

    @Deprecated
    public FrameLayout getMediaContentView() {
        return this.j;
    }

    public ViewGroup getMediaContentViewGroup() {
        ViewGroup viewGroup = this.i;
        return viewGroup != null ? viewGroup : this.j;
    }

    @Deprecated
    public FrameLayout getOptionsContentView() {
        return this.f6290h;
    }

    public ViewGroup getOptionsContentViewGroup() {
        ViewGroup viewGroup = this.f6289g;
        return viewGroup != null ? viewGroup : this.f6290h;
    }

    public TextView getTitleTextView() {
        return this.f6284b;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        b bVar = this.l;
        if (bVar != null) {
            bVar.b();
        }
        if (isHardwareAccelerated()) {
            return;
        }
        v.h("MaxNativeAdView", "Attached to non-hardware accelerated window: some native ad views require hardware accelerated Activities to render properly.");
    }

    public void recycle() {
        setOnClickListener(null);
        b bVar = this.l;
        if (bVar != null) {
            bVar.a();
            this.l = null;
        }
        View view = this.f6283a;
        if (view == null || view.getParent() == this) {
            return;
        }
        ViewGroup viewGroup = (ViewGroup) this.f6283a.getParent();
        if (viewGroup != null) {
            viewGroup.removeAllViews();
            removeView(viewGroup);
        }
        addView(this.f6283a);
    }

    public void render(d dVar, a.InterfaceC0065a interfaceC0065a, n nVar) {
        recycle();
        if (!dVar.F().get() || !dVar.E().get()) {
            this.l = new b(dVar, this, interfaceC0065a, nVar);
        }
        final MaxNativeAd nativeAd = dVar.getNativeAd();
        if (dVar.B() && nativeAd.isContainerClickable()) {
            nVar.D();
            if (v.a()) {
                nVar.D().b("MaxNativeAdView", "Enabling container click");
            }
            setOnClickListener(new View.OnClickListener() { // from class: com.applovin.mediation.nativeAds.MaxNativeAdView.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    nativeAd.performClick();
                }
            });
        }
        boolean isValidString = StringUtils.isValidString(dVar.A());
        nVar.D();
        if (isValidString) {
            if (v.a()) {
                nVar.D().b("MaxNativeAdView", "Rendering template ad view");
            }
            a(nativeAd);
            return;
        }
        if (v.a()) {
            nVar.D().b("MaxNativeAdView", "Rendering custom ad view");
        }
        renderCustomNativeAdView(nativeAd);
    }

    public void renderCustomNativeAdView(MaxNativeAd maxNativeAd) {
        if (this.f6284b != null) {
            if (StringUtils.isValidString(maxNativeAd.getTitle())) {
                this.f6284b.setText(maxNativeAd.getTitle());
            } else {
                this.f6284b.setText((CharSequence) null);
            }
        }
        String body = maxNativeAd.getBody();
        if (this.f6286d != null) {
            if (StringUtils.isValidString(body)) {
                this.f6286d.setText(body);
            } else {
                this.f6286d.setText((CharSequence) null);
            }
        }
        String advertiser = maxNativeAd.getAdvertiser();
        if (this.f6285c != null) {
            if (StringUtils.isValidString(advertiser)) {
                this.f6285c.setText(advertiser);
            } else {
                this.f6285c.setText((CharSequence) null);
            }
        }
        String callToAction = maxNativeAd.getCallToAction();
        if (this.k != null) {
            if (StringUtils.isValidString(callToAction)) {
                this.k.setText(callToAction);
            } else {
                this.k.setText((CharSequence) null);
            }
        }
        MaxNativeAd.MaxNativeAdImage icon = maxNativeAd.getIcon();
        ImageView imageView = this.f6287e;
        if (imageView != null) {
            if (icon == null) {
                imageView.setImageDrawable(null);
            } else if (icon.getDrawable() != null) {
                this.f6287e.setImageDrawable(icon.getDrawable());
            } else if (icon.getUri() != null) {
                this.f6287e.setImageURI(icon.getUri());
            } else {
                this.f6287e.setImageDrawable(null);
            }
        }
        View mediaView = maxNativeAd.getMediaView();
        ViewGroup viewGroup = this.i;
        if (viewGroup != null) {
            viewGroup.removeAllViews();
            if (mediaView != null) {
                ViewParent parent = mediaView.getParent();
                if (parent != null) {
                    ((ViewGroup) parent).removeAllViews();
                }
                mediaView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
                this.i.addView(mediaView);
            }
        }
        View optionsView = maxNativeAd.getOptionsView();
        ViewGroup viewGroup2 = this.f6289g;
        if (viewGroup2 != null) {
            viewGroup2.removeAllViews();
            if (optionsView != null) {
                ViewParent parent2 = optionsView.getParent();
                if (parent2 != null) {
                    ((ViewGroup) parent2).removeAllViews();
                }
                optionsView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
                this.f6289g.addView(optionsView);
                this.f6289g.bringToFront();
            }
        }
    }
}
