.class public Lcom/bytedance/sdk/component/widget/PangleWebView;
.super Landroid/webkit/WebView;
.source "PangleWebView.java"


# instance fields
.field private CJ:Z

.field public Qhi:J

.field private Tgh:Lcom/bytedance/sdk/component/widget/Qhi;

.field private ac:Z

.field private final cJ:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private fl:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/component/widget/PangleWebView;->cJ:Ljava/util/HashSet;

    .line 32
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/bytedance/sdk/component/widget/PangleWebView;->Qhi:J

    .line 41
    invoke-direct {p0}, Lcom/bytedance/sdk/component/widget/PangleWebView;->Qhi()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/bytedance/sdk/component/widget/PangleWebView;->cJ:Ljava/util/HashSet;

    .line 32
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/bytedance/sdk/component/widget/PangleWebView;->Qhi:J

    .line 46
    invoke-direct {p0}, Lcom/bytedance/sdk/component/widget/PangleWebView;->Qhi()V

    return-void
.end method

.method private Qhi()V
    .locals 2

    .line 55
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/widget/PangleWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    .line 56
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 57
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 58
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 59
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    .line 60
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 61
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    .line 63
    new-instance v0, Lcom/bytedance/sdk/component/widget/SSWebView$Qhi;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/widget/SSWebView$Qhi;-><init>()V

    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/component/widget/PangleWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method

