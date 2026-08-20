.class Lcom/bytedance/sdk/openadsdk/HzH/Qhi$2$1;
.super Ljava/lang/Object;
.source "StrategyCenterUtils.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/ABk/fl;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/HzH/Qhi$2;->Qhi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/HzH/Qhi$2;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/HzH/Qhi$2;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/HzH/Qhi$2$1;->Qhi:Lcom/bytedance/sdk/openadsdk/HzH/Qhi$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public generatorModel()Lcom/bytedance/sdk/openadsdk/ABk/cJ/Qhi;
    .locals 2

    .line 145
    new-instance v0, Lcom/bytedance/sdk/openadsdk/ABk/cJ/Qhi;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/ABk/cJ/Qhi;-><init>()V

    .line 146
    const-string v1, "strategy_fetch"

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/ABk/cJ/Qhi;->cJ(Ljava/lang/String;)V

    return-object v0
.end method
