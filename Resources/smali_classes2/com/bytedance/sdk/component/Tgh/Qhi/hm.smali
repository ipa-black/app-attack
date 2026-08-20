.class public Lcom/bytedance/sdk/component/Tgh/Qhi/hm;
.super Ljava/lang/Object;
.source "LogInternalManager.java"


# static fields
.field private static ABk:Lcom/bytedance/sdk/component/Tgh/Qhi/hm;

.field private static volatile WAv:Lcom/bytedance/sdk/component/Tgh/Qhi/fl/Qhi;


# instance fields
.field private volatile CJ:Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;

.field private volatile Gm:Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/ac;

.field private volatile Qhi:Landroid/content/Context;

.field private volatile ROR:Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/Tgh;

.field private volatile Sf:Z

.field private volatile Tgh:Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;

.field private volatile ac:Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;

.field private volatile cJ:Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;

.field private volatile fl:Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;

.field private volatile hm:Lcom/bytedance/sdk/component/Tgh/Qhi/Tgh;

.field private final iMK:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private pA:J

.field private volatile zc:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/ac;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;->iMK:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static declared-synchronized ROR()Lcom/bytedance/sdk/component/Tgh/Qhi/hm;
    .locals 2

    const-class v0, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;

    monitor-enter v0

    .line 109
    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;->ABk:Lcom/bytedance/sdk/component/Tgh/Qhi/hm;

    if-nez v1, :cond_0

    .line 110
    new-instance v1, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;

    invoke-direct {v1}, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;-><init>()V

    sput-object v1, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;->ABk:Lcom/bytedance/sdk/component/Tgh/Qhi/hm;

    .line 112
    :cond_0
    sget-object v1, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;->ABk:Lcom/bytedance/sdk/component/Tgh/Qhi/hm;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static fl()Lcom/bytedance/sdk/component/Tgh/Qhi/fl/Qhi;
    .locals 2

    .line 72
    sget-object v0, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;->WAv:Lcom/bytedance/sdk/component/Tgh/Qhi/fl/Qhi;

    if-nez v0, :cond_1

    .line 73
    const-class v0, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;

    monitor-enter v0

    .line 74
    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;->WAv:Lcom/bytedance/sdk/component/Tgh/Qhi/fl/Qhi;

    if-nez v1, :cond_0

    .line 75
    new-instance v1, Lcom/bytedance/sdk/component/Tgh/Qhi/fl/cJ;

    invoke-direct {v1}, Lcom/bytedance/sdk/component/Tgh/Qhi/fl/cJ;-><init>()V

    sput-object v1, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;->WAv:Lcom/bytedance/sdk/component/Tgh/Qhi/fl/Qhi;

    .line 77
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .line 79
    :cond_1
    :goto_0
    sget-object v0, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;->WAv:Lcom/bytedance/sdk/component/Tgh/Qhi/fl/Qhi;

    return-object v0
.end method


# virtual methods
.method public ABk()Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;->ac:Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;

    return-object v0
.end method

.method public CJ()Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/Tgh;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;->ROR:Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/Tgh;

    return-object v0
.end method

.method public CJ(Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;)V
    .locals 0

    .line 213
    iput-object p1, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;->CJ:Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;

    return-void
.end method

.method public Gm()V
    .locals 1

    .line 139
    sget-object v0, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/fl;->Qhi:Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/fl;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/fl;->ac()V

    return-void
.end method

.method public HzH()J
    .locals 4

    .line 242
    iget-wide v0, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;->pA:J

    const-wide/32 v2, 0x5265c00

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public Qhi(J)V
    .locals 0

    .line 238
    iput-wide p1, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;->pA:J

    return-void
.end method

.method public Qhi(Landroid/content/Context;)V
    .locals 0

    .line 93
    iput-object p1, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;->Qhi:Landroid/content/Context;

    return-void
.end method

