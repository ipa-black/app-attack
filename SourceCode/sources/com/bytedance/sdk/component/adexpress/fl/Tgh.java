package com.bytedance.sdk.component.adexpress.fl;

import android.content.Context;
import android.content.MutableContextWrapper;
import android.text.TextUtils;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.bytedance.sdk.component.Qhi.pM;
import com.bytedance.sdk.component.adexpress.CJ.EBS;
import com.bytedance.sdk.component.widget.SSWebView;
import com.google.android.exoplayer2.C;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
/* compiled from: WebViewPool.java */
/* loaded from: classes2.dex */
public class Tgh {
    private static int Sf = 10;
    private static int Tgh = 10;
    private static final byte[] fl = new byte[0];
    private static volatile Tgh hm;
    private final AtomicBoolean ROR = new AtomicBoolean(false);
    private List<SSWebView> Qhi = new ArrayList();
    private List<SSWebView> cJ = new ArrayList();
    private Map<Integer, ac> ac = new HashMap();
    private Map<Integer, fl> CJ = new HashMap();

    private Tgh() {
        com.bytedance.sdk.component.adexpress.Qhi.Qhi.ac ac = com.bytedance.sdk.component.adexpress.Qhi.Qhi.Qhi.Qhi().ac();
        if (ac != null) {
            Tgh = ac.WAv();
            Sf = ac.Gm();
        }
    }

    public static Tgh Qhi() {
        if (hm == null) {
            synchronized (Tgh.class) {
                if (hm == null) {
                    hm = new Tgh();
                }
            }
        }
        return hm;
    }

    public SSWebView Qhi(Context context, String str) {
        if (CJ() <= 0) {
            return null;
        }
        if (EBS.Qhi(str) && CJ() <= 1) {
            new Object[]{"get WebView from newengine pool; but ad type is does not meet the requirement ", Integer.valueOf(CJ())};
            return null;
        }
        SSWebView remove = this.cJ.remove(0);
        if (remove == null) {
            return null;
        }
        try {
            Context context2 = remove.getContext();
            if (context2 instanceof MutableContextWrapper) {
                ((MutableContextWrapper) context2).setBaseContext(context.getApplicationContext());
                remove.setRecycler(false);
                new Object[]{"get WebView from newengine pool; current available count: ", Integer.valueOf(CJ())};
            }
            return remove;
        } catch (Throwable unused) {
            new Object[]{"get WebView from newengine pool exception; current available count: ", Integer.valueOf(CJ())};
            return null;
        }
    }

    public void Qhi(SSWebView sSWebView) {
        if (sSWebView == null) {
            return;
        }
        if (this.cJ.size() >= Sf) {
            try {
                Context context = sSWebView.getContext();
                if (context instanceof MutableContextWrapper) {
                    ((MutableContextWrapper) context).setBaseContext(context.getApplicationContext());
                }
                sSWebView.zc();
            } catch (Throwable th) {
                new Object[]{"WebView newengine pool is full，destroy webview ", th.getMessage()};
            }
        } else if (this.cJ.contains(sSWebView)) {
        } else {
            try {
                Context context2 = sSWebView.getContext();
                if (context2 instanceof MutableContextWrapper) {
                    ((MutableContextWrapper) context2).setBaseContext(context2.getApplicationContext());
                    sSWebView.setRecycler(true);
                    this.cJ.add(sSWebView);
                    new Object[]{"recycle WebView newengine，current available count: ", Integer.valueOf(CJ())};
                }
            } catch (Throwable th2) {
                new Object[]{"recycle WebView newengine fail，current available count: ", Integer.valueOf(CJ()), "exception is ", th2.getMessage()};
            }
        }
    }

    public void cJ(SSWebView sSWebView) {
        if (sSWebView == null) {
            return;
        }
        ROR(sSWebView);
        sSWebView.b_("SDK_INJECT_GLOBAL");
        Tgh(sSWebView);
        Qhi(sSWebView);
    }

    public SSWebView cJ(Context context, String str) {
        if (ac() <= 0) {
            return null;
        }
        if (EBS.Qhi(str) && ac() <= 1) {
            new Object[]{"get WebView from pool; but ad type is does not meet the requirement ", Integer.valueOf(ac())};
            return null;
        }
        SSWebView remove = this.Qhi.remove(0);
        if (remove == null) {
            return null;
        }
        try {
            Context context2 = remove.getContext();
            if (context2 instanceof MutableContextWrapper) {
                ((MutableContextWrapper) context2).setBaseContext(context.getApplicationContext());
                remove.setRecycler(false);
                new Object[]{"get WebView from pool; current available count: ", Integer.valueOf(ac())};
            }
            return remove;
        } catch (Throwable unused) {
            new Object[]{"get WebView from pool exception; current available count: ", Integer.valueOf(ac())};
            return null;
        }
    }

    public void ac(SSWebView sSWebView) {
        if (sSWebView == null) {
            return;
        }
        ROR(sSWebView);
        sSWebView.b_("SDK_INJECT_GLOBAL");
        Tgh(sSWebView);
        CJ(sSWebView);
    }

