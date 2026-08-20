.class public Lcom/bytedance/sdk/openadsdk/core/Tgh/Qhi;
.super Ljava/lang/Object;
.source "TncHelper.java"


# static fields
.field public static Qhi:Z = false

.field private static ac:J

.field private static final cJ:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 23
    const-string v0, "1371"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/bytedance/sdk/openadsdk/core/Tgh/Qhi;->cJ:I

    .line 25
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/bytedance/sdk/openadsdk/core/Tgh/Qhi;->ac:J

    return-void
.end method

.method public static Qhi()V
    .locals 4

    .line 30
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->CJ()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->hm()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 34
    :cond_0
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/core/Tgh/Qhi;->Qhi:Z

    if-eqz v0, :cond_1

    return-void

    .line 38
    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->Qhi()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    .line 45
    :cond_2
    :try_start_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/iMK/ac;->Qhi()Lcom/bytedance/sdk/openadsdk/iMK/ac;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/iMK/ac;->cJ()Lcom/bytedance/sdk/component/ROR/Qhi;

    move-result-object v1

    new-instance v2, Lcom/bytedance/sdk/openadsdk/iMK/cJ;

    invoke-direct {v2, v0}, Lcom/bytedance/sdk/openadsdk/iMK/cJ;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v3, v2}, Lcom/bytedance/sdk/component/ROR/Qhi;->Qhi(Landroid/content/Context;ZLcom/bytedance/sdk/component/ROR/ac/cJ;)V

    .line 47
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/iMK/ac;->Qhi()Lcom/bytedance/sdk/openadsdk/iMK/ac;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bytedance/sdk/openadsdk/iMK/ac;->cJ()Lcom/bytedance/sdk/component/ROR/Qhi;

    move-result-object v1

    invoke-static {}, Lcom/bytedance/sdk/openadsdk/multipro/cJ;->ac()Z

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/bytedance/sdk/component/ROR/Qhi;->Qhi(Landroid/content/Context;Z)V

    .line 48
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/bytedance/sdk/openadsdk/core/Tgh/Qhi;->ac:J

    .line 49
    sput-boolean v3, Lcom/bytedance/sdk/openadsdk/core/Tgh/Qhi;->Qhi:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 52
    const-string v1, "initTTAdNet: "

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "TncHelper"

    invoke-static {v1, v0}, Lcom/bytedance/sdk/component/utils/ABk;->Qhi(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public static cJ()V
    .locals 6

    .line 68
    sget-boolean v0, Lcom/bytedance/sdk/openadsdk/core/Tgh/Qhi;->Qhi:Z

    if-nez v0, :cond_0

    return-void

    .line 71
    :cond_0
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->CJ()Lcom/bytedance/sdk/openadsdk/core/settings/ROR;

    move-result-object v0

    .line 72
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->hm()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 73
    invoke-interface {v0}, Lcom/bytedance/sdk/openadsdk/core/settings/ROR;->SL()J

    move-result-wide v0

    .line 74
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 75
    sget-wide v4, Lcom/bytedance/sdk/openadsdk/core/Tgh/Qhi;->ac:J

    sub-long v4, v2, v4

    cmp-long v0, v4, v0

    if-ltz v0, :cond_2

    .line 76
    sput-wide v2, Lcom/bytedance/sdk/openadsdk/core/Tgh/Qhi;->ac:J

    .line 77
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/core/HzH;->Qhi()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 81
    :cond_1
    invoke-static {}, Lcom/bytedance/sdk/component/ROR/ac/hm;->Qhi()Lcom/bytedance/sdk/component/ROR/ac/hm;

    move-result-object v1

    sget v2, Lcom/bytedance/sdk/openadsdk/core/Tgh/Qhi;->cJ:I

    invoke-virtual {v1, v2, v0}, Lcom/bytedance/sdk/component/ROR/ac/hm;->Qhi(ILandroid/content/Context;)Lcom/bytedance/sdk/component/ROR/ac/Qhi;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/ROR/ac/Qhi;->ac()Z

    :cond_2
    return-void
.end method
