package com.applovin.impl.mediation.debugger.ui.testmode;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import com.applovin.impl.sdk.utils.g;
import com.applovin.mediation.MaxAdFormat;
import com.applovin.sdk.R;
import com.appodeal.ads.modules.common.internal.LogConstants;
/* loaded from: classes.dex */
public class AdControlButton extends RelativeLayout implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    private final Button f5157a;

    /* renamed from: b  reason: collision with root package name */
    private final com.applovin.impl.adview.a f5158b;

    /* renamed from: c  reason: collision with root package name */
    private b f5159c;

    /* renamed from: d  reason: collision with root package name */
    private MaxAdFormat f5160d;

    /* renamed from: e  reason: collision with root package name */
    private a f5161e;

    /* loaded from: classes.dex */
    public interface a {
        void onClick(AdControlButton adControlButton);
    }

    /* loaded from: classes.dex */
    public enum b {
        LOAD,
        LOADING,
        SHOW
    }

    public AdControlButton(Context context) {
        this(context, null, 0);
    }

    public AdControlButton(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public AdControlButton(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        Button button = new Button(getContext());
        this.f5157a = button;
        com.applovin.impl.adview.a aVar = new com.applovin.impl.adview.a(getContext(), 20, 16842873);
        this.f5158b = aVar;
        this.f5159c = b.LOAD;
        setBackgroundColor(0);
        FrameLayout frameLayout = new FrameLayout(context);
        addView(frameLayout, new FrameLayout.LayoutParams(-1, -1, 17));
        button.setTextColor(-1);
        button.setOnClickListener(this);
        frameLayout.addView(button, new FrameLayout.LayoutParams(-1, -1, 17));
        aVar.setColor(-1);
        addView(aVar, new FrameLayout.LayoutParams(-1, -1, 17));
        a(b.LOAD);
    }

    private void a(b bVar) {
        if (b.LOADING == bVar) {
            setEnabled(false);
            this.f5158b.a();
        } else {
            setEnabled(true);
            this.f5158b.b();
        }
        this.f5157a.setText(b(bVar));
        this.f5157a.setBackgroundColor(c(bVar));
    }

    private String b(b bVar) {
        return b.LOAD == bVar ? "Load" : b.LOADING == bVar ? "" : LogConstants.EVENT_SHOW;
    }

    private int c(b bVar) {
        return g.a((b.LOAD == bVar || b.LOADING == bVar) ? R.color.applovin_sdk_brand_color : R.color.applovin_sdk_adControlbutton_brightBlueColor, getContext());
    }

    public b getControlState() {
        return this.f5159c;
    }

    public MaxAdFormat getFormat() {
        return this.f5160d;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        a aVar = this.f5161e;
        if (aVar != null) {
            aVar.onClick(this);
        }
    }

    public void setControlState(b bVar) {
        if (this.f5159c != bVar) {
            a(bVar);
        }
        this.f5159c = bVar;
    }

    public void setFormat(MaxAdFormat maxAdFormat) {
        this.f5160d = maxAdFormat;
    }

    public void setOnClickListener(a aVar) {
        this.f5161e = aVar;
    }
}
