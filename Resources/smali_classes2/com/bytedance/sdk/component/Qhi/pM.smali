.class public Lcom/bytedance/sdk/component/Qhi/pM;
.super Lcom/bytedance/sdk/component/Qhi/Qhi;
.source "WebViewBridge.java"


# static fields
.field static final synthetic WAv:Z = true


# instance fields
.field protected Sf:Ljava/lang/String;

.field protected hm:Landroid/webkit/WebView;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/bytedance/sdk/component/Qhi/Qhi;-><init>()V

    return-void
.end method

.method private Qhi(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 97
    iget-boolean p1, p0, Lcom/bytedance/sdk/component/Qhi/pM;->Tgh:Z

    if-eqz p1, :cond_0

    return-void

    .line 100
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 106
    :cond_1
    new-instance p1, Lcom/bytedance/sdk/component/Qhi/pM$1;

    invoke-direct {p1, p0, p2}, Lcom/bytedance/sdk/component/Qhi/pM$1;-><init>(Lcom/bytedance/sdk/component/Qhi/pM;Ljava/lang/String;)V

    .line 126
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eq p2, v0, :cond_2

    .line 128
    iget-object p2, p0, Lcom/bytedance/sdk/component/Qhi/pM;->CJ:Landroid/os/Handler;

    invoke-virtual {p2, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 130
    :cond_2
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method


# virtual methods
.method protected CJ()V
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/bytedance/sdk/component/Qhi/pM;->hm:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/bytedance/sdk/component/Qhi/pM;->Sf:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    return-void
.end method

.method protected Qhi(Lcom/bytedance/sdk/component/Qhi/Gm;)Landroid/content/Context;
    .locals 1

    .line 28
    iget-object v0, p1, Lcom/bytedance/sdk/component/Qhi/Gm;->fl:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 29
    iget-object p1, p1, Lcom/bytedance/sdk/component/Qhi/Gm;->fl:Landroid/content/Context;

    return-object p1

    .line 30
    :cond_0
    iget-object v0, p1, Lcom/bytedance/sdk/component/Qhi/Gm;->Qhi:Landroid/webkit/WebView;

    if-eqz v0, :cond_1

    .line 31
    iget-object p1, p1, Lcom/bytedance/sdk/component/Qhi/Gm;->Qhi:Landroid/webkit/WebView;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p1

    return-object p1

    .line 33
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "WebView cannot be null!"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected Qhi()Ljava/lang/String;
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/bytedance/sdk/component/Qhi/pM;->hm:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected Qhi(Ljava/lang/String;)V
    .locals 2

    .line 92
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "javascript:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/bytedance/sdk/component/Qhi/pM;->Sf:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "._handleMessageFromToutiao("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 93
    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/component/Qhi/pM;->Qhi(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected Qhi(Ljava/lang/String;Lcom/bytedance/sdk/component/Qhi/HzH;)V
    .locals 3

    if-eqz p2, :cond_0

    .line 75
    iget-object v0, p2, Lcom/bytedance/sdk/component/Qhi/HzH;->Sf:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    iget-object p2, p2, Lcom/bytedance/sdk/component/Qhi/HzH;->Sf:Ljava/lang/String;

    .line 77
    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    .line 78
    const-string v2, "iframe[src=\"%s\""

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {v2, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    invoke-static {p2, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p2

    .line 79
    const-string v1, "javascript:(function(){   const iframe = document.querySelector(atob(\'%s\'));   if (iframe && iframe.contentWindow) {        iframe.contentWindow.postMessage(%s, atob(\'%s\'));   }})()"

    filled-new-array {p2, p1, v0}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {v1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/component/Qhi/pM;->Qhi(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 86
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/bytedance/sdk/component/Qhi/Qhi;->Qhi(Ljava/lang/String;Lcom/bytedance/sdk/component/Qhi/HzH;)V

    return-void
.end method

.method protected ac()V
    .locals 2

    .line 53
    sget-boolean v0, Lcom/bytedance/sdk/component/Qhi/pM;->WAv:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/bytedance/sdk/component/Qhi/pM;->hm:Landroid/webkit/WebView;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 54
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/Qhi/pM;->hm:Landroid/webkit/WebView;

    iget-object v1, p0, Lcom/bytedance/sdk/component/Qhi/pM;->Sf:Ljava/lang/String;

    invoke-virtual {v0, p0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method protected cJ()V
    .locals 0

    .line 65
    invoke-super {p0}, Lcom/bytedance/sdk/component/Qhi/Qhi;->cJ()V

    .line 66
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/Qhi/pM;->CJ()V

    return-void
.end method

.method protected cJ(Lcom/bytedance/sdk/component/Qhi/Gm;)V
    .locals 1

    .line 44
    iget-object v0, p1, Lcom/bytedance/sdk/component/Qhi/Gm;->Qhi:Landroid/webkit/WebView;

    iput-object v0, p0, Lcom/bytedance/sdk/component/Qhi/pM;->hm:Landroid/webkit/WebView;

    .line 45
    iget-object v0, p1, Lcom/bytedance/sdk/component/Qhi/Gm;->ac:Ljava/lang/String;

    iput-object v0, p0, Lcom/bytedance/sdk/component/Qhi/pM;->Sf:Ljava/lang/String;

    .line 46
    iget-boolean p1, p1, Lcom/bytedance/sdk/component/Qhi/Gm;->iMK:Z

    if-nez p1, :cond_0

    .line 47
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/Qhi/pM;->ac()V

    :cond_0
    return-void
.end method

.method public invokeMethod(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 60
    invoke-super {p0, p1}, Lcom/bytedance/sdk/component/Qhi/Qhi;->invokeMethod(Ljava/lang/String;)V

    return-void
.end method
