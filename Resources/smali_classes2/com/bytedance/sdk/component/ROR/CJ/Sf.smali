.class public Lcom/bytedance/sdk/component/ROR/CJ/Sf;
.super Ljava/lang/Object;
.source "Logger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/component/ROR/CJ/Sf$ac;,
        Lcom/bytedance/sdk/component/ROR/CJ/Sf$cJ;,
        Lcom/bytedance/sdk/component/ROR/CJ/Sf$Qhi;
    }
.end annotation


# instance fields
.field private Qhi:Lcom/bytedance/sdk/component/ROR/CJ/Sf$Qhi;

.field private cJ:Lcom/bytedance/sdk/component/ROR/CJ/Sf$cJ;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    sget-object v0, Lcom/bytedance/sdk/component/ROR/CJ/Sf$Qhi;->CJ:Lcom/bytedance/sdk/component/ROR/CJ/Sf$Qhi;

    iput-object v0, p0, Lcom/bytedance/sdk/component/ROR/CJ/Sf;->Qhi:Lcom/bytedance/sdk/component/ROR/CJ/Sf$Qhi;

    .line 30
    new-instance v0, Lcom/bytedance/sdk/component/ROR/CJ/ROR;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/ROR/CJ/ROR;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/ROR/CJ/Sf;->cJ:Lcom/bytedance/sdk/component/ROR/CJ/Sf$cJ;

    return-void
.end method

.method synthetic constructor <init>(Lcom/bytedance/sdk/component/ROR/CJ/Sf$1;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/bytedance/sdk/component/ROR/CJ/Sf;-><init>()V

    return-void
.end method

.method public static Qhi(Lcom/bytedance/sdk/component/ROR/CJ/Sf$Qhi;)V
    .locals 2

    .line 54
    const-class v0, Lcom/bytedance/sdk/component/ROR/CJ/Sf;

    monitor-enter v0

    .line 55
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/component/ROR/CJ/Sf$ac;->Qhi()Lcom/bytedance/sdk/component/ROR/CJ/Sf;

    move-result-object v1

    iput-object p0, v1, Lcom/bytedance/sdk/component/ROR/CJ/Sf;->Qhi:Lcom/bytedance/sdk/component/ROR/CJ/Sf$Qhi;

    .line 56
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
