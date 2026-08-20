.class public Lcom/bytedance/sdk/openadsdk/utils/Qhi$Tgh;
.super Ljava/lang/Object;
.source "ActivityLifecycleListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/openadsdk/utils/Qhi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Tgh"
.end annotation


# instance fields
.field private CJ:Z

.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/utils/Qhi;

.field private ac:J

.field private cJ:J


# direct methods
.method public constructor <init>(Lcom/bytedance/sdk/openadsdk/utils/Qhi;JJZ)V
    .locals 0

    .line 199
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/utils/Qhi$Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/utils/Qhi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    iput-wide p2, p0, Lcom/bytedance/sdk/openadsdk/utils/Qhi$Tgh;->cJ:J

    .line 201
    iput-wide p4, p0, Lcom/bytedance/sdk/openadsdk/utils/Qhi$Tgh;->ac:J

    .line 202
    iput-boolean p6, p0, Lcom/bytedance/sdk/openadsdk/utils/Qhi$Tgh;->CJ:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 206
    iget-boolean v0, p0, Lcom/bytedance/sdk/openadsdk/utils/Qhi$Tgh;->CJ:Z

    if-eqz v0, :cond_0

    .line 208
    invoke-static {}, Lcom/bytedance/sdk/openadsdk/Gm/ac;->Qhi()Lcom/bytedance/sdk/openadsdk/Gm/ac;

    move-result-object v0

    iget-wide v1, p0, Lcom/bytedance/sdk/openadsdk/utils/Qhi$Tgh;->cJ:J

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    iget-wide v5, p0, Lcom/bytedance/sdk/openadsdk/utils/Qhi$Tgh;->ac:J

    div-long/2addr v5, v3

    invoke-virtual {v0, v1, v2, v5, v6}, Lcom/bytedance/sdk/openadsdk/Gm/ac;->Qhi(JJ)V

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/utils/Qhi$Tgh;->Qhi:Lcom/bytedance/sdk/openadsdk/utils/Qhi;

    invoke-static {v0}, Lcom/bytedance/sdk/openadsdk/utils/Qhi;->cJ(Lcom/bytedance/sdk/openadsdk/utils/Qhi;)V

    return-void
.end method
