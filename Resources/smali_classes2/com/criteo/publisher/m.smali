.class Lcom/criteo/publisher/m;
.super Lcom/criteo/publisher/Criteo;
.source "CriteoInternal.java"


# instance fields
.field private final a:Lcom/criteo/publisher/logging/g;

.field private final b:Lcom/criteo/publisher/s;

.field private final c:Lcom/criteo/publisher/e;

.field private final d:Lcom/criteo/publisher/model/u;

.field private final e:Lcom/criteo/publisher/model/t;

.field private final f:Lcom/criteo/publisher/l0/c;

.field private final g:Lcom/criteo/publisher/j;

.field private final h:Lcom/criteo/publisher/h0/c;

.field private final i:Lcom/criteo/publisher/j0/a;


# direct methods
.method constructor <init>(Landroid/app/Application;Ljava/util/List;Ljava/lang/Boolean;Ljava/lang/String;Lcom/criteo/publisher/s;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Application;",
            "Ljava/util/List<",
            "Lcom/criteo/publisher/model/AdUnit;",
            ">;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            "Lcom/criteo/publisher/s;",
            ")V"
        }
    .end annotation

    .line 73
    invoke-direct {p0}, Lcom/criteo/publisher/Criteo;-><init>()V

    .line 41
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/criteo/publisher/logging/h;->b(Ljava/lang/Class;)Lcom/criteo/publisher/logging/g;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/m;->a:Lcom/criteo/publisher/logging/g;

    .line 74
    iput-object p5, p0, Lcom/criteo/publisher/m;->b:Lcom/criteo/publisher/s;

    .line 76
    invoke-virtual {p5}, Lcom/criteo/publisher/s;->f1()Lcom/criteo/publisher/z;

    .line 78
    invoke-virtual {p5}, Lcom/criteo/publisher/s;->z0()Lcom/criteo/publisher/model/u;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/m;->d:Lcom/criteo/publisher/model/u;

    .line 79
    invoke-virtual {v0}, Lcom/criteo/publisher/model/u;->d()V

    .line 81
    invoke-virtual {p5}, Lcom/criteo/publisher/s;->d0()Lcom/criteo/publisher/n0/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/criteo/publisher/n0/b;->f()V

    .line 83
    invoke-virtual {p5}, Lcom/criteo/publisher/s;->q0()Lcom/criteo/publisher/model/t;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/m;->e:Lcom/criteo/publisher/model/t;

    .line 85
    invoke-virtual {p5}, Lcom/criteo/publisher/s;->k0()Lcom/criteo/publisher/e;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/m;->c:Lcom/criteo/publisher/e;

    .line 86
    invoke-virtual {p5}, Lcom/criteo/publisher/s;->u0()Lcom/criteo/publisher/j;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/m;->g:Lcom/criteo/publisher/j;

    .line 87
    invoke-virtual {p5}, Lcom/criteo/publisher/s;->C0()Lcom/criteo/publisher/h0/c;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/m;->h:Lcom/criteo/publisher/h0/c;

    .line 89
    invoke-virtual {p5}, Lcom/criteo/publisher/s;->G0()Lcom/criteo/publisher/j0/a;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/m;->i:Lcom/criteo/publisher/j0/a;

    .line 91
    invoke-virtual {p5}, Lcom/criteo/publisher/s;->l1()Lcom/criteo/publisher/l0/c;

    move-result-object v0

    iput-object v0, p0, Lcom/criteo/publisher/m;->f:Lcom/criteo/publisher/l0/c;

    if-eqz p3, :cond_0

    .line 93
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    invoke-virtual {v0, p3}, Lcom/criteo/publisher/l0/c;->a(Z)V

    :cond_0
    if-eqz p4, :cond_1

    .line 99
    invoke-virtual {v0, p4}, Lcom/criteo/publisher/l0/c;->a(Ljava/lang/String;)V

    .line 102
    :cond_1
    invoke-virtual {p5}, Lcom/criteo/publisher/s;->g0()Lcom/criteo/publisher/n0/e;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    .line 104
    invoke-virtual {p5}, Lcom/criteo/publisher/s;->i1()Lcom/criteo/publisher/a0/b;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/criteo/publisher/a0/b;->a(Landroid/app/Application;)V

    .line 106
    invoke-virtual {p5}, Lcom/criteo/publisher/s;->j0()Lcom/criteo/publisher/c0/a;

    move-result-object p1

    .line 107
    invoke-interface {p1}, Lcom/criteo/publisher/c0/a;->a()V

    .line 109
    invoke-virtual {p5}, Lcom/criteo/publisher/s;->c1()Lcom/criteo/publisher/e0/c;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lcom/criteo/publisher/m;->a(Ljava/util/concurrent/Executor;Ljava/util/List;)V

    return-void
.end method

.method static synthetic a(Lcom/criteo/publisher/m;)Lcom/criteo/publisher/e;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/criteo/publisher/m;->c:Lcom/criteo/publisher/e;

    return-object p0
.end method

.method private a(Ljava/lang/Object;Lcom/criteo/publisher/Bid;)V
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/criteo/publisher/m;->h:Lcom/criteo/publisher/h0/c;

    invoke-virtual {v0, p1, p2}, Lcom/criteo/publisher/h0/c;->a(Ljava/lang/Object;Lcom/criteo/publisher/Bid;)V

    return-void
.end method

