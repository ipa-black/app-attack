.class public Lcom/criteo/publisher/m0/b;
.super Lcom/criteo/publisher/x;
.source "CriteoBannerLoadTask.java"


# instance fields
.field private final c:Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference<",
            "+",
            "Landroid/webkit/WebView;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/criteo/publisher/model/t;

.field private final e:Landroid/webkit/WebViewClient;

.field private final f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/ref/Reference;Landroid/webkit/WebViewClient;Lcom/criteo/publisher/model/t;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/Reference<",
            "+",
            "Landroid/webkit/WebView;",
            ">;",
            "Landroid/webkit/WebViewClient;",
            "Lcom/criteo/publisher/model/t;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Lcom/criteo/publisher/x;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/criteo/publisher/m0/b;->c:Ljava/lang/ref/Reference;

    .line 51
    iput-object p2, p0, Lcom/criteo/publisher/m0/b;->e:Landroid/webkit/WebViewClient;

    .line 52
    iput-object p3, p0, Lcom/criteo/publisher/m0/b;->d:Lcom/criteo/publisher/model/t;

    .line 53
    iput-object p4, p0, Lcom/criteo/publisher/m0/b;->f:Ljava/lang/String;

    return-void
.end method

.method private b()Ljava/lang/String;
    .locals 3

    .line 74
    iget-object v0, p0, Lcom/criteo/publisher/m0/b;->d:Lcom/criteo/publisher/model/t;

    invoke-virtual {v0}, Lcom/criteo/publisher/model/t;->c()Ljava/lang/String;

    move-result-object v0

    .line 75
    iget-object v1, p0, Lcom/criteo/publisher/m0/b;->d:Lcom/criteo/publisher/model/t;

    invoke-virtual {v1}, Lcom/criteo/publisher/model/t;->d()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/criteo/publisher/m0/b;->f:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private c()V
    .locals 7

    .line 62
    iget-object v0, p0, Lcom/criteo/publisher/m0/b;->c:Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/webkit/WebView;

    if-eqz v1, :cond_0

    .line 64
    invoke-direct {p0}, Lcom/criteo/publisher/m0/b;->b()Ljava/lang/String;

    move-result-object v3

    .line 66
    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 67
    iget-object v0, p0, Lcom/criteo/publisher/m0/b;->e:Landroid/webkit/WebViewClient;

    invoke-virtual {v1, v0}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 68
    const-string v5, "UTF-8"

    const-string v6, ""

    const-string v2, ""

    const-string v4, "text/html"

    invoke-virtual/range {v1 .. v6}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/criteo/publisher/m0/b;->c()V

    return-void
.end method
