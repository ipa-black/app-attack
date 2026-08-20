package com.bytedance.sdk.component.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.webkit.ValueCallback;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.bytedance.sdk.component.utils.ABk;
import com.bytedance.sdk.component.widget.SSWebView;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
/* loaded from: classes2.dex */
public class PangleWebView extends WebView {
    private boolean CJ;
    public long Qhi;
    private Qhi Tgh;
    private boolean ac;
    private final HashSet<String> cJ;
    private boolean fl;

    public PangleWebView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.cJ = new HashSet<>();
        this.Qhi = System.currentTimeMillis();
        Qhi();
    }

    public PangleWebView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.cJ = new HashSet<>();
        this.Qhi = System.currentTimeMillis();
        Qhi();
    }

    public void setArbitrageTouchListener(Qhi qhi) {
        this.Tgh = qhi;
    }

    private void Qhi() {
        WebSettings settings = getSettings();
        settings.setSupportZoom(false);
        settings.setDisplayZoomControls(false);
        settings.setBuiltInZoomControls(false);
        settings.setSupportMultipleWindows(false);
        settings.setAllowFileAccess(false);
        settings.setSavePassword(false);
        setWebViewClient(new SSWebView.Qhi());
    }

    @Override // android.webkit.WebView
    public void addJavascriptInterface(Object obj, String str) {
        new StringBuilder("addJavascriptInterface: ").append(str).append(", ").append(this);
        if (!this.ac && !this.fl) {
            super.addJavascriptInterface(obj, str);
            this.cJ.add(str);
            return;
        }
        ABk.Qhi("TTAD.PangleWebView", "addJavascriptInterface: has destroyed or has recycler");
    }

    @Override // android.webkit.WebView
    public void removeJavascriptInterface(String str) {
        if (this.ac || this.fl) {
            return;
        }
        super.removeJavascriptInterface(str);
        this.cJ.remove(str);
    }

    @Override // android.webkit.WebView
    public void onPause() {
        if (!this.ac && !this.fl) {
            try {
                super.onPause();
                return;
            } catch (Exception e2) {
                ABk.Qhi("TTAD.PangleWebView", "onPause: ", e2);
                return;
            }
        }
        ABk.Qhi("TTAD.PangleWebView", "onPause: has destroyed or recycler");
    }

    @Override // android.webkit.WebView
    public void onResume() {
        if (!this.ac && !this.fl) {
            try {
                super.onResume();
                return;
            } catch (Exception e2) {
                ABk.Qhi("TTAD.PangleWebView", "onResume: ", e2);
                return;
            }
        }
        ABk.Qhi("TTAD.PangleWebView", "onResume: has destroyed or recycler");
    }

    @Override // android.webkit.WebView
    public void stopLoading() {
        if (!this.ac && !this.fl) {
            try {
                super.stopLoading();
                return;
            } catch (Exception e2) {
                ABk.Qhi("TTAD.PangleWebView", "stopLoading: ", e2);
                return;
            }
        }
        ABk.Qhi("TTAD.PangleWebView", "stopLoading: has destroyed or recycler");
    }

    @Override // android.webkit.WebView
    public void reload() {
        if (!this.ac && !this.fl) {
            super.reload();
        } else {
            ABk.Qhi("TTAD.PangleWebView", "reload: has destroyed or recycler");
        }
    }

    @Override // android.webkit.WebView
    public void goBack() {
        if (!this.ac && !this.fl) {
            super.goBack();
        } else {
            ABk.Qhi("TTAD.PangleWebView", "goBack: has destroyed or recycler");
        }
    }

    @Override // android.webkit.WebView
    public void goForward() {
        if (!this.ac && !this.fl) {
            super.goForward();
        } else {
            ABk.Qhi("TTAD.PangleWebView", "goForward: has destroyed or recycler");
        }
    }

    @Override // android.webkit.WebView
    public void goBackOrForward(int i) {
        if (!this.ac && !this.fl) {
            super.goBackOrForward(i);
        } else {
            ABk.Qhi("TTAD.PangleWebView", "goBackOrForward: has destroyed or recycler");
        }
    }

    @Override // android.webkit.WebView
    public void clearCache(boolean z) {
        if (!this.ac && !this.fl) {
            super.clearCache(z);
        } else {
            ABk.Qhi("TTAD.PangleWebView", "clearCache: has destroyed or recycler");
        }
    }

    @Override // android.webkit.WebView
    public void loadUrl(String str) {
        if (!this.ac && !this.fl) {
            try {
                super.loadUrl(str);
                return;
            } catch (Exception | IncompatibleClassChangeError | NoClassDefFoundError e2) {
                ABk.Qhi("TTAD.PangleWebView", "loadUrl: ", e2);
                return;
            }
        }
        ABk.Qhi("TTAD.PangleWebView", "loadUrl: has destroyed or recycler");
    }

    @Override // android.webkit.WebView
    public void loadUrl(String str, Map<String, String> map) {
        if (!this.ac && !this.fl) {
            try {
                super.loadUrl(str, map);
                return;
            } catch (Exception | IncompatibleClassChangeError | NoClassDefFoundError e2) {
                ABk.Qhi("TTAD.PangleWebView", "loadUrl: ", e2);
                return;
            }
        }
        ABk.Qhi("TTAD.PangleWebView", "loadUrl: has destroyed or recycler");
    }

    @Override // android.webkit.WebView, android.widget.AbsoluteLayout, android.view.View
    protected void onMeasure(int i, int i2) {
        if (this.ac || this.fl) {
            setMeasuredDimension(0, 0);
        } else {
            super.onMeasure(i, i2);
        }
    }

    @Override // android.webkit.WebView
    public void loadDataWithBaseURL(String str, String str2, String str3, String str4, String str5) {
        if (!this.ac && !this.fl) {
            super.loadDataWithBaseURL(str, str2, str3, str4, str5);
        } else {
            ABk.Qhi("TTAD.PangleWebView", "loadDataWithBaseURL: has destroyed or recycler");
        }
    }

    @Override // android.webkit.WebView
    public void evaluateJavascript(String str, ValueCallback<String> valueCallback) {
        if (!this.ac && !this.fl) {
            super.evaluateJavascript(str, valueCallback);
        } else if (valueCallback != null) {
            ABk.Qhi("TTAD.PangleWebView", "evaluateJavascript: has destroyed or recycler, ".concat(String.valueOf(str)));
            valueCallback.onReceiveValue("");
        }
    }

    @Override // android.webkit.WebView, android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        new StringBuilder("onAttachedToWindow: ").append(this);
    }

    public void setDestroyOnDetached(boolean z) {
        this.CJ = z;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        new StringBuilder("onDetachedFromWindow: ").append(this);
        if (this.CJ) {
            destroy();
        }
    }

    @Override // android.webkit.WebView
    public void resumeTimers() {
        if (this.ac || this.fl) {
            return;
        }
        super.resumeTimers();
    }

    @Override // android.webkit.WebView
    public void pauseTimers() {
        if (this.ac || this.fl) {
            return;
        }
        super.pauseTimers();
    }

    @Override // android.webkit.WebView, android.view.View
    protected void onDraw(Canvas canvas) {
        if (this.ac || this.fl) {
            return;
        }
        super.onDraw(canvas);
    }

    @Override // android.webkit.WebView
    public void destroy() {
        new StringBuilder("destroy() called, ").append(this);
        if (this.ac) {
            return;
        }
        this.ac = true;
        cJ();
        super.destroy();
    }

    private void cJ() {
        if (this.ac) {
            return;
        }
        ViewParent parent = getParent();
        if (parent instanceof ViewGroup) {
            ((ViewGroup) parent).removeView(this);
        }
        setOnClickListener(null);
        setOnTouchListener(null);
        Iterator<String> it = this.cJ.iterator();
        while (it.hasNext()) {
            super.removeJavascriptInterface(it.next());
        }
    }

    public void setRecycler(boolean z) {
        this.fl = z;
    }

    @Override // android.view.View
    public void setOnTouchListener(View.OnTouchListener onTouchListener) {
        Qhi qhi = this.Tgh;
        if (qhi == null) {
            super.setOnTouchListener(onTouchListener);
            return;
        }
        qhi.Qhi(onTouchListener);
        super.setOnTouchListener(this.Tgh);
    }
}