.method private a(Ljava/util/concurrent/Executor;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/List<",
            "Lcom/criteo/publisher/model/AdUnit;",
            ">;)V"
        }
    .end annotation

    .line 113
    new-instance v0, Lcom/criteo/publisher/m$a;

    invoke-direct {v0, p0, p2}, Lcom/criteo/publisher/m$a;-><init>(Lcom/criteo/publisher/m;Ljava/util/List;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public createBannerController(Lcom/criteo/publisher/CriteoBannerView;)Lcom/criteo/publisher/l;
    .locals 3

    .line 177
    new-instance v0, Lcom/criteo/publisher/l;

    iget-object v1, p0, Lcom/criteo/publisher/m;->b:Lcom/criteo/publisher/s;

    .line 180
    invoke-virtual {v1}, Lcom/criteo/publisher/s;->i1()Lcom/criteo/publisher/a0/b;

    move-result-object v1

    iget-object v2, p0, Lcom/criteo/publisher/m;->b:Lcom/criteo/publisher/s;

    .line 181
    invoke-virtual {v2}, Lcom/criteo/publisher/s;->c1()Lcom/criteo/publisher/e0/c;

    move-result-object v2

    invoke-direct {v0, p1, p0, v1, v2}, Lcom/criteo/publisher/l;-><init>(Lcom/criteo/publisher/CriteoBannerView;Lcom/criteo/publisher/Criteo;Lcom/criteo/publisher/a0/b;Lcom/criteo/publisher/e0/c;)V

    return-object v0
.end method

.method public enrichAdObjectWithBid(Ljava/lang/Object;Lcom/criteo/publisher/Bid;)V
    .locals 0

    .line 124
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/criteo/publisher/m;->a(Ljava/lang/Object;Lcom/criteo/publisher/Bid;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 126
    iget-object p2, p0, Lcom/criteo/publisher/m;->a:Lcom/criteo/publisher/logging/g;

    invoke-static {p1}, Lcom/criteo/publisher/v;->b(Ljava/lang/Throwable;)Lcom/criteo/publisher/logging/e;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/criteo/publisher/logging/g;->a(Lcom/criteo/publisher/logging/e;)V

    :goto_0
    return-void
.end method

.method getBidForAdUnit(Lcom/criteo/publisher/model/AdUnit;Lcom/criteo/publisher/context/ContextData;Lcom/criteo/publisher/d;)V
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/criteo/publisher/m;->c:Lcom/criteo/publisher/e;

    invoke-virtual {v0, p1, p2, p3}, Lcom/criteo/publisher/e;->a(Lcom/criteo/publisher/model/AdUnit;Lcom/criteo/publisher/context/ContextData;Lcom/criteo/publisher/d;)V

    return-void
.end method

.method getConfig()Lcom/criteo/publisher/model/t;
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/criteo/publisher/m;->e:Lcom/criteo/publisher/model/t;

    return-object v0
.end method

.method getDeviceInfo()Lcom/criteo/publisher/model/u;
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/criteo/publisher/m;->d:Lcom/criteo/publisher/model/u;

    return-object v0
.end method

.method getInterstitialActivityHelper()Lcom/criteo/publisher/j0/a;
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/criteo/publisher/m;->i:Lcom/criteo/publisher/j0/a;

    return-object v0
.end method

.method public loadBid(Lcom/criteo/publisher/model/AdUnit;Lcom/criteo/publisher/context/ContextData;Lcom/criteo/publisher/BidResponseListener;)V
    .locals 1

    .line 149
    :try_start_0
    iget-object v0, p0, Lcom/criteo/publisher/m;->g:Lcom/criteo/publisher/j;

    invoke-virtual {v0, p1, p2, p3}, Lcom/criteo/publisher/j;->a(Lcom/criteo/publisher/model/AdUnit;Lcom/criteo/publisher/context/ContextData;Lcom/criteo/publisher/BidResponseListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 151
    iget-object p2, p0, Lcom/criteo/publisher/m;->a:Lcom/criteo/publisher/logging/g;

    invoke-static {p1}, Lcom/criteo/publisher/v;->b(Ljava/lang/Throwable;)Lcom/criteo/publisher/logging/e;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/criteo/publisher/logging/g;->a(Lcom/criteo/publisher/logging/e;)V

    const/4 p1, 0x0

    .line 152
    invoke-interface {p3, p1}, Lcom/criteo/publisher/BidResponseListener;->onResponse(Lcom/criteo/publisher/Bid;)V

    :goto_0
    return-void
.end method

.method public setMopubConsent(Ljava/lang/String;)V
    .locals 1

    .line 192
    iget-object v0, p0, Lcom/criteo/publisher/m;->f:Lcom/criteo/publisher/l0/c;

    invoke-virtual {v0, p1}, Lcom/criteo/publisher/l0/c;->a(Ljava/lang/String;)V

    return-void
.end method

.method public setUsPrivacyOptOut(Z)V
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/criteo/publisher/m;->f:Lcom/criteo/publisher/l0/c;

    invoke-virtual {v0, p1}, Lcom/criteo/publisher/l0/c;->a(Z)V

    return-void
.end method

.method public setUserData(Lcom/criteo/publisher/context/UserData;)V
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/criteo/publisher/m;->b:Lcom/criteo/publisher/s;

    invoke-virtual {v0}, Lcom/criteo/publisher/s;->k1()Lcom/criteo/publisher/context/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/criteo/publisher/context/d;->a(Lcom/criteo/publisher/context/UserData;)V

    return-void
.end method
