.class public Lcom/bytedance/sdk/openadsdk/pA/Qhi/cJ/Qhi;
.super Ljava/lang/Object;
.source "AdvertisingIdHelper.java"


# static fields
.field private static volatile cJ:Lcom/bytedance/sdk/openadsdk/pA/Qhi/cJ/Qhi;


# instance fields
.field private Qhi:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const-string v0, ""

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/pA/Qhi/cJ/Qhi;->Qhi:Ljava/lang/String;

    return-void
.end method

.method public static Qhi()Lcom/bytedance/sdk/openadsdk/pA/Qhi/cJ/Qhi;
    .locals 2

    .line 22
    sget-object v0, Lcom/bytedance/sdk/openadsdk/pA/Qhi/cJ/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/pA/Qhi/cJ/Qhi;

    if-nez v0, :cond_1

    .line 23
    const-class v0, Lcom/bytedance/sdk/openadsdk/pA/Qhi/cJ/Qhi;

    monitor-enter v0

    .line 24
    :try_start_0
    sget-object v1, Lcom/bytedance/sdk/openadsdk/pA/Qhi/cJ/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/pA/Qhi/cJ/Qhi;

    if-nez v1, :cond_0

    .line 25
    new-instance v1, Lcom/bytedance/sdk/openadsdk/pA/Qhi/cJ/Qhi;

    invoke-direct {v1}, Lcom/bytedance/sdk/openadsdk/pA/Qhi/cJ/Qhi;-><init>()V

    sput-object v1, Lcom/bytedance/sdk/openadsdk/pA/Qhi/cJ/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/pA/Qhi/cJ/Qhi;

    .line 27
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    .line 29
    :cond_1
    :goto_0
    sget-object v0, Lcom/bytedance/sdk/openadsdk/pA/Qhi/cJ/Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/pA/Qhi/cJ/Qhi;

    return-object v0
.end method

.method public static Qhi(Ljava/lang/String;)V
    .locals 2

    .line 51
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 52
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->Qhi()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ac;->Qhi(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/ac;

    move-result-object v0

    const-string v1, "gaid"

    invoke-virtual {v0, v1, p0}, Lcom/bytedance/sdk/openadsdk/core/ac;->Qhi(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public cJ()Ljava/lang/String;
    .locals 3

    .line 39
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->CJ()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object v0

    const-string v1, "gaid"

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->aP(Ljava/lang/String;)Z

    move-result v0

    const-string v2, ""

    if-eqz v0, :cond_1

    .line 40
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/pA/Qhi/cJ/Qhi;->Qhi:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 41
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/pA/Qhi/cJ/Qhi;->Qhi:Ljava/lang/String;

    return-object v0

    .line 43
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->Qhi()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/core/ac;->Qhi(Landroid/content/Context;)Lcom/bytedance/sdk/openadsdk/core/ac;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/ac;->cJ(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/pA/Qhi/cJ/Qhi;->Qhi:Ljava/lang/String;

    return-object v0

    :cond_1
    return-object v2
.end method

.method public cJ(Ljava/lang/String;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/pA/Qhi/cJ/Qhi;->Qhi:Ljava/lang/String;

    return-void
.end method
