.class public Lcom/criteo/publisher/l;
.super Ljava/lang/Object;
.source "CriteoBannerEventController.java"


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/criteo/publisher/CriteoBannerView;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Lcom/criteo/publisher/CriteoBannerAdListener;

.field private final c:Lcom/criteo/publisher/Criteo;

.field private final d:Lcom/criteo/publisher/a0/b;

.field private final e:Lcom/criteo/publisher/e0/c;


# direct methods
.method public constructor <init>(Lcom/criteo/publisher/CriteoBannerView;Lcom/criteo/publisher/Criteo;Lcom/criteo/publisher/a0/b;Lcom/criteo/publisher/e0/c;)V
    .locals 1

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/criteo/publisher/l;->a:Ljava/lang/ref/WeakReference;

    .line 64
    invoke-virtual {p1}, Lcom/criteo/publisher/CriteoBannerView;->getCriteoBannerAdListener()Lcom/criteo/publisher/CriteoBannerAdListener;

    move-result-object p1

    iput-object p1, p0, Lcom/criteo/publisher/l;->b:Lcom/criteo/publisher/CriteoBannerAdListener;

    .line 65
    iput-object p2, p0, Lcom/criteo/publisher/l;->c:Lcom/criteo/publisher/Criteo;

    .line 66
    iput-object p3, p0, Lcom/criteo/publisher/l;->d:Lcom/criteo/publisher/a0/b;

    .line 67
    iput-object p4, p0, Lcom/criteo/publisher/l;->e:Lcom/criteo/publisher/e0/c;

    return-void
.end method


# virtual methods
.method a()Landroid/webkit/WebViewClient;
    .locals 3

    .line 112
    iget-object v0, p0, Lcom/criteo/publisher/l;->d:Lcom/criteo/publisher/a0/b;

    invoke-virtual {v0}, Lcom/criteo/publisher/a0/b;->a()Landroid/content/ComponentName;

    move-result-object v0

    .line 114
    new-instance v1, Lcom/criteo/publisher/b0/a;

    new-instance v2, Lcom/criteo/publisher/l$b;

    invoke-direct {v2, p0}, Lcom/criteo/publisher/l$b;-><init>(Lcom/criteo/publisher/l;)V

    invoke-direct {v1, v2, v0}, Lcom/criteo/publisher/b0/a;-><init>(Lcom/criteo/publisher/b0/c;Landroid/content/ComponentName;)V

    return-object v1
.end method

.method public a(Lcom/criteo/publisher/Bid;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 86
    :cond_0
    sget-object v0, Lcom/criteo/publisher/n0/a;->a:Lcom/criteo/publisher/n0/a;

    invoke-virtual {p1, v0}, Lcom/criteo/publisher/Bid;->a(Lcom/criteo/publisher/n0/a;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_1

    .line 89
    sget-object p1, Lcom/criteo/publisher/p;->b:Lcom/criteo/publisher/p;

    invoke-virtual {p0, p1}, Lcom/criteo/publisher/l;->a(Lcom/criteo/publisher/p;)V

    goto :goto_1

    .line 91
    :cond_1
    sget-object v0, Lcom/criteo/publisher/p;->a:Lcom/criteo/publisher/p;

    invoke-virtual {p0, v0}, Lcom/criteo/publisher/l;->a(Lcom/criteo/publisher/p;)V

    .line 92
    invoke-virtual {p0, p1}, Lcom/criteo/publisher/l;->a(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public a(Lcom/criteo/publisher/model/AdUnit;Lcom/criteo/publisher/context/ContextData;)V
    .locals 2

    .line 71
    iget-object v0, p0, Lcom/criteo/publisher/l;->c:Lcom/criteo/publisher/Criteo;

    new-instance v1, Lcom/criteo/publisher/l$a;

    invoke-direct {v1, p0}, Lcom/criteo/publisher/l$a;-><init>(Lcom/criteo/publisher/l;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/criteo/publisher/Criteo;->getBidForAdUnit(Lcom/criteo/publisher/model/AdUnit;Lcom/criteo/publisher/context/ContextData;Lcom/criteo/publisher/d;)V

    return-void
.end method

.method a(Lcom/criteo/publisher/p;)V
    .locals 4

    .line 97
    iget-object v0, p0, Lcom/criteo/publisher/l;->e:Lcom/criteo/publisher/e0/c;

    new-instance v1, Lcom/criteo/publisher/m0/a;

    iget-object v2, p0, Lcom/criteo/publisher/l;->b:Lcom/criteo/publisher/CriteoBannerAdListener;

    iget-object v3, p0, Lcom/criteo/publisher/l;->a:Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v2, v3, p1}, Lcom/criteo/publisher/m0/a;-><init>(Lcom/criteo/publisher/CriteoBannerAdListener;Ljava/lang/ref/Reference;Lcom/criteo/publisher/p;)V

    invoke-virtual {v0, v1}, Lcom/criteo/publisher/e0/c;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 5

    .line 101
    iget-object v0, p0, Lcom/criteo/publisher/l;->e:Lcom/criteo/publisher/e0/c;

    new-instance v1, Lcom/criteo/publisher/m0/b;

    iget-object v2, p0, Lcom/criteo/publisher/l;->a:Ljava/lang/ref/WeakReference;

    .line 102
    invoke-virtual {p0}, Lcom/criteo/publisher/l;->a()Landroid/webkit/WebViewClient;

    move-result-object v3

    iget-object v4, p0, Lcom/criteo/publisher/l;->c:Lcom/criteo/publisher/Criteo;

    invoke-virtual {v4}, Lcom/criteo/publisher/Criteo;->getConfig()Lcom/criteo/publisher/model/t;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, p1}, Lcom/criteo/publisher/m0/b;-><init>(Ljava/lang/ref/Reference;Landroid/webkit/WebViewClient;Lcom/criteo/publisher/model/t;Ljava/lang/String;)V

    .line 101
    invoke-virtual {v0, v1}, Lcom/criteo/publisher/e0/c;->a(Ljava/lang/Runnable;)V

    return-void
.end method
