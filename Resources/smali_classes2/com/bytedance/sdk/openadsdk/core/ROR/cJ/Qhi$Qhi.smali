.class public Lcom/bytedance/sdk/openadsdk/core/ROR/cJ/Qhi$Qhi;
.super Ljava/lang/Object;
.source "VastAbsoluteProgressTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/ROR/cJ/Qhi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Qhi"
.end annotation


# instance fields
.field private CJ:Z

.field private final Qhi:Ljava/lang/String;

.field private ac:Lcom/bytedance/sdk/openadsdk/core/ROR/cJ/ac$ac;

.field private final cJ:J


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/ROR/cJ/ac$ac;->Qhi:Lcom/bytedance/sdk/openadsdk/core/ROR/cJ/ac$ac;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ROR/cJ/Qhi$Qhi;->ac:Lcom/bytedance/sdk/openadsdk/core/ROR/cJ/ac$ac;

    const/4 v0, 0x0

    .line 67
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/ROR/cJ/Qhi$Qhi;->CJ:Z

    .line 70
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ROR/cJ/Qhi$Qhi;->Qhi:Ljava/lang/String;

    .line 71
    iput-wide p2, p0, Lcom/bytedance/sdk/openadsdk/core/ROR/cJ/Qhi$Qhi;->cJ:J

    return-void
.end method


# virtual methods
.method public Qhi()Lcom/bytedance/sdk/openadsdk/core/ROR/cJ/Qhi;
    .locals 7

    .line 85
    new-instance v6, Lcom/bytedance/sdk/openadsdk/core/ROR/cJ/Qhi;

    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/core/ROR/cJ/Qhi$Qhi;->cJ:J

    iget-object v3, p0, Lcom/bytedance/sdk/openadsdk/core/ROR/cJ/Qhi$Qhi;->Qhi:Ljava/lang/String;

    iget-object v4, p0, Lcom/bytedance/sdk/openadsdk/core/ROR/cJ/Qhi$Qhi;->ac:Lcom/bytedance/sdk/openadsdk/core/ROR/cJ/ac$ac;

    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/ROR/cJ/Qhi$Qhi;->CJ:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/bytedance/sdk/openadsdk/core/ROR/cJ/Qhi;-><init>(JLjava/lang/String;Lcom/bytedance/sdk/openadsdk/core/ROR/cJ/ac$ac;Ljava/lang/Boolean;)V

    return-object v6
.end method
