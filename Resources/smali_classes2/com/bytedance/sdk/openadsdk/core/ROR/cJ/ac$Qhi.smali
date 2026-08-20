.class public Lcom/bytedance/sdk/openadsdk/core/ROR/cJ/ac$Qhi;
.super Ljava/lang/Object;
.source "VastTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/core/ROR/cJ/ac;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Qhi"
.end annotation


# instance fields
.field private final Qhi:Ljava/lang/String;

.field private ac:Z

.field private cJ:Lcom/bytedance/sdk/openadsdk/core/ROR/cJ/ac$ac;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    sget-object v0, Lcom/bytedance/sdk/openadsdk/core/ROR/cJ/ac$ac;->Qhi:Lcom/bytedance/sdk/openadsdk/core/ROR/cJ/ac$ac;

    iput-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/ROR/cJ/ac$Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/ROR/cJ/ac$ac;

    const/4 v0, 0x0

    .line 95
    iput-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/core/ROR/cJ/ac$Qhi;->ac:Z

    .line 98
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/ROR/cJ/ac$Qhi;->Qhi:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public Qhi(Z)Lcom/bytedance/sdk/openadsdk/core/ROR/cJ/ac$Qhi;
    .locals 0

    .line 107
    iput-boolean p1, p0, Lcom/bytedance/sdk/openadsdk/core/ROR/cJ/ac$Qhi;->ac:Z

    return-object p0
.end method

.method public Qhi()Lcom/bytedance/sdk/openadsdk/core/ROR/cJ/ac;
    .locals 4

    .line 112
    new-instance v0, Lcom/bytedance/sdk/openadsdk/core/ROR/cJ/ac;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/ROR/cJ/ac$Qhi;->Qhi:Ljava/lang/String;

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/ROR/cJ/ac$Qhi;->cJ:Lcom/bytedance/sdk/openadsdk/core/ROR/cJ/ac$ac;

    iget-boolean v3, p0, Lcom/bytedance/sdk/openadsdk/core/ROR/cJ/ac$Qhi;->ac:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/bytedance/sdk/openadsdk/core/ROR/cJ/ac;-><init>(Ljava/lang/String;Lcom/bytedance/sdk/openadsdk/core/ROR/cJ/ac$ac;Ljava/lang/Boolean;)V

    return-object v0
.end method
