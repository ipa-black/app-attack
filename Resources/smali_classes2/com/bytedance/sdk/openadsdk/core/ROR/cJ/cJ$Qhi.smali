.class public Lcom/bytedance/sdk/openadsdk/core/ROR/cJ/cJ$Qhi;
.super Ljava/lang/Object;
.source "VastFractionalProgressTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/ROR/cJ/cJ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Qhi"
.end annotation


# instance fields
.field private CJ:Z

.field private final Qhi:Ljava/lang/String;

.field private ac:Lcom/bytedance/sdk/openadsdk/core/ROR/cJ/ac$ac;

.field private final cJ:F


# direct methods
.method public constructor <init>(Ljava/lang/String;F)V
    .locals 1

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/ROR/cJ/ac$ac;->Qhi:Lcom/bytedance/sdk/openadsdk/core/ROR/cJ/ac$ac;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ROR/cJ/cJ$Qhi;->ac:Lcom/bytedance/sdk/openadsdk/core/ROR/cJ/ac$ac;

    const/4 v0, 0x0

    .line 76
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/ROR/cJ/cJ$Qhi;->CJ:Z

    .line 79
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ROR/cJ/cJ$Qhi;->Qhi:Ljava/lang/String;

    .line 80
    iput p2, p0, Lcom/bytedance/sdk/openadsdk/core/ROR/cJ/cJ$Qhi;->cJ:F

    return-void
.end method


# virtual methods
.method public Qhi()Lcom/bytedance/sdk/openadsdk/core/ROR/cJ/cJ;
    .locals 7

    .line 94
    new-instance v6, Lcom/bytedance/sdk/openadsdk/core/ROR/cJ/cJ;

    iget v1, p0, Lcom/bytedance/sdk/openadsdk/core/ROR/cJ/cJ$Qhi;->cJ:F

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/ROR/cJ/cJ$Qhi;->Qhi:Ljava/lang/String;

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/ROR/cJ/cJ$Qhi;->ac:Lcom/bytedance/sdk/openadsdk/core/ROR/cJ/ac$ac;

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/ROR/cJ/cJ$Qhi;->CJ:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/core/ROR/cJ/cJ;-><init>(FLjava/lang/String;Lcom/bytedance/sdk/openadsdk/core/ROR/cJ/ac$ac;Ljava/lang/Boolean;Lcom/bytedance/sdk/openadsdk/core/ROR/cJ/cJ$1;)V

    return-object v6
.end method
