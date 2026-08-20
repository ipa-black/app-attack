.class public Lcom/explorestack/iab/mraid/i;
.super Landroid/webkit/WebView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/explorestack/iab/mraid/i$d;,
        Lcom/explorestack/iab/mraid/i$e;
    }
.end annotation


# static fields
.field public static final g:Ljava/lang/String; = "i"

.field public static final h:Lcom/explorestack/iab/mraid/i$d;


# instance fields
.field public final a:Lcom/explorestack/iab/mraid/m;

.field public final b:Lcom/explorestack/iab/utils/m;

.field public c:Lcom/explorestack/iab/mraid/i$e;

.field public d:Z

.field public e:Z

.field public f:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/explorestack/iab/mraid/i$d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/explorestack/iab/mraid/i$d;-><init>(Lcom/explorestack/iab/mraid/i$a;)V

    sput-object v0, Lcom/explorestack/iab/mraid/i;->h:Lcom/explorestack/iab/mraid/i$d;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/explorestack/iab/mraid/i;->d:Z

    iput-boolean v0, p0, Lcom/explorestack/iab/mraid/i;->e:Z

    iput-boolean v0, p0, Lcom/explorestack/iab/mraid/i;->f:Z

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setScrollContainer(Z)V

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setVerticalScrollBarEnabled(Z)V

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setVerticalScrollbarOverlay(Z)V

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setHorizontalScrollBarEnabled(Z)V

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setHorizontalScrollbarOverlay(Z)V

    const/high16 v1, 0x2000000

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setFocusableInTouchMode(Z)V

    new-instance v1, Lcom/explorestack/iab/mraid/m;

    invoke-direct {v1, p1}, Lcom/explorestack/iab/mraid/m;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/explorestack/iab/mraid/i;->a:Lcom/explorestack/iab/mraid/m;

    new-instance v1, Lcom/explorestack/iab/mraid/i$a;

    invoke-direct {v1, p0}, Lcom/explorestack/iab/mraid/i$a;-><init>(Lcom/explorestack/iab/mraid/i;)V

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    sget-object v1, Lcom/explorestack/iab/mraid/i;->h:Lcom/explorestack/iab/mraid/i$d;

    invoke-virtual {p0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    new-instance v0, Lcom/explorestack/iab/mraid/i$b;

    invoke-direct {v0, p0}, Lcom/explorestack/iab/mraid/i$b;-><init>(Lcom/explorestack/iab/mraid/i;)V

    new-instance v1, Lcom/explorestack/iab/utils/m;

    invoke-direct {v1, p1, p0, v0}, Lcom/explorestack/iab/utils/m;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/explorestack/iab/utils/m$d;)V

    iput-object v1, p0, Lcom/explorestack/iab/mraid/i;->b:Lcom/explorestack/iab/utils/m;

    return-void
.end method

.method public static synthetic a(Lcom/explorestack/iab/mraid/i;)Lcom/explorestack/iab/mraid/m;
    .locals 0

    iget-object p0, p0, Lcom/explorestack/iab/mraid/i;->a:Lcom/explorestack/iab/mraid/m;

    return-object p0
.end method

.method public static synthetic a()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/explorestack/iab/mraid/i;->g:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic b(Lcom/explorestack/iab/mraid/i;)V
    .locals 0

    invoke-virtual {p0}, Lcom/explorestack/iab/mraid/i;->i()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 3

    const-string v0, "evaluating js: "

    invoke-virtual {p0}, Lcom/explorestack/iab/mraid/i;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object p1, Lcom/explorestack/iab/mraid/i;->g:Ljava/lang/String;

    const-string v0, "can\'t evaluating js: WebView is destroyed"

    invoke-static {p1, v0}, Lcom/explorestack/iab/mraid/MraidLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object p1, Lcom/explorestack/iab/mraid/i;->g:Ljava/lang/String;

    const-string v0, "can\'t evaluating js: js is empty"

    invoke-static {p1, v0}, Lcom/explorestack/iab/mraid/MraidLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_1
    :try_start_0
    sget-object v1, Lcom/explorestack/iab/mraid/i;->g:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/explorestack/iab/mraid/MraidLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/explorestack/iab/mraid/i$c;

    invoke-direct {v0, p0}, Lcom/explorestack/iab/mraid/i$c;-><init>(Lcom/explorestack/iab/mraid/i;)V

    invoke-virtual {p0, p1, v0}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/explorestack/iab/mraid/i;->g:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/explorestack/iab/mraid/MraidLog;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "loading url: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/explorestack/iab/mraid/MraidLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "javascript:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public final b()V
    .locals 2

    sget-object v0, Lcom/explorestack/iab/mraid/i;->g:Ljava/lang/String;

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/explorestack/iab/mraid/MraidLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->onPause()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/explorestack/iab/mraid/i;->g:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/explorestack/iab/mraid/MraidLog;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/explorestack/iab/mraid/i;->e:Z

    invoke-virtual {p0}, Lcom/explorestack/iab/mraid/i;->i()V

    return-void
