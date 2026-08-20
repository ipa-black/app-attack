.class public Lcom/bytedance/sdk/component/adexpress/cJ/HzH;
.super Ljava/lang/Object;
.source "WebViewRenderInterceptor.java"

# interfaces
.implements Lcom/bytedance/sdk/component/adexpress/cJ/Gm;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/component/adexpress/cJ/HzH$Qhi;
    }
.end annotation


# instance fields
.field private CJ:Lcom/bytedance/sdk/component/adexpress/cJ/iMK;

.field private Qhi:Landroid/content/Context;

.field private Tgh:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private ac:Lcom/bytedance/sdk/component/adexpress/cJ/hm;

.field private cJ:Lcom/bytedance/sdk/component/adexpress/fl/Qhi;

.field private fl:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bytedance/sdk/component/adexpress/cJ/iMK;Lcom/bytedance/sdk/component/adexpress/fl/Qhi;Lcom/bytedance/sdk/component/adexpress/cJ/hm;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/cJ/HzH;->Qhi:Landroid/content/Context;

    .line 31
    iput-object p2, p0, Lcom/bytedance/sdk/component/adexpress/cJ/HzH;->CJ:Lcom/bytedance/sdk/component/adexpress/cJ/iMK;

    .line 32
    iput-object p4, p0, Lcom/bytedance/sdk/component/adexpress/cJ/HzH;->ac:Lcom/bytedance/sdk/component/adexpress/cJ/hm;

    .line 33
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/bytedance/sdk/component/adexpress/cJ/HzH;->Tgh:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 35
    iput-object p3, p0, Lcom/bytedance/sdk/component/adexpress/cJ/HzH;->cJ:Lcom/bytedance/sdk/component/adexpress/fl/Qhi;

    .line 36
    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/cJ/HzH;->ac:Lcom/bytedance/sdk/component/adexpress/cJ/hm;

    invoke-virtual {p3, p1}, Lcom/bytedance/sdk/component/adexpress/fl/Qhi;->Qhi(Lcom/bytedance/sdk/component/adexpress/cJ/hm;)V

    return-void
.end method

.method private Qhi(Lcom/bytedance/sdk/component/adexpress/cJ/Gm$Qhi;ILjava/lang/String;)V
    .locals 1

    .line 130
    invoke-interface {p1}, Lcom/bytedance/sdk/component/adexpress/cJ/Gm$Qhi;->ac()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 134
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/cJ/HzH;->Tgh:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 137
    :cond_1
    invoke-direct {p0}, Lcom/bytedance/sdk/component/adexpress/cJ/HzH;->ac()V

    .line 138
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/cJ/HzH;->CJ:Lcom/bytedance/sdk/component/adexpress/cJ/iMK;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/cJ/iMK;->fl()Lcom/bytedance/sdk/component/adexpress/cJ/WAv;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Lcom/bytedance/sdk/component/adexpress/cJ/WAv;->Qhi(ILjava/lang/String;)V

    .line 139
    invoke-interface {p1, p0}, Lcom/bytedance/sdk/component/adexpress/cJ/Gm$Qhi;->cJ(Lcom/bytedance/sdk/component/adexpress/cJ/Gm;)Z

    move-result p3

    const/4 v0, 0x1

    if-eqz p3, :cond_2

    .line 140
    invoke-interface {p1, p0}, Lcom/bytedance/sdk/component/adexpress/cJ/Gm$Qhi;->Qhi(Lcom/bytedance/sdk/component/adexpress/cJ/Gm;)V

    goto :goto_0

    .line 142
    :cond_2
    invoke-interface {p1}, Lcom/bytedance/sdk/component/adexpress/cJ/Gm$Qhi;->ac()Z

    move-result p3

    if-eqz p3, :cond_3

    return-void

    .line 145
    :cond_3
    invoke-interface {p1}, Lcom/bytedance/sdk/component/adexpress/cJ/Gm$Qhi;->cJ()Lcom/bytedance/sdk/component/adexpress/cJ/hpZ;

    move-result-object p3

    if-nez p3, :cond_4

    return-void

    .line 150
    :cond_4
    invoke-interface {p1, v0}, Lcom/bytedance/sdk/component/adexpress/cJ/Gm$Qhi;->Qhi(Z)V

    .line 151
    invoke-interface {p3, p2}, Lcom/bytedance/sdk/component/adexpress/cJ/hpZ;->a_(I)V

    .line 153
    :goto_0
    iget-object p1, p0, Lcom/bytedance/sdk/component/adexpress/cJ/HzH;->Tgh:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    return-void
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/component/adexpress/cJ/HzH;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/bytedance/sdk/component/adexpress/cJ/HzH;->ac()V

    return-void
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/component/adexpress/cJ/HzH;Lcom/bytedance/sdk/component/adexpress/cJ/Gm$Qhi;ILjava/lang/String;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/component/adexpress/cJ/HzH;->Qhi(Lcom/bytedance/sdk/component/adexpress/cJ/Gm$Qhi;ILjava/lang/String;)V

    return-void
