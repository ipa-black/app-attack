package com.applovin.impl.mediation.debugger.ui.a;

import android.app.Activity;
import android.app.Dialog;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.applovin.sdk.AppLovinSdkUtils;
import com.applovin.sdk.R;
/* loaded from: classes.dex */
public class d extends Dialog {

    /* renamed from: a  reason: collision with root package name */
    private ViewGroup f5038a;

    /* renamed from: b  reason: collision with root package name */
    private AppLovinSdkUtils.Size f5039b;

    /* renamed from: c  reason: collision with root package name */
    private Activity f5040c;

    /* renamed from: d  reason: collision with root package name */
    private RelativeLayout f5041d;

    public d(ViewGroup viewGroup, AppLovinSdkUtils.Size size, Activity activity) {
        super(activity, 16973840);
        this.f5038a = viewGroup;
        this.f5039b = size;
        this.f5040c = activity;
        requestWindowFeature(1);
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        this.f5041d.removeView(this.f5038a);
        super.dismiss();
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(AppLovinSdkUtils.dpToPx(this.f5040c, this.f5039b.getWidth()), AppLovinSdkUtils.dpToPx(this.f5040c, this.f5039b.getHeight()));
        layoutParams.addRule(13);
        this.f5038a.setLayoutParams(layoutParams);
        int dpToPx = AppLovinSdkUtils.dpToPx(this.f5040c, 60);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(dpToPx, dpToPx);
        layoutParams2.addRule(14);
        layoutParams2.addRule(12);
        ImageButton imageButton = new ImageButton(this.f5040c);
        imageButton.setLayoutParams(layoutParams2);
        imageButton.setImageDrawable(this.f5040c.getResources().getDrawable(R.drawable.applovin_ic_x_mark));
        imageButton.setScaleType(ImageView.ScaleType.FIT_CENTER);
        imageButton.setColorFilter(-1);
        imageButton.setBackground(null);
        imageButton.setOnClickListener(new View.OnClickListener() { // from class: com.applovin.impl.mediation.debugger.ui.a.d.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                d.this.dismiss();
            }
        });
        RelativeLayout relativeLayout = new RelativeLayout(this.f5040c);
        this.f5041d = relativeLayout;
        relativeLayout.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
        this.f5041d.setBackgroundColor(Integer.MIN_VALUE);
        this.f5041d.addView(imageButton);
        this.f5041d.addView(this.f5038a);
        this.f5041d.setOnClickListener(new View.OnClickListener() { // from class: com.applovin.impl.mediation.debugger.ui.a.d.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                d.this.dismiss();
            }
        });
        setContentView(this.f5041d);
    }
}