.end method

.method public final c()V
    .locals 2

    sget-object v0, Lcom/explorestack/iab/mraid/i;->g:Ljava/lang/String;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/explorestack/iab/mraid/MraidLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Landroid/webkit/WebView;->onResume()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    sget-object v1, Lcom/explorestack/iab/mraid/i;->g:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/explorestack/iab/mraid/MraidLog;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/explorestack/iab/mraid/i;->e:Z

    invoke-virtual {p0}, Lcom/explorestack/iab/mraid/i;->i()V

    return-void
.end method

.method public computeScroll()V
    .locals 0

    return-void
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/explorestack/iab/mraid/i;->f:Z

    return v0
.end method

.method public destroy()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/explorestack/iab/mraid/i;->f:Z

    :try_start_0
    invoke-virtual {p0}, Lcom/explorestack/iab/mraid/i;->g()V

    invoke-virtual {p0}, Landroid/webkit/WebView;->removeAllViews()V

    iget-object v0, p0, Lcom/explorestack/iab/mraid/i;->b:Lcom/explorestack/iab/utils/m;

    invoke-virtual {v0}, Lcom/explorestack/iab/utils/m;->c()V

    invoke-super {p0}, Landroid/webkit/WebView;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lcom/explorestack/iab/mraid/i;->d:Z

    return v0
.end method

.method public f()V
    .locals 1

    iget-object v0, p0, Lcom/explorestack/iab/mraid/i;->b:Lcom/explorestack/iab/utils/m;

    invoke-virtual {v0}, Lcom/explorestack/iab/utils/m;->e()V

    return-void
.end method

.method public g()V
    .locals 1

    invoke-virtual {p0}, Landroid/webkit/WebView;->stopLoading()V

    const-string v0, ""

    invoke-virtual {p0, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/explorestack/iab/mraid/i;->b()V

    return-void
.end method

.method public h()V
    .locals 1

    iget-object v0, p0, Lcom/explorestack/iab/mraid/i;->a:Lcom/explorestack/iab/mraid/m;

    invoke-virtual {v0}, Lcom/explorestack/iab/mraid/m;->b()V

    return-void
.end method

.method public final i()V
    .locals 2

    iget-boolean v0, p0, Lcom/explorestack/iab/mraid/i;->e:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/explorestack/iab/mraid/i;->b:Lcom/explorestack/iab/utils/m;

    invoke-virtual {v0}, Lcom/explorestack/iab/utils/m;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-boolean v1, p0, Lcom/explorestack/iab/mraid/i;->d:Z

    if-eq v0, v1, :cond_1

    iput-boolean v0, p0, Lcom/explorestack/iab/mraid/i;->d:Z

    iget-object v1, p0, Lcom/explorestack/iab/mraid/i;->c:Lcom/explorestack/iab/mraid/i$e;

    if-eqz v1, :cond_1

    invoke-interface {v1, v0}, Lcom/explorestack/iab/mraid/i$e;->a(Z)V

    :cond_1
    return-void
.end method

.method public j()Z
    .locals 1

    iget-object v0, p0, Lcom/explorestack/iab/mraid/i;->a:Lcom/explorestack/iab/mraid/m;

    invoke-virtual {v0}, Lcom/explorestack/iab/mraid/m;->a()Z

    move-result v0

    return v0
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/webkit/WebView;->onWindowVisibilityChanged(I)V

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/explorestack/iab/mraid/i;->c()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/explorestack/iab/mraid/i;->b()V

    :goto_0
    return-void
.end method

.method public overScrollBy(IIIIIIIIZ)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setListener(Lcom/explorestack/iab/mraid/i$e;)V
    .locals 0

    iput-object p1, p0, Lcom/explorestack/iab/mraid/i;->c:Lcom/explorestack/iab/mraid/i$e;

    return-void
.end method
