.class final Lcom/bytedance/sdk/openadsdk/core/iMK$2;
.super Ljava/lang/Object;
.source "InitHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/iMK;->ROR()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 158
    :try_start_0
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/iMK$2$1;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/openadsdk/core/iMK$2$1;-><init>(Lcom/bytedance/sdk/openadsdk/core/iMK$2;)V

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/ABk/ac;->Qhi(Lcom/bytedance/sdk/openadsdk/ABk/fl;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 167
    const-string v1, "InitHelper"

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
