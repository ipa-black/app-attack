.class Lcom/bytedance/sdk/openadsdk/cJ/Qhi/ABk;
.super Ljava/lang/Object;
.source "StatsLogAdLogImpl.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/Gm/ac/cJ;


# static fields
.field public static final Qhi:Lcom/bytedance/sdk/openadsdk/cJ/Qhi/ABk;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 28
    new-instance v0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/ABk;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/ABk;-><init>()V

    sput-object v0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/ABk;->Qhi:Lcom/bytedance/sdk/openadsdk/cJ/Qhi/ABk;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private Qhi(Lcom/bytedance/sdk/component/Sf/hm;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 91
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/utils/lG;->Tgh()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x5

    .line 92
    invoke-static {p1, v0}, Lcom/bytedance/sdk/openadsdk/utils/lG;->cJ(Lcom/bytedance/sdk/component/Sf/hm;I)V

    return-void

    .line 94
    :cond_1
    invoke-virtual {p1}, Lcom/bytedance/sdk/component/Sf/hm;->run()V

    return-void
.end method


# virtual methods
.method public Qhi(Lcom/bytedance/sdk/openadsdk/Gm/cJ;)V
    .locals 1

    const/4 v0, 0x0

    .line 39
    invoke-virtual {p0, p1, v0}, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/ABk;->Qhi(Lcom/bytedance/sdk/openadsdk/Gm/cJ;Z)V

    return-void
.end method

.method public Qhi(Lcom/bytedance/sdk/openadsdk/Gm/cJ;Z)V
    .locals 2

    .line 43
    new-instance v0, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/ABk$1;

    const-string v1, "uploadLogEvent"

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/ABk$1;-><init>(Lcom/bytedance/sdk/openadsdk/cJ/Qhi/ABk;Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/Gm/cJ;Z)V

    invoke-direct {p0, v0}, Lcom/bytedance/sdk/openadsdk/cJ/Qhi/ABk;->Qhi(Lcom/bytedance/sdk/component/Sf/hm;)V

    return-void
.end method