.method private cJ()V
    .locals 2

    .line 283
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/widget/PangleWebView;->ac:Z

    if-eqz v0, :cond_0

    return-void

    .line 286
    :cond_0
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/widget/PangleWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 287
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 288
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    const/4 v0, 0x0

    .line 291
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/component/widget/PangleWebView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 292
    invoke-virtual {p0, v0}, Lcom/bytedance/sdk/component/widget/PangleWebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 295
    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/PangleWebView;->cJ:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 297
    invoke-super {p0, v1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "addJavascriptInterface: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 69
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/widget/PangleWebView;->ac:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/widget/PangleWebView;->fl:Z

    if-nez v0, :cond_0

    .line 70
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    iget-object p1, p0, Lcom/bytedance/sdk/component/widget/PangleWebView;->cJ:Ljava/util/HashSet;

    invoke-virtual {p1, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void

    .line 73
    :cond_0
    const-string p1, "TTAD.PangleWebView"

    const-string p2, "addJavascriptInterface: has destroyed or has recycler"

    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public clearCache(Z)V
    .locals 1

    .line 165
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/widget/PangleWebView;->ac:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/widget/PangleWebView;->fl:Z

    if-nez v0, :cond_0

    .line 166
    invoke-super {p0, p1}, Landroid/webkit/WebView;->clearCache(Z)V

    return-void

    .line 168
    :cond_0
    const-string p1, "TTAD.PangleWebView"

    const-string v0, "clearCache: has destroyed or recycler"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public destroy()V
    .locals 2

    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "destroy() called, "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 274
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/widget/PangleWebView;->ac:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 277
    iput-boolean v0, p0, Lcom/bytedance/sdk/component/widget/PangleWebView;->ac:Z

    .line 278
    invoke-direct {p0}, Lcom/bytedance/sdk/component/widget/PangleWebView;->cJ()V

    .line 279
    invoke-super {p0}, Landroid/webkit/WebView;->destroy()V

    return-void
.end method

.method public evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 218
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/widget/PangleWebView;->ac:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/widget/PangleWebView;->fl:Z

    if-nez v0, :cond_0

    .line 219
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 221
    const-string v0, "evaluateJavascript: has destroyed or recycler, "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "TTAD.PangleWebView"

    invoke-static {v0, p1}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    const-string p1, ""

    invoke-interface {p2, p1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public goBack()V
    .locals 2

    .line 138
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/widget/PangleWebView;->ac:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/widget/PangleWebView;->fl:Z

    if-nez v0, :cond_0

    .line 139
    invoke-super {p0}, Landroid/webkit/WebView;->goBack()V

    return-void

    .line 141
    :cond_0
    const-string v0, "TTAD.PangleWebView"

    const-string v1, "goBack: has destroyed or recycler"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public goBackOrForward(I)V
    .locals 1

    .line 156
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/widget/PangleWebView;->ac:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/widget/PangleWebView;->fl:Z

    if-nez v0, :cond_0

    .line 157
    invoke-super {p0, p1}, Landroid/webkit/WebView;->goBackOrForward(I)V

    return-void

    .line 159
    :cond_0
    const-string p1, "TTAD.PangleWebView"

    const-string v0, "goBackOrForward: has destroyed or recycler"

    invoke-static {p1, v0}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public goForward()V
    .locals 2

    .line 147
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/widget/PangleWebView;->ac:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/widget/PangleWebView;->fl:Z

    if-nez v0, :cond_0

    .line 148
    invoke-super {p0}, Landroid/webkit/WebView;->goForward()V

    return-void

    .line 150
    :cond_0
    const-string v0, "TTAD.PangleWebView"

    const-string v1, "goForward: has destroyed or recycler"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 209
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/widget/PangleWebView;->ac:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/widget/PangleWebView;->fl:Z

    if-nez v0, :cond_0

    .line 210
    invoke-super/range {p0 .. p5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 212
    :cond_0
    const-string p1, "TTAD.PangleWebView"

    const-string p2, "loadDataWithBaseURL: has destroyed or recycler"

    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 2

    .line 174
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/widget/PangleWebView;->ac:Z

    const-string v1, "TTAD.PangleWebView"

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/widget/PangleWebView;->fl:Z

    if-nez v0, :cond_0

    .line 176
    :try_start_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    .line 178
    :goto_0
    const-string v0, "loadUrl: "

    invoke-static {v1, v0, p1}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 181
    :cond_0
    const-string p1, "loadUrl: has destroyed or recycler"

    invoke-static {v1, p1}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 187
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/widget/PangleWebView;->ac:Z

    const-string v1, "TTAD.PangleWebView"

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/widget/PangleWebView;->fl:Z

    if-nez v0, :cond_0

    .line 189
    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    .line 191
    :goto_0
    const-string p2, "loadUrl: "

    invoke-static {v1, p2, p1}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 194
    :cond_0
    const-string p1, "loadUrl: has destroyed or recycler"

    invoke-static {v1, p1}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 229
    invoke-super {p0}, Landroid/webkit/WebView;->onAttachedToWindow()V

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onAttachedToWindow: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 240
    invoke-super {p0}, Landroid/webkit/WebView;->onDetachedFromWindow()V

    .line 241
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onDetachedFromWindow: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 243
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/widget/PangleWebView;->CJ:Z

    if-eqz v0, :cond_0

    .line 244
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/widget/PangleWebView;->destroy()V

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 266
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/widget/PangleWebView;->ac:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/widget/PangleWebView;->fl:Z

    if-nez v0, :cond_0

    .line 267
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onDraw(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 200
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/widget/PangleWebView;->ac:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/widget/PangleWebView;->fl:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 204
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onMeasure(II)V

    return-void

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 201
    invoke-virtual {p0, p1, p1}, Lcom/bytedance/sdk/component/widget/PangleWebView;->setMeasuredDimension(II)V

    return-void
.end method

.method public onPause()V
    .locals 3

    .line 90
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/widget/PangleWebView;->ac:Z

    const-string v1, "TTAD.PangleWebView"

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/widget/PangleWebView;->fl:Z

    if-nez v0, :cond_0

    .line 92
    :try_start_0
    invoke-super {p0}, Landroid/webkit/WebView;->onPause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 94
    const-string v2, "onPause: "

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 97
    :cond_0
    const-string v0, "onPause: has destroyed or recycler"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 103
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/widget/PangleWebView;->ac:Z

    const-string v1, "TTAD.PangleWebView"

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/widget/PangleWebView;->fl:Z

    if-nez v0, :cond_0

    .line 105
    :try_start_0
    invoke-super {p0}, Landroid/webkit/WebView;->onResume()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 107
    const-string v2, "onResume: "

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 110
    :cond_0
    const-string v0, "onResume: has destroyed or recycler"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public pauseTimers()V
    .locals 1

    .line 259
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/widget/PangleWebView;->ac:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/widget/PangleWebView;->fl:Z

    if-nez v0, :cond_0

    .line 260
    invoke-super {p0}, Landroid/webkit/WebView;->pauseTimers()V

    :cond_0
    return-void
.end method

.method public reload()V
    .locals 2

    .line 129
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/widget/PangleWebView;->ac:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/widget/PangleWebView;->fl:Z

    if-nez v0, :cond_0

    .line 130
    invoke-super {p0}, Landroid/webkit/WebView;->reload()V

    return-void

    .line 132
    :cond_0
    const-string v0, "TTAD.PangleWebView"

    const-string v1, "reload: has destroyed or recycler"

    invoke-static {v0, v1}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public removeJavascriptInterface(Ljava/lang/String;)V
    .locals 1

    .line 80
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/widget/PangleWebView;->ac:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/widget/PangleWebView;->fl:Z

    if-nez v0, :cond_0

    .line 81
    invoke-super {p0, p1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/PangleWebView;->cJ:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public resumeTimers()V
    .locals 1

    .line 251
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/widget/PangleWebView;->ac:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/widget/PangleWebView;->fl:Z

    if-nez v0, :cond_0

    .line 252
    invoke-super {p0}, Landroid/webkit/WebView;->resumeTimers()V

    :cond_0
    return-void
.end method

.method public setArbitrageTouchListener(Lcom/bytedance/sdk/component/widget/Qhi;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/bytedance/sdk/component/widget/PangleWebView;->Tgh:Lcom/bytedance/sdk/component/widget/Qhi;

    return-void
.end method

.method public setDestroyOnDetached(Z)V
    .locals 0

    .line 235
    iput-boolean p1, p0, Lcom/bytedance/sdk/component/widget/PangleWebView;->CJ:Z

    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .locals 1

    .line 309
    iget-object v0, p0, Lcom/bytedance/sdk/component/widget/PangleWebView;->Tgh:Lcom/bytedance/sdk/component/widget/Qhi;

    if-nez v0, :cond_0

    .line 311
    invoke-super {p0, p1}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void

    .line 315
    :cond_0
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/widget/Qhi;->Qhi(Landroid/view/View$OnTouchListener;)V

    .line 316
    iget-object p1, p0, Lcom/bytedance/sdk/component/widget/PangleWebView;->Tgh:Lcom/bytedance/sdk/component/widget/Qhi;

    invoke-super {p0, p1}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public setRecycler(Z)V
    .locals 0

    .line 302
    iput-boolean p1, p0, Lcom/bytedance/sdk/component/widget/PangleWebView;->fl:Z

    return-void
.end method

.method public stopLoading()V
    .locals 3

    .line 116
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/widget/PangleWebView;->ac:Z

    const-string v1, "TTAD.PangleWebView"

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/bytedance/sdk/component/widget/PangleWebView;->fl:Z

    if-nez v0, :cond_0

    .line 118
    :try_start_0
    invoke-super {p0}, Landroid/webkit/WebView;->stopLoading()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 120
    const-string v2, "stopLoading: "

    invoke-static {v1, v2, v0}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    .line 123
    :cond_0
    const-string v0, "stopLoading: has destroyed or recycler"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
