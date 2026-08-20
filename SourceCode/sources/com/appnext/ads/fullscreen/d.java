package com.appnext.ads.fullscreen;

import android.app.Activity;
import android.app.Fragment;
import android.content.Context;
import android.graphics.Bitmap;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RatingBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import antlr.Version;
import com.appnext.R;
import com.appnext.core.AppnextAd;
import com.appnext.core.k;
import java.util.ArrayList;
/* loaded from: classes.dex */
public final class d extends Fragment {
    private ImageView aS;
    private TextView aT;
    private h aU;
    private ArrayList<AppnextAd> ads;
    private boolean clicked = false;

    static /* synthetic */ boolean a(d dVar, boolean z) {
        dVar.clicked = true;
        return true;
    }

    @Override // android.app.Fragment
    public final void onAttach(Activity activity) {
        super.onAttach(activity);
        this.aU = (h) activity;
    }

    @Override // android.app.Fragment
    public final void onAttach(Context context) {
        super.onAttach(context);
        this.aU = (h) context;
    }

    @Override // android.app.Fragment
    public final View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        try {
            RelativeLayout relativeLayout = (RelativeLayout) layoutInflater.inflate(this.aU.getTemplate("S3"), viewGroup, false);
            this.ads = this.aU.getPostRollAds();
            ImageView imageView = (ImageView) relativeLayout.findViewById(R.id.privacy);
            ImageView imageView2 = (ImageView) relativeLayout.findViewById(R.id.close);
            View findViewById = relativeLayout.findViewById(R.id.click);
            this.aS = (ImageView) relativeLayout.findViewById(R.id.media);
            this.aT = (TextView) relativeLayout.findViewById(R.id.install);
            imageView.setOnClickListener(new View.OnClickListener() { // from class: com.appnext.ads.fullscreen.d.1
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    d.this.aU.privacyClicked();
                }
            });
            if (k.a(this.ads.get(0), this.aU.getConfigManager())) {
                k.a((Context) this.aU, imageView);
            }
            imageView2.setOnClickListener(new View.OnClickListener() { // from class: com.appnext.ads.fullscreen.d.2
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    d.this.aU.closeClicked();
                }
            });
            findViewById.setOnClickListener(new View.OnClickListener() { // from class: com.appnext.ads.fullscreen.d.3
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    d.this.aU.installClicked((AppnextAd) d.this.ads.get(0));
                }
            });
            String ctaText = this.aU.getCtaText();
            int parseInt = Integer.parseInt(com.appnext.core.a.b.bp().b(this.aU.getLanguage(), com.appnext.core.a.b.hW, "len"));
            if (!TextUtils.isEmpty(ctaText) && ctaText.length() > parseInt) {
                ctaText = ctaText.substring(0, parseInt);
            }
            this.aT.setText(ctaText);
            this.aT.setTextSize(2, Integer.parseInt(com.appnext.core.a.b.bp().b(this.aU.getLanguage(), com.appnext.core.a.b.hW, "font_size_sp")));
            new Thread(new Runnable() { // from class: com.appnext.ads.fullscreen.d.4
                @Override // java.lang.Runnable
                public final void run() {
                    final Bitmap Y = com.appnext.core.f.Y(((AppnextAd) d.this.ads.get(0)).getWideImageURL());
                    new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.appnext.ads.fullscreen.d.4.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            d.this.aS.setImageBitmap(Y);
                        }
                    });
                }
            }).start();
            a(relativeLayout, this.ads.get(0), true);
            View findViewById2 = relativeLayout.findViewById(R.id.extra);
            if (findViewById2 != null) {
                if (this.ads.size() > 1) {
                    a((RelativeLayout) findViewById2.findViewById(R.id.item1), this.ads.get(1), false);
                } else {
                    findViewById2.findViewById(R.id.item1).setVisibility(4);
                }
                if (this.ads.size() > 2) {
                    a((RelativeLayout) findViewById2.findViewById(R.id.item2), this.ads.get(2), false);
                } else {
                    findViewById2.findViewById(R.id.item2).setVisibility(4);
                }
                if (findViewById2.findViewById(R.id.item3) != null) {
                    if (this.ads.size() > 3) {
                        a((RelativeLayout) findViewById2.findViewById(R.id.item3), this.ads.get(3), false);
                    } else {
                        findViewById2.findViewById(R.id.item3).setVisibility(4);
                    }
                }
            }
            report(com.appnext.ads.a.R);
            return relativeLayout;
        } catch (Throwable unused) {
            this.aU.closeClicked();
            return null;
        }
    }

    private void a(final RelativeLayout relativeLayout, final AppnextAd appnextAd, final boolean z) {
        new Thread(new Runnable() { // from class: com.appnext.ads.fullscreen.d.5
            @Override // java.lang.Runnable
            public final void run() {
                final Bitmap Y = com.appnext.core.f.Y(appnextAd.getImageURL());
                new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.appnext.ads.fullscreen.d.5.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        ((ImageView) relativeLayout.findViewById(R.id.icon)).setImageBitmap(Y);
                    }
                });
            }
        }).start();
        ((TextView) relativeLayout.findViewById(R.id.title)).setText(appnextAd.getAdTitle());
        ((RatingBar) relativeLayout.findViewById(R.id.rating)).setRating(Float.parseFloat(appnextAd.getStoreRating()));
        relativeLayout.findViewById(R.id.click).setOnClickListener(new View.OnClickListener() { // from class: com.appnext.ads.fullscreen.d.6
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                FullscreenAd fullscreenAd = new FullscreenAd(appnextAd);
                if (z) {
                    d.this.report(com.appnext.ads.a.T);
                } else {
                    d.this.report(com.appnext.ads.a.U);
                    fullscreenAd.setAppURL(fullscreenAd.getAppURL() + "&tem_id=" + (d.this.aU.isRewarded() ? "8" : Version.subversion) + "05");
                }
                d.this.aU.installClicked(fullscreenAd);
                d.a(d.this, true);
            }
        });
    }

    @Override // android.app.Fragment
    public final void onDestroyView() {
        report(com.appnext.ads.a.S);
        super.onDestroyView();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void report(String str) {
        this.aU.report(str, "S3");
    }
}
