.class Lcom/bytedance/sdk/openadsdk/core/settings/pA$2$3;
.super Ljava/lang/Object;
.source "SettingsFetchTask.java"

# interfaces
.implements Lcom/bytedance/sdk/openadsdk/ABk/fl;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/settings/pA$2;->Qhi(Lcom/bytedance/sdk/component/ROR/cJ/ac;Ljava/io/IOException;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/core/settings/pA$2;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/settings/pA$2;)V
    .locals 0

    .line 232
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/settings/pA$2$3;->Qhi:Lcom/bytedance/sdk/openadsdk/core/settings/pA$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public generatorModel()Lcom/bytedance/sdk/openadsdk/ABk/cJ/Qhi;
    .locals 2

    .line 235
    new-instance v0, Lcom/bytedance/sdk/openadsdk/ABk/cJ/Qhi;

    invoke-direct {v0}, Lcom/bytedance/sdk/openadsdk/ABk/cJ/Qhi;-><init>()V

    .line 236
    const-string v1, "settings_fetch"

    invoke-virtual {v0, v1}, Lcom/bytedance/sdk/openadsdk/ABk/cJ/Qhi;->cJ(Ljava/lang/String;)V

    return-object v0
.end method