.end method

.method private ac()V
    .locals 2

    .line 97
    :try_start_0
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/cJ/HzH;->fl:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledFuture;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/cJ/HzH;->fl:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 v0, 0x0

    .line 99
    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/cJ/HzH;->fl:Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method static synthetic cJ(Lcom/bytedance/sdk/component/adexpress/cJ/HzH;)Lcom/bytedance/sdk/component/adexpress/fl/Qhi;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/bytedance/sdk/component/adexpress/cJ/HzH;->cJ:Lcom/bytedance/sdk/component/adexpress/fl/Qhi;

    return-object p0
.end method


# virtual methods
.method public Qhi()V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/cJ/HzH;->cJ:Lcom/bytedance/sdk/component/adexpress/fl/Qhi;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/fl/Qhi;->CJ()V

    .line 76
    invoke-direct {p0}, Lcom/bytedance/sdk/component/adexpress/cJ/HzH;->ac()V

    return-void
.end method

.method public Qhi(Lcom/bytedance/sdk/component/adexpress/cJ/Gm$Qhi;)Z
    .locals 5

    .line 41
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/cJ/HzH;->CJ:Lcom/bytedance/sdk/component/adexpress/cJ/iMK;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/adexpress/cJ/iMK;->Tgh()I

    move-result v0

    const/4 v1, 0x1

    if-gez v0, :cond_0

    .line 43
    const-string v2, "time is "

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x6b

    invoke-direct {p0, p1, v2, v0}, Lcom/bytedance/sdk/component/adexpress/cJ/HzH;->Qhi(Lcom/bytedance/sdk/component/adexpress/cJ/Gm$Qhi;ILjava/lang/String;)V

    goto :goto_0

    .line 45
    :cond_0
    new-instance v2, Lcom/bytedance/sdk/component/adexpress/cJ/HzH$Qhi;

    invoke-direct {v2, p0, v1, p1}, Lcom/bytedance/sdk/component/adexpress/cJ/HzH$Qhi;-><init>(Lcom/bytedance/sdk/component/adexpress/cJ/HzH;ILcom/bytedance/sdk/component/adexpress/cJ/Gm$Qhi;)V

    int-to-long v3, v0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v2, v3, v4, v0}, Lcom/bytedance/sdk/component/adexpress/CJ/qMt;->Qhi(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/component/adexpress/cJ/HzH;->fl:Ljava/util/concurrent/ScheduledFuture;

    .line 48
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/cJ/HzH;->cJ:Lcom/bytedance/sdk/component/adexpress/fl/Qhi;

    new-instance v2, Lcom/bytedance/sdk/component/adexpress/cJ/HzH$1;

    invoke-direct {v2, p0, p1}, Lcom/bytedance/sdk/component/adexpress/cJ/HzH$1;-><init>(Lcom/bytedance/sdk/component/adexpress/cJ/HzH;Lcom/bytedance/sdk/component/adexpress/cJ/Gm$Qhi;)V

    invoke-virtual {v0, v2}, Lcom/bytedance/sdk/component/adexpress/fl/Qhi;->Qhi(Lcom/bytedance/sdk/component/adexpress/cJ/Sf;)V

    :goto_0
    return v1
.end method

.method public cJ()Lcom/bytedance/sdk/component/adexpress/fl/Qhi;
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/bytedance/sdk/component/adexpress/cJ/HzH;->cJ:Lcom/bytedance/sdk/component/adexpress/fl/Qhi;

    return-object v0
.end method
