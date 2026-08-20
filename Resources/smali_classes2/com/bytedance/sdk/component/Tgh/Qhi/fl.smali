.class public Lcom/bytedance/sdk/component/Tgh/Qhi/fl;
.super Ljava/lang/Object;
.source "EventMultiUtils.java"


# static fields
.field public static final Qhi:Lcom/bytedance/sdk/component/Tgh/Qhi/fl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    new-instance v0, Lcom/bytedance/sdk/component/Tgh/Qhi/fl;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/Tgh/Qhi/fl;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/component/Tgh/Qhi/fl;->Qhi:Lcom/bytedance/sdk/component/Tgh/Qhi/fl;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private Qhi(I)V
    .locals 1

    if-nez p1, :cond_0

    .line 140
    invoke-static {}, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/cJ/Qhi;->Qhi()V

    return-void

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 142
    invoke-static {}, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/cJ/cJ;->Qhi()V

    :cond_1
    return-void
.end method

.method private Qhi(Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/Tgh;I)V
    .locals 1

    if-nez p2, :cond_0

    .line 231
    invoke-static {p1}, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/cJ/Qhi;->Qhi(Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/Tgh;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 233
    invoke-static {p1}, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/cJ/cJ;->Qhi(Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/Tgh;)V

    :cond_1
    return-void
.end method

.method private Qhi(Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi;)V
    .locals 2

    .line 51
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    invoke-static {}, Lcom/bytedance/sdk/component/Tgh/Qhi/ac/Qhi;->cJ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    invoke-static {}, Lcom/bytedance/sdk/component/Tgh/Qhi/ac/Qhi;->Qhi()V

    return-void

    .line 54
    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi;->CJ()Lcom/bytedance/sdk/component/Tgh/Qhi/Tgh;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 55
    invoke-static {}, Lcom/bytedance/sdk/component/Tgh/Qhi/ac/Qhi;->cJ()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    invoke-interface {p1}, Lcom/bytedance/sdk/component/Tgh/Qhi/Tgh;->fl()Ljava/util/concurrent/Executor;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 58
    new-instance v0, Lcom/bytedance/sdk/component/Tgh/Qhi/fl$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/component/Tgh/Qhi/fl$1;-><init>(Lcom/bytedance/sdk/component/Tgh/Qhi/fl;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/component/Tgh/Qhi/fl;I)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/Tgh/Qhi/fl;->Qhi(I)V

    return-void
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/component/Tgh/Qhi/fl;Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/Tgh;I)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/component/Tgh/Qhi/fl;->Qhi(Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/Tgh;I)V

    return-void
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/component/Tgh/Qhi/fl;Ljava/lang/String;IZ)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/bytedance/sdk/component/Tgh/Qhi/fl;->Qhi(Ljava/lang/String;IZ)V

    return-void
.end method

.method static synthetic Qhi(Lcom/bytedance/sdk/component/Tgh/Qhi/fl;Ljava/lang/String;Ljava/util/List;ZIILjava/lang/String;)V
    .locals 0

    .line 25
    invoke-direct/range {p0 .. p6}, Lcom/bytedance/sdk/component/Tgh/Qhi/fl;->Qhi(Ljava/lang/String;Ljava/util/List;ZIILjava/lang/String;)V

    return-void
.end method