.method public Qhi(Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/Tgh;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 148
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-interface {p1, v0, v1}, Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/Tgh;->Qhi(J)V

    .line 149
    sget-object v0, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/fl;->Qhi:Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/fl;

    invoke-interface {p1}, Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/Tgh;->CJ()B

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/fl;->Qhi(Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/Tgh;I)V

    return-void
.end method

.method public Qhi(Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;->Tgh:Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;

    return-void
.end method

.method public Qhi(Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/Tgh;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;->ROR:Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/Tgh;

    return-void
.end method

.method public Qhi(Lcom/bytedance/sdk/component/Tgh/Qhi/Tgh;)V
    .locals 0

    .line 229
    iput-object p1, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;->hm:Lcom/bytedance/sdk/component/Tgh/Qhi/Tgh;

    return-void
.end method

.method public Qhi(Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/ac;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;->Gm:Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/ac;

    return-void
.end method

.method public Qhi(Ljava/lang/String;Ljava/util/List;ZLjava/util/Map;ILjava/lang/String;)V
    .locals 7
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

    .line 164
    invoke-static {}, Lcom/bytedance/sdk/component/Tgh/Qhi/Tgh/Qhi;->Qhi()Lcom/bytedance/sdk/component/Tgh/Qhi/Tgh/cJ;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    move-object v6, p6

    invoke-interface/range {v0 .. v6}, Lcom/bytedance/sdk/component/Tgh/Qhi/Tgh/cJ;->Qhi(Ljava/lang/String;Ljava/util/List;ZLjava/util/Map;ILjava/lang/String;)V

    return-void
.end method

.method public Qhi(Ljava/lang/String;Z)V
    .locals 1

    .line 154
    invoke-static {}, Lcom/bytedance/sdk/component/Tgh/Qhi/Tgh/Qhi;->Qhi()Lcom/bytedance/sdk/component/Tgh/Qhi/Tgh/cJ;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/bytedance/sdk/component/Tgh/Qhi/Tgh/cJ;->Qhi(Ljava/lang/String;Z)V

    return-void
.end method

.method public Qhi(Z)V
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;->iMK:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public Qhi()Z
    .locals 1

    .line 43
    iget-object v0, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;->iMK:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public Sf()Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/ac;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;->Gm:Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/ac;

    return-object v0
.end method

.method public Tgh()Landroid/content/Context;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;->Qhi:Landroid/content/Context;

    return-object v0
.end method

.method public WAv()Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;->Tgh:Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;

    return-object v0
.end method

.method public ac()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/ac;",
            ">;"
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;->zc:Ljava/util/Map;

    return-object v0
.end method

.method public ac(Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;)V
    .locals 0

    .line 205
    iput-object p1, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;->ac:Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;

    return-void
.end method

.method public cJ(Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;)V
    .locals 0

    .line 197
    iput-object p1, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;->cJ:Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;

    return-void
.end method

.method public cJ(Z)V
    .locals 0

    .line 55
    iput-boolean p1, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;->Sf:Z

    return-void
.end method

.method public cJ()Z
    .locals 1

    .line 51
    iget-boolean v0, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;->Sf:Z

    return v0
.end method

.method public fl(Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;)V
    .locals 0

    .line 225
    iput-object p1, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;->fl:Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;

    return-void
.end method

.method public hm()V
    .locals 1

    .line 126
    sget-object v0, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/fl;->Qhi:Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/fl;

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/fl;->cJ()V

    return-void
.end method

.method public hpZ()Lcom/bytedance/sdk/component/Tgh/Qhi/Tgh;
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;->hm:Lcom/bytedance/sdk/component/Tgh/Qhi/Tgh;

    return-object v0
.end method

.method public iMK()Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;->CJ:Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;

    return-object v0
.end method

.method public pA()Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;->fl:Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;

    return-object v0
.end method

.method public zc()Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/hm;->cJ:Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;

    return-object v0
.end method
