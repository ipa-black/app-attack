package com.ironsource.sdk.c;

import android.content.Context;
import android.view.View;
import android.webkit.WebView;
import android.widget.FrameLayout;
import com.ironsource.sdk.utils.Logger;
import org.json.JSONObject;
/* loaded from: classes3.dex */
public final class a extends FrameLayout implements e {

    /* renamed from: a  reason: collision with root package name */
    public c f11549a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f11550b;

    public a(c cVar, Context context) {
        super(context);
        this.f11550b = false;
        setLayoutParams(new FrameLayout.LayoutParams(cVar.f11559d.f11497a, cVar.f11559d.f11498b));
        this.f11549a = cVar;
        addView(cVar.f11557b);
    }

    static /* synthetic */ c a(a aVar, c cVar) {
        aVar.f11549a = null;
        return null;
    }

    public void a() {
        JSONObject jSONObject;
        try {
            jSONObject = this.f11549a.f11558c.a().getJSONObject("configs").getJSONObject("visibilityParams");
        } catch (Exception unused) {
            jSONObject = new JSONObject();
        }
        jSONObject.put("adViewId", this.f11549a.f11556a).put("isBNAutoRemove", false).put("isBannerDisplay", this.f11550b);
        this.f11549a.f11558c.a("destroyBanner", jSONObject);
    }

    @Override // com.ironsource.sdk.c.e
    public final synchronized void a(final String str, final String str2) {
        c cVar = this.f11549a;
        if (cVar != null && cVar.f11558c != null && this.f11549a.f11557b != null) {
            com.ironsource.sdk.b.b bVar = this.f11549a.f11558c;
            if (bVar.f11527a != null && bVar.f11528b != null) {
                bVar.a("containerWasRemoved", bVar.a());
            }
            com.ironsource.environment.e.a.f10578a.a(new Runnable() { // from class: com.ironsource.sdk.c.a.1
                @Override // java.lang.Runnable
                public final void run() {
                    a aVar = a.this;
                    aVar.removeView(aVar.f11549a.f11557b);
                    a.this.f11549a.a(str, str2);
                    a.a(a.this, (c) null);
                }
            });
        }
    }

    @Override // com.ironsource.sdk.c.e
    public final void a(String str, String str2, String str3) {
        c cVar = this.f11549a;
        if (cVar == null) {
            return;
        }
        cVar.a(str, str2, str3);
    }

    @Override // com.ironsource.sdk.c.e
    public final void a(JSONObject jSONObject, String str, String str2) {
        this.f11549a.a(jSONObject, str, str2);
    }

    @Override // com.ironsource.sdk.c.e
    public final WebView b() {
        return this.f11549a.f11557b;
    }

    @Override // com.ironsource.sdk.c.e
    public final void b(JSONObject jSONObject, String str, String str2) {
        this.f11549a.b(jSONObject, str, str2);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected final void onAttachedToWindow() {
        super.onAttachedToWindow();
        Logger.i("IronSourceAdContainer", "onAttachedToWindow:");
        this.f11550b = true;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected final void onDetachedFromWindow() {
        String str;
        JSONObject jSONObject;
        super.onDetachedFromWindow();
        Logger.i("IronSourceAdContainer", "onDetachedFromWindow:");
        c cVar = this.f11549a;
        if (cVar == null || cVar.f11558c == null) {
            str = "in onDetachedFromWindow mAdPresenter or mAdPresenter.getLogic() are null";
        } else {
            this.f11550b = false;
            try {
                try {
                    jSONObject = this.f11549a.f11558c.a().getJSONObject("configs").getJSONObject("visibilityParams");
                } catch (Exception unused) {
                    jSONObject = new JSONObject();
                }
                jSONObject.put("adViewId", this.f11549a.f11556a).put("isBNAutoRemove", true).put("isBannerDisplay", this.f11550b);
                this.f11549a.f11558c.a("destroyBanner", jSONObject);
                return;
            } catch (Exception e2) {
                str = e2.toString();
            }
        }
        Logger.i("IronSourceAdContainer", str);
    }

    @Override // android.view.View
    protected final void onVisibilityChanged(View view, int i) {
        Logger.i("IronSourceAdContainer", "onVisibilityChanged: " + i);
        c cVar = this.f11549a;
        if (cVar == null) {
            return;
        }
        try {
            cVar.f11558c.a("isVisible", i, isShown());
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    @Override // android.view.View
    protected final void onWindowVisibilityChanged(int i) {
        Logger.i("IronSourceAdContainer", "onWindowVisibilityChanged: " + i);
        c cVar = this.f11549a;
        if (cVar == null) {
            return;
        }
        try {
            cVar.f11558c.a("isWindowVisible", i, isShown());
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }
}