.method private Qhi(Ljava/lang/String;IZ)V
    .locals 1

    if-nez p2, :cond_0

    .line 318
    invoke-static {p1}, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/cJ/Qhi;->Qhi(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 320
    invoke-static {p1, p3}, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/cJ/cJ;->Qhi(Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method private Qhi(Ljava/lang/String;Ljava/util/List;ZIILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;ZII",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-nez p4, :cond_0

    .line 274
    invoke-static {p1, p2, p3}, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/cJ/Qhi;->Qhi(Ljava/lang/String;Ljava/util/List;Z)V

    return-void

    :cond_0
    const/4 v0, 0x1

    if-ne p4, v0, :cond_1

    .line 276
    invoke-static {p1, p2, p3, p5, p6}, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/cJ/cJ;->Qhi(Ljava/lang/String;Ljava/util/List;ZILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method private Qhi(Landroid/content/Context;Lcom/bytedance/sdk/component/Tgh/Qhi/Tgh;)Z
    .locals 3

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    .line 88
    :cond_0
    invoke-interface {p2}, Lcom/bytedance/sdk/component/Tgh/Qhi/Tgh;->Tgh()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    return v2

    .line 91
    :cond_1
    invoke-interface {p2}, Lcom/bytedance/sdk/component/Tgh/Qhi/Tgh;->Tgh()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 93
    invoke-interface {p2}, Lcom/bytedance/sdk/component/Tgh/Qhi/Tgh;->iMK()Z

    move-result p1

    return p1

    .line 96
    :cond_2
    :try_start_0
    invoke-static {p1}, Lcom/bytedance/sdk/component/utils/kYc;->Qhi(Landroid/content/Context;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p1

    :catchall_0
    move-exception p1

    .line 98
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    return v2

    :cond_3
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private ac()Z
    .locals 2

    .line 193
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private cJ(I)V
    .locals 1

    if-nez p1, :cond_0

    .line 181
    invoke-static {}, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/cJ/Qhi;->cJ()V

    return-void

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 183
    invoke-static {}, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/cJ/cJ;->cJ()V

    :cond_1
    return-void
.end method

.method private cJ(Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/Tgh;)V
    .locals 4

    .line 197
    invoke-static {}, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;->ROR()Lcom/bytedance/sdk/component/Tgh/Qhi/hm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;->hpZ()Lcom/bytedance/sdk/component/Tgh/Qhi/Tgh;

    move-result-object v0

    if-eqz p1, :cond_4

    if-eqz v0, :cond_4

    .line 199
    invoke-static {}, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;->ROR()Lcom/bytedance/sdk/component/Tgh/Qhi/hm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;->Tgh()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 200
    invoke-interface {v0}, Lcom/bytedance/sdk/component/Tgh/Qhi/Tgh;->CJ()Ljava/util/concurrent/Executor;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 204
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;->ROR()Lcom/bytedance/sdk/component/Tgh/Qhi/hm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;->cJ()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 205
    invoke-static {}, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;->ROR()Lcom/bytedance/sdk/component/Tgh/Qhi/hm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;->Tgh()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/bytedance/sdk/component/Tgh/Qhi/fl;->Qhi(Landroid/content/Context;Lcom/bytedance/sdk/component/Tgh/Qhi/Tgh;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 208
    invoke-static {}, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;->ROR()Lcom/bytedance/sdk/component/Tgh/Qhi/hm;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;->Qhi(Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/Tgh;)V

    return-void

    .line 213
    :cond_1
    invoke-direct {p0}, Lcom/bytedance/sdk/component/Tgh/Qhi/fl;->ac()Z

    .line 214
    invoke-direct {p0}, Lcom/bytedance/sdk/component/Tgh/Qhi/fl;->ac()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 215
    invoke-interface {v0}, Lcom/bytedance/sdk/component/Tgh/Qhi/Tgh;->CJ()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/bytedance/sdk/component/Tgh/Qhi/fl$4;

    const-string v3, "dispatchEvent"

    invoke-direct {v2, p0, v3, p1, v0}, Lcom/bytedance/sdk/component/Tgh/Qhi/fl$4;-><init>(Lcom/bytedance/sdk/component/Tgh/Qhi/fl;Ljava/lang/String;Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/Tgh;Lcom/bytedance/sdk/component/Tgh/Qhi/Tgh;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 222
    :cond_2
    invoke-interface {v0}, Lcom/bytedance/sdk/component/Tgh/Qhi/Tgh;->Tgh()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/bytedance/sdk/component/Tgh/Qhi/fl;->Qhi(Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/Tgh;I)V

    return-void

    .line 225
    :cond_3
    invoke-static {}, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;->ROR()Lcom/bytedance/sdk/component/Tgh/Qhi/hm;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;->Qhi(Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/Tgh;)V

    :cond_4
    :goto_0
    return-void
.end method

.method private cJ(Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi;Landroid/content/Context;)V
    .locals 1

    .line 78
    const-string v0, "context == null"

    invoke-static {p2, v0}, Lcom/bytedance/sdk/component/Tgh/Qhi/ac;->Qhi(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    const-string p2, "AdLogConfig == null"

    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/Tgh/Qhi/ac;->Qhi(Ljava/lang/Object;Ljava/lang/String;)V

    .line 80
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi;->CJ()Lcom/bytedance/sdk/component/Tgh/Qhi/Tgh;

    move-result-object p1

    const-string p2, "AdLogDepend ==null"

    invoke-static {p1, p2}, Lcom/bytedance/sdk/component/Tgh/Qhi/ac;->Qhi(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic cJ(Lcom/bytedance/sdk/component/Tgh/Qhi/fl;I)V
    .locals 0

    .line 25
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/Tgh/Qhi/fl;->cJ(I)V

    return-void
.end method


# virtual methods
.method public Qhi()V
    .locals 4

    .line 107
    invoke-static {}, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;->ROR()Lcom/bytedance/sdk/component/Tgh/Qhi/hm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;->hpZ()Lcom/bytedance/sdk/component/Tgh/Qhi/Tgh;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 109
    invoke-static {}, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;->ROR()Lcom/bytedance/sdk/component/Tgh/Qhi/hm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;->Tgh()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 110
    invoke-interface {v0}, Lcom/bytedance/sdk/component/Tgh/Qhi/Tgh;->CJ()Ljava/util/concurrent/Executor;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 114
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;->ROR()Lcom/bytedance/sdk/component/Tgh/Qhi/hm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;->cJ()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 115
    invoke-static {}, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;->ROR()Lcom/bytedance/sdk/component/Tgh/Qhi/hm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;->Tgh()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/bytedance/sdk/component/Tgh/Qhi/fl;->Qhi(Landroid/content/Context;Lcom/bytedance/sdk/component/Tgh/Qhi/Tgh;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 117
    invoke-static {}, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;->ROR()Lcom/bytedance/sdk/component/Tgh/Qhi/hm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;->hm()V

    return-void

    .line 122
    :cond_1
    invoke-direct {p0}, Lcom/bytedance/sdk/component/Tgh/Qhi/fl;->ac()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 123
    invoke-interface {v0}, Lcom/bytedance/sdk/component/Tgh/Qhi/Tgh;->CJ()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/bytedance/sdk/component/Tgh/Qhi/fl$2;

    const-string v3, "start"

    invoke-direct {v2, p0, v3, v0}, Lcom/bytedance/sdk/component/Tgh/Qhi/fl$2;-><init>(Lcom/bytedance/sdk/component/Tgh/Qhi/fl;Ljava/lang/String;Lcom/bytedance/sdk/component/Tgh/Qhi/Tgh;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 131
    :cond_2
    invoke-interface {v0}, Lcom/bytedance/sdk/component/Tgh/Qhi/Tgh;->Tgh()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/component/Tgh/Qhi/fl;->Qhi(I)V

    return-void

    .line 134
    :cond_3
    invoke-static {}, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;->ROR()Lcom/bytedance/sdk/component/Tgh/Qhi/hm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;->hm()V

    :cond_4
    :goto_0
    return-void
.end method

.method public Qhi(Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/Tgh;)V
    .locals 0

    .line 189
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/Tgh/Qhi/fl;->cJ(Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/Tgh;)V

    return-void
.end method

.method public Qhi(Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi;Landroid/content/Context;)V
    .locals 2

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/bytedance/sdk/component/Tgh/Qhi/fl;->cJ(Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi;Landroid/content/Context;)V

    .line 32
    invoke-static {}, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;->ROR()Lcom/bytedance/sdk/component/Tgh/Qhi/hm;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;->Qhi(Landroid/content/Context;)V

    .line 33
    invoke-static {}, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;->ROR()Lcom/bytedance/sdk/component/Tgh/Qhi/hm;

    move-result-object p2

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi;->WAv()Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/ac;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;->Qhi(Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/ac;)V

    .line 34
    invoke-static {}, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;->ROR()Lcom/bytedance/sdk/component/Tgh/Qhi/hm;

    move-result-object p2

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi;->ROR()Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;->cJ(Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;)V

    .line 35
    invoke-static {}, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;->ROR()Lcom/bytedance/sdk/component/Tgh/Qhi/hm;

    move-result-object p2

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi;->Sf()Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;->ac(Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;)V

    .line 36
    invoke-static {}, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;->ROR()Lcom/bytedance/sdk/component/Tgh/Qhi/hm;

    move-result-object p2

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi;->cJ()Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;->Qhi(Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;)V

    .line 37
    invoke-static {}, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;->ROR()Lcom/bytedance/sdk/component/Tgh/Qhi/hm;

    move-result-object p2

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi;->hm()Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;->CJ(Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;)V

    .line 38
    invoke-static {}, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;->ROR()Lcom/bytedance/sdk/component/Tgh/Qhi/hm;

    move-result-object p2

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi;->Tgh()Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;->fl(Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;)V

    .line 39
    invoke-static {}, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;->ROR()Lcom/bytedance/sdk/component/Tgh/Qhi/hm;

    move-result-object p2

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi;->Qhi()Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/Tgh;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/Qhi/Tgh;->Qhi:Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/Qhi/Tgh;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi;->Qhi()Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/Tgh;

    move-result-object v0

    :goto_0
    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;->Qhi(Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/Tgh;)V

    .line 40
    invoke-static {}, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;->ROR()Lcom/bytedance/sdk/component/Tgh/Qhi/hm;

    move-result-object p2

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi;->Gm()Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;->cJ(Z)V

    .line 41
    invoke-static {}, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;->ROR()Lcom/bytedance/sdk/component/Tgh/Qhi/hm;

    move-result-object p2

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi;->CJ()Lcom/bytedance/sdk/component/Tgh/Qhi/Tgh;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;->Qhi(Lcom/bytedance/sdk/component/Tgh/Qhi/Tgh;)V

    .line 42
    invoke-static {}, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;->ROR()Lcom/bytedance/sdk/component/Tgh/Qhi/hm;

    move-result-object p2

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi;->ac()Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;->Qhi(Z)V

    .line 43
    invoke-static {}, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;->ROR()Lcom/bytedance/sdk/component/Tgh/Qhi/hm;

    move-result-object p2

    invoke-virtual {p1}, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi;->fl()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;->Qhi(J)V

    .line 44
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi;->ABk()I

    move-result p2

    invoke-static {p2}, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/ac/ac;->Qhi(I)V

    .line 45
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi;->zc()I

    move-result p2

    invoke-static {p2}, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/ac/ac;->cJ(I)V

    .line 47
    invoke-direct {p0, p1}, Lcom/bytedance/sdk/component/Tgh/Qhi/fl;->Qhi(Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi;)V

    return-void
.end method

.method public Qhi(Ljava/lang/String;Ljava/util/List;ZLjava/util/Map;ILjava/lang/String;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 238
    invoke-static {}, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;->ROR()Lcom/bytedance/sdk/component/Tgh/Qhi/hm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;->hpZ()Lcom/bytedance/sdk/component/Tgh/Qhi/Tgh;

    move-result-object v6

    if-eqz v6, :cond_9

    .line 239
    invoke-static {}, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;->ROR()Lcom/bytedance/sdk/component/Tgh/Qhi/hm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;->Tgh()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-interface {v6}, Lcom/bytedance/sdk/component/Tgh/Qhi/Tgh;->CJ()Ljava/util/concurrent/Executor;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 242
    :cond_0
    invoke-interface {v6}, Lcom/bytedance/sdk/component/Tgh/Qhi/Tgh;->Sf()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 245
    :cond_1
    invoke-interface {v6}, Lcom/bytedance/sdk/component/Tgh/Qhi/Tgh;->Tgh()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    if-eqz p2, :cond_2

    .line 246
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_2
    return-void

    .line 249
    :cond_3
    invoke-interface {v6}, Lcom/bytedance/sdk/component/Tgh/Qhi/Tgh;->Tgh()I

    move-result v0

    if-nez v0, :cond_5

    .line 250
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    if-eqz p2, :cond_4

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_4
    return-void

    .line 254
    :cond_5
    invoke-static {}, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;->ROR()Lcom/bytedance/sdk/component/Tgh/Qhi/hm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;->cJ()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 255
    invoke-static {}, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;->ROR()Lcom/bytedance/sdk/component/Tgh/Qhi/hm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;->Tgh()Landroid/content/Context;

    move-result-object v0

    move-object v9, p0

    invoke-direct {p0, v0, v6}, Lcom/bytedance/sdk/component/Tgh/Qhi/fl;->Qhi(Landroid/content/Context;Lcom/bytedance/sdk/component/Tgh/Qhi/Tgh;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_0

    .line 259
    :cond_6
    invoke-direct {p0}, Lcom/bytedance/sdk/component/Tgh/Qhi/fl;->ac()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 260
    invoke-interface {v6}, Lcom/bytedance/sdk/component/Tgh/Qhi/Tgh;->CJ()Ljava/util/concurrent/Executor;

    move-result-object v10

    new-instance v11, Lcom/bytedance/sdk/component/Tgh/Qhi/fl$5;

    const-string v2, "trackFailed"

    move-object v0, v11

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move/from16 v7, p5

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/bytedance/sdk/component/Tgh/Qhi/fl$5;-><init>(Lcom/bytedance/sdk/component/Tgh/Qhi/fl;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;ZLcom/bytedance/sdk/component/Tgh/Qhi/Tgh;ILjava/lang/String;)V

    invoke-interface {v10, v11}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 267
    :cond_7
    invoke-interface {v6}, Lcom/bytedance/sdk/component/Tgh/Qhi/Tgh;->Tgh()I

    move-result v4

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move/from16 v5, p5

    move-object/from16 v6, p6

    invoke-direct/range {v0 .. v6}, Lcom/bytedance/sdk/component/Tgh/Qhi/fl;->Qhi(Ljava/lang/String;Ljava/util/List;ZIILjava/lang/String;)V

    return-void

    :cond_8
    move-object v9, p0

    .line 256
    :goto_0
    invoke-static {}, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;->ROR()Lcom/bytedance/sdk/component/Tgh/Qhi/hm;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;->Qhi(Ljava/lang/String;Ljava/util/List;ZLjava/util/Map;ILjava/lang/String;)V

    return-void

    :cond_9
    :goto_1
    move-object v9, p0

    return-void
.end method

.method public Qhi(Ljava/lang/String;Z)V
    .locals 8

    .line 287
    invoke-static {}, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;->ROR()Lcom/bytedance/sdk/component/Tgh/Qhi/hm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;->hpZ()Lcom/bytedance/sdk/component/Tgh/Qhi/Tgh;

    move-result-object v5

    if-eqz v5, :cond_6

    .line 288
    invoke-static {}, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;->ROR()Lcom/bytedance/sdk/component/Tgh/Qhi/hm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;->Tgh()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-interface {v5}, Lcom/bytedance/sdk/component/Tgh/Qhi/Tgh;->CJ()Ljava/util/concurrent/Executor;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 291
    :cond_0
    invoke-interface {v5}, Lcom/bytedance/sdk/component/Tgh/Qhi/Tgh;->Sf()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 294
    :cond_1
    invoke-interface {v5}, Lcom/bytedance/sdk/component/Tgh/Qhi/Tgh;->Tgh()I

    move-result v0

    if-nez v0, :cond_2

    .line 295
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 299
    :cond_2
    invoke-static {}, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;->ROR()Lcom/bytedance/sdk/component/Tgh/Qhi/hm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;->cJ()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 300
    invoke-static {}, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;->ROR()Lcom/bytedance/sdk/component/Tgh/Qhi/hm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;->Tgh()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, v5}, Lcom/bytedance/sdk/component/Tgh/Qhi/fl;->Qhi(Landroid/content/Context;Lcom/bytedance/sdk/component/Tgh/Qhi/Tgh;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 304
    :cond_3
    invoke-direct {p0}, Lcom/bytedance/sdk/component/Tgh/Qhi/fl;->ac()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 305
    invoke-interface {v5}, Lcom/bytedance/sdk/component/Tgh/Qhi/Tgh;->CJ()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v7, Lcom/bytedance/sdk/component/Tgh/Qhi/fl$6;

    const-string v3, "trackFailed"

    move-object v1, v7

    move-object v2, p0

    move-object v4, p1

    move v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/bytedance/sdk/component/Tgh/Qhi/fl$6;-><init>(Lcom/bytedance/sdk/component/Tgh/Qhi/fl;Ljava/lang/String;Ljava/lang/String;Lcom/bytedance/sdk/component/Tgh/Qhi/Tgh;Z)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 312
    :cond_4
    invoke-interface {v5}, Lcom/bytedance/sdk/component/Tgh/Qhi/Tgh;->Tgh()I

    move-result v0

    invoke-direct {p0, p1, v0, p2}, Lcom/bytedance/sdk/component/Tgh/Qhi/fl;->Qhi(Ljava/lang/String;IZ)V

    return-void

    .line 301
    :cond_5
    :goto_0
    invoke-static {}, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;->ROR()Lcom/bytedance/sdk/component/Tgh/Qhi/hm;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;->Qhi(Ljava/lang/String;Z)V

    :cond_6
    :goto_1
    return-void
.end method

.method public Qhi(Z)V
    .locals 1

    .line 74
    invoke-static {}, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;->ROR()Lcom/bytedance/sdk/component/Tgh/Qhi/hm;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;->Qhi(Z)V

    return-void
.end method

.method public cJ()V
    .locals 4

    .line 149
    invoke-static {}, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;->ROR()Lcom/bytedance/sdk/component/Tgh/Qhi/hm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;->hpZ()Lcom/bytedance/sdk/component/Tgh/Qhi/Tgh;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 151
    invoke-static {}, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;->ROR()Lcom/bytedance/sdk/component/Tgh/Qhi/hm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;->Tgh()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 152
    invoke-interface {v0}, Lcom/bytedance/sdk/component/Tgh/Qhi/Tgh;->CJ()Ljava/util/concurrent/Executor;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 155
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;->ROR()Lcom/bytedance/sdk/component/Tgh/Qhi/hm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;->cJ()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 156
    invoke-static {}, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;->ROR()Lcom/bytedance/sdk/component/Tgh/Qhi/hm;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;->Tgh()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/bytedance/sdk/component/Tgh/Qhi/fl;->Qhi(Landroid/content/Context;Lcom/bytedance/sdk/component/Tgh/Qhi/Tgh;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 158
    invoke-static {}, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;->ROR()Lcom/bytedance/sdk/component/Tgh/Qhi/hm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;->Gm()V

    return-void

    .line 163
    :cond_1
    invoke-direct {p0}, Lcom/bytedance/sdk/component/Tgh/Qhi/fl;->ac()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 164
    invoke-interface {v0}, Lcom/bytedance/sdk/component/Tgh/Qhi/Tgh;->CJ()Ljava/util/concurrent/Executor;

    move-result-object v1

    new-instance v2, Lcom/bytedance/sdk/component/Tgh/Qhi/fl$3;

    const-string v3, "stop"

    invoke-direct {v2, p0, v3, v0}, Lcom/bytedance/sdk/component/Tgh/Qhi/fl$3;-><init>(Lcom/bytedance/sdk/component/Tgh/Qhi/fl;Ljava/lang/String;Lcom/bytedance/sdk/component/Tgh/Qhi/Tgh;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    .line 171
    :cond_2
    invoke-interface {v0}, Lcom/bytedance/sdk/component/Tgh/Qhi/Tgh;->Tgh()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/component/Tgh/Qhi/fl;->cJ(I)V

    return-void

    .line 175
    :cond_3
    invoke-static {}, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;->ROR()Lcom/bytedance/sdk/component/Tgh/Qhi/hm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;->Gm()V

    :cond_4
    :goto_0
    return-void
.end method
