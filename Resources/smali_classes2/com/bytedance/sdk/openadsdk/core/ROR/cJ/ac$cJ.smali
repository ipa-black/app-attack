.class public Lcom/bytedance/sdk/openadsdk/core/ROR/cJ/ac$cJ;
.super Ljava/lang/Object;
.source "VastTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/ROR/cJ/ac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "cJ"
.end annotation


# instance fields
.field Qhi:Ljava/lang/String;

.field ac:F

.field cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/tP;)V
    .locals 1

    const/high16 v0, -0x40800000    # -1.0f

    .line 327
    invoke-direct {p0, p1, p2, v0}, Lcom/bytedance/sdk/openadsdk/core/ROR/cJ/ac$cJ;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/tP;F)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/model/tP;F)V
    .locals 0

    .line 330
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 331
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ROR/cJ/ac$cJ;->Qhi:Ljava/lang/String;

    .line 332
    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/ROR/cJ/ac$cJ;->cJ:Lcom/bytedance/sdk/openadsdk/core/model/tP;

    .line 333
    iput p3, p0, Lcom/bytedance/sdk/openadsdk/core/ROR/cJ/ac$cJ;->ac:F

    return-void
.end method