    public void CJ(SSWebView sSWebView) {
        if (sSWebView == null) {
            return;
        }
        if (this.Qhi.size() >= Tgh) {
            try {
                Context context = sSWebView.getContext();
                if (context instanceof MutableContextWrapper) {
                    ((MutableContextWrapper) context).setBaseContext(context.getApplicationContext());
                }
                sSWebView.zc();
            } catch (Throwable th) {
                new Object[]{"WebView pool is full，destroy webview ", th.getMessage()};
            }
        } else if (this.Qhi.contains(sSWebView)) {
        } else {
            try {
                Context context2 = sSWebView.getContext();
                if (context2 instanceof MutableContextWrapper) {
                    ((MutableContextWrapper) context2).setBaseContext(context2.getApplicationContext());
                    sSWebView.setRecycler(true);
                    this.Qhi.add(sSWebView);
                    new Object[]{"recycle WebView，current available count: ", Integer.valueOf(ac())};
                }
            } catch (Throwable th2) {
                new Object[]{"recycle WebView fail，current available count: ", Integer.valueOf(ac()), "exception is ", th2.getMessage()};
            }
        }
    }

    public boolean fl(SSWebView sSWebView) {
        if (sSWebView == null) {
            return false;
        }
        try {
            Context context = sSWebView.getContext();
            if (context instanceof MutableContextWrapper) {
                ((MutableContextWrapper) context).setBaseContext(context.getApplicationContext());
            }
            sSWebView.zc();
            return true;
        } catch (Throwable th) {
            new Object[]{"WebView abandon failed ", th.getMessage()};
            return true;
        }
    }

    public void cJ() {
        for (SSWebView sSWebView : this.Qhi) {
            if (sSWebView != null) {
                try {
                    Context context = sSWebView.getContext();
                    if (context instanceof MutableContextWrapper) {
                        ((MutableContextWrapper) context).setBaseContext(context.getApplicationContext());
                    }
                    sSWebView.zc();
                } catch (Throwable th) {
                    new Object[]{"WebView clear failed ", th.getMessage()};
                }
            }
        }
        this.Qhi.clear();
        for (SSWebView sSWebView2 : this.cJ) {
            if (sSWebView2 != null) {
                try {
                    Context context2 = sSWebView2.getContext();
                    if (context2 instanceof MutableContextWrapper) {
                        ((MutableContextWrapper) context2).setBaseContext(context2.getApplicationContext());
                    }
                    sSWebView2.zc();
                } catch (Throwable th2) {
                    new Object[]{"WebView newengine clear failed ", th2.getMessage()};
                }
            }
        }
        this.cJ.clear();
    }

    public int ac() {
        return this.Qhi.size();
    }

    public int CJ() {
        return this.cJ.size();
    }

    private void ROR(SSWebView sSWebView) {
        sSWebView.removeAllViews();
        sSWebView.ac();
        sSWebView.setWebChromeClient(null);
        sSWebView.setWebViewClient(null);
        sSWebView.setDownloadListener(null);
        sSWebView.setJavaScriptEnabled(true);
        sSWebView.setAppCacheEnabled(false);
        sSWebView.setSupportZoom(false);
        sSWebView.setUseWideViewPort(true);
        sSWebView.setJavaScriptCanOpenWindowsAutomatically(true);
        sSWebView.setDomStorageEnabled(true);
        sSWebView.setBuiltInZoomControls(false);
        sSWebView.setLayoutAlgorithm(WebSettings.LayoutAlgorithm.NORMAL);
        sSWebView.setLoadWithOverviewMode(false);
        sSWebView.setDefaultTextEncodingName(C.UTF8_NAME);
        sSWebView.setDefaultFontSize(16);
    }

    public void Qhi(SSWebView sSWebView, cJ cJVar) {
        if (sSWebView == null || cJVar == null) {
            return;
        }
        ac acVar = this.ac.get(Integer.valueOf(sSWebView.hashCode()));
        if (acVar != null) {
            acVar.Qhi(cJVar);
        } else {
            acVar = new ac(cJVar);
            this.ac.put(Integer.valueOf(sSWebView.hashCode()), acVar);
        }
        sSWebView.Qhi(acVar, "SDK_INJECT_GLOBAL");
    }

    public void Tgh(SSWebView sSWebView) {
        if (sSWebView == null) {
            return;
        }
        ac acVar = this.ac.get(Integer.valueOf(sSWebView.hashCode()));
        if (acVar != null) {
            acVar.Qhi(null);
        }
        sSWebView.b_("SDK_INJECT_GLOBAL");
    }

    public void Qhi(WebView webView, pM pMVar, String str) {
        if (webView == null || pMVar == null || TextUtils.isEmpty(str)) {
            return;
        }
        fl flVar = this.CJ.get(Integer.valueOf(webView.hashCode()));
        if (flVar != null) {
            flVar.Qhi(pMVar);
        } else {
            flVar = new fl(pMVar);
            this.CJ.put(Integer.valueOf(webView.hashCode()), flVar);
        }
        webView.addJavascriptInterface(flVar, str);
    }

    public void Qhi(WebView webView, String str) {
        if (webView == null || TextUtils.isEmpty(str)) {
            return;
        }
        fl flVar = this.CJ.get(Integer.valueOf(webView.hashCode()));
        if (flVar != null) {
            flVar.Qhi(null);
        }
        webView.removeJavascriptInterface(str);
    }

    public void Qhi(int i) {
        synchronized (fl) {
            Tgh = i;
        }
    }

    public void cJ(int i) {
        synchronized (fl) {
            Sf = i;
        }
    }
}
