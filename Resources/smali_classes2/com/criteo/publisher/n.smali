.class public Lcom/criteo/publisher/n;
.super Ljava/lang/Object;
.source "CriteoInterstitialEventController.java"


# instance fields
.field private final a:Lcom/criteo/publisher/model/a0;

.field private final b:Lcom/criteo/publisher/model/u;

.field private final c:Lcom/criteo/publisher/Criteo;

.field private final d:Lcom/criteo/publisher/j0/a;

.field private final e:Lcom/criteo/publisher/m0/d;


# direct methods
.method public constructor <init>(Lcom/criteo/publisher/model/a0;Lcom/criteo/publisher/j0/a;Lcom/criteo/publisher/Criteo;Lcom/criteo/publisher/m0/d;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/criteo/publisher/n;->a:Lcom/criteo/publisher/model/a0;

    .line 58
    iput-object p2, p0, Lcom/criteo/publisher/n;->d:Lcom/criteo/publisher/j0/a;

    .line 59
    iput-object p3, p0, Lcom/criteo/publisher/n;->c:Lcom/criteo/publisher/Criteo;

    .line 60
    invoke-virtual {p3}, Lcom/criteo/publisher/Criteo;->getDeviceInfo()Lcom/criteo/publisher/model/u;

    move-result-object p1

    iput-object p1, p0, Lcom/criteo/publisher/n;->b:Lcom/criteo/publisher/model/u;

    .line 61
    iput-object p4, p0, Lcom/criteo/publisher/n;->e:Lcom/criteo/publisher/m0/d;

    return-void
.end method

.method static synthetic a(Lcom/criteo/publisher/n;)Lcom/criteo/publisher/model/a0;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/criteo/publisher/n;->a:Lcom/criteo/publisher/model/a0;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/criteo/publisher/Bid;)V
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/criteo/publisher/n;->d:Lcom/criteo/publisher/j0/a;

    invoke-virtual {v0}, Lcom/criteo/publisher/j0/a;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 95
    invoke-virtual {p0}, Lcom/criteo/publisher/n;->b()V

    return-void

    :cond_0
    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    .line 99
    :cond_1
    sget-object v0, Lcom/criteo/publisher/n0/a;->b:Lcom/criteo/publisher/n0/a;

    invoke-virtual {p1, v0}, Lcom/criteo/publisher/Bid;->a(Lcom/criteo/publisher/n0/a;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_2

    .line 102
    invoke-virtual {p0}, Lcom/criteo/publisher/n;->b()V

    goto :goto_1

    .line 104
    :cond_2
    invoke-virtual {p0, p1}, Lcom/criteo/publisher/n;->a(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public a(Lcom/criteo/publisher/model/AdUnit;Lcom/criteo/publisher/context/ContextData;)V
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/criteo/publisher/n;->d:Lcom/criteo/publisher/j0/a;

    invoke-virtual {v0}, Lcom/criteo/publisher/j0/a;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 70
    invoke-virtual {p0}, Lcom/criteo/publisher/n;->b()V

    return-void

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/criteo/publisher/n;->a:Lcom/criteo/publisher/model/a0;

    invoke-virtual {v0}, Lcom/criteo/publisher/model/a0;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 78
    :cond_1
    iget-object v0, p0, Lcom/criteo/publisher/n;->a:Lcom/criteo/publisher/model/a0;

    invoke-virtual {v0}, Lcom/criteo/publisher/model/a0;->b()V

    .line 79
    iget-object v0, p0, Lcom/criteo/publisher/n;->c:Lcom/criteo/publisher/Criteo;

    new-instance v1, Lcom/criteo/publisher/n$a;

    invoke-direct {v1, p0}, Lcom/criteo/publisher/n$a;-><init>(Lcom/criteo/publisher/n;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/criteo/publisher/Criteo;->getBidForAdUnit(Lcom/criteo/publisher/model/AdUnit;Lcom/criteo/publisher/context/ContextData;Lcom/criteo/publisher/d;)V

    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 3

    .line 113
    iget-object v0, p0, Lcom/criteo/publisher/n;->a:Lcom/criteo/publisher/model/a0;

    iget-object v1, p0, Lcom/criteo/publisher/n;->b:Lcom/criteo/publisher/model/u;

    iget-object v2, p0, Lcom/criteo/publisher/n;->e:Lcom/criteo/publisher/m0/d;

    invoke-virtual {v0, p1, v1, v2}, Lcom/criteo/publisher/model/a0;->a(Ljava/lang/String;Lcom/criteo/publisher/model/u;Lcom/criteo/publisher/m0/d;)V

    return-void
.end method

.method public a()Z
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/criteo/publisher/n;->a:Lcom/criteo/publisher/model/a0;

    invoke-virtual {v0}, Lcom/criteo/publisher/model/a0;->e()Z

    move-result v0

    return v0
.end method

.method b()V
    .locals 2

    .line 109
    iget-object v0, p0, Lcom/criteo/publisher/n;->e:Lcom/criteo/publisher/m0/d;

    sget-object v1, Lcom/criteo/publisher/p;->b:Lcom/criteo/publisher/p;

    invoke-virtual {v0, v1}, Lcom/criteo/publisher/m0/d;->a(Lcom/criteo/publisher/p;)V

    return-void
.end method

.method public c()V
    .locals 3

    .line 121
    invoke-virtual {p0}, Lcom/criteo/publisher/n;->a()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/criteo/publisher/n;->a:Lcom/criteo/publisher/model/a0;

    invoke-virtual {v0}, Lcom/criteo/publisher/model/a0;->d()Ljava/lang/String;

    move-result-object v0

    .line 126
    iget-object v1, p0, Lcom/criteo/publisher/n;->d:Lcom/criteo/publisher/j0/a;

    iget-object v2, p0, Lcom/criteo/publisher/n;->e:Lcom/criteo/publisher/m0/d;

    invoke-virtual {v1, v0, v2}, Lcom/criteo/publisher/j0/a;->a(Ljava/lang/String;Lcom/criteo/publisher/m0/d;)V

    .line 127
    iget-object v0, p0, Lcom/criteo/publisher/n;->e:Lcom/criteo/publisher/m0/d;

    sget-object v1, Lcom/criteo/publisher/p;->f:Lcom/criteo/publisher/p;

    invoke-virtual {v0, v1}, Lcom/criteo/publisher/m0/d;->a(Lcom/criteo/publisher/p;)V

    .line 129
    iget-object v0, p0, Lcom/criteo/publisher/n;->a:Lcom/criteo/publisher/model/a0;

    invoke-virtual {v0}, Lcom/criteo/publisher/model/a0;->g()V

    return-void
.end method
