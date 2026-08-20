.class public Lcom/bytedance/sdk/openadsdk/cJ/Qhi/fl;
.super Ljava/lang/Object;
.source "AdLogSwitchUtils.java"


# static fields
.field public static Qhi:Ljava/util/concurrent/atomic/AtomicInteger;

.field public static final cJ:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 29
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/fl;->Qhi:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 31
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/fl;->cJ:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method public static Qhi()Lcom/bytedance/sdk/openadsdk/Gm/ac/cJ;
    .locals 1

    .line 81
    sget-object v0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/ABk;->Qhi:Lcom/bytedance/sdk/openadsdk/cJ/Qhi/ABk;

    return-object v0
.end method

.method public static Qhi(Landroid/content/Context;Z)V
    .locals 3

    .line 34
    sget-object v0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/fl;->cJ:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    new-instance v0, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi$Qhi;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi$Qhi;-><init>()V

    new-instance v1, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/Gm;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/Gm;-><init>()V

    .line 36
    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi$Qhi;->Qhi(Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/ac;)Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi$Qhi;

    move-result-object v0

    .line 37
    invoke-static {}, Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;->ac()Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi$Qhi;->cJ(Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;)Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi$Qhi;

    move-result-object v0

    .line 38
    invoke-static {}, Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;->fl()Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi$Qhi;->ac(Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;)Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi$Qhi;

    move-result-object v0

    .line 39
    invoke-static {}, Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;->CJ()Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi$Qhi;->Qhi(Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/cJ/ac;)Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi$Qhi;

    move-result-object v0

    .line 40
    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi$Qhi;->Qhi(Z)Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi$Qhi;

    move-result-object p1

    new-instance v0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/zc;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/zc;-><init>()V

    .line 41
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi$Qhi;->Qhi(Lcom/bytedance/sdk/component/Tgh/Qhi/Tgh;)Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi$Qhi;

    move-result-object p1

    sget-object v0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/hm;->Qhi:Lcom/bytedance/sdk/openadsdk/cJ/Qhi/hm;

    .line 42
    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi$Qhi;->Qhi(Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi/Tgh;)Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi$Qhi;

    move-result-object p1

    .line 43
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->CJ()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->pA()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi$Qhi;->cJ(I)Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi$Qhi;

    move-result-object p1

    .line 44
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->CJ()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->hpZ()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi$Qhi;->Qhi(I)Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi$Qhi;

    move-result-object p1

    .line 45
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->CJ()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->PER()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi$Qhi;->Qhi(J)Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi$Qhi;

    move-result-object p1

    .line 46
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi$Qhi;->Qhi()Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi;

    move-result-object p1

    .line 47
    invoke-static {p1, p0}, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ;->Qhi(Lcom/bytedance/sdk/component/Tgh/Qhi/Qhi;Landroid/content/Context;)V

    .line 48
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/fl;->cJ()V

    :cond_0
    return-void
.end method

.method public static Qhi(Lcom/bytedance/sdk/openadsdk/cJ/Qhi;)V
    .locals 2

    .line 54
    new-instance v0, Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/Qhi/cJ;

    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/cJ/Qhi;->CJ()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/Qhi/cJ;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/Qhi/ac;)V

    .line 55
    invoke-virtual {p0}, Lcom/bytedance/sdk/openadsdk/cJ/Qhi;->fl()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x2

    .line 56
    :goto_0
    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/Qhi/cJ;->cJ(B)V

    const/4 p0, 0x0

    .line 58
    invoke-virtual {v0, p0}, Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/Qhi/cJ;->Qhi(B)V

    .line 60
    invoke-static {}, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ;->cJ()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 61
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->Qhi()Landroid/content/Context;

    move-result-object p0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/cJ;->ac()Z

    move-result v1

    invoke-static {p0, v1}, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/fl;->Qhi(Landroid/content/Context;Z)V

    .line 63
    :cond_1
    invoke-static {v0}, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ;->Qhi(Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/Tgh;)V

    return-void
.end method

.method public static Qhi(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 101
    invoke-static {p0, v0}, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/fl;->Qhi(Ljava/lang/String;Z)V

    return-void
.end method

.method public static Qhi(Ljava/lang/String;Z)V
    .locals 2

    .line 104
    invoke-static {}, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ;->cJ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->Qhi()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/cJ;->ac()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/fl;->Qhi(Landroid/content/Context;Z)V

    .line 107
    :cond_0
    invoke-static {p0, p1}, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ;->Qhi(Ljava/lang/String;Z)V

    return-void
.end method

.method public static Qhi(Ljava/util/List;ILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    .line 88
    :cond_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/fl$1;

    const-string v1, "track"

    invoke-direct {v0, v1, p0, p1, p2}, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/fl$1;-><init>(Ljava/lang/String;Ljava/util/List;ILjava/lang/String;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/cJ/ac;->Qhi(Lcom/bytedance/sdk/component/Sf/hm;)V

    return-void
.end method

.method public static ac()V
    .locals 2

    .line 117
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ;->CJ()V

    .line 118
    invoke-static {}, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ;->fl()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 120
    const-string v1, "AdLogSwitchUtils"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static cJ()V
    .locals 0

    .line 111
    invoke-static {}, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ;->ac()V

    return-void
.end method
