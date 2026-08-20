.class Lcom/bytedance/sdk/openadsdk/core/hm$5;
.super Ljava/lang/Object;
.source "GlobalInfo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/hm;->Tgh(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Ljava/lang/Integer;

.field final synthetic ac:Lcom/bytedance/sdk/openadsdk/core/hm;

.field final synthetic cJ:I


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/hm;Ljava/lang/Integer;I)V
    .locals 0

    .line 716
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/hm$5;->ac:Lcom/bytedance/sdk/openadsdk/core/hm;

    iput-object p2, p0, Lcom/bytedance/sdk/openadsdk/core/hm$5;->Qhi:Ljava/lang/Integer;

    iput p3, p0, Lcom/bytedance/sdk/openadsdk/core/hm$5;->cJ:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 719
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/hm$5;->ac:Lcom/bytedance/sdk/openadsdk/core/hm;

    iget-object v1, p0, Lcom/bytedance/sdk/openadsdk/core/hm$5;->Qhi:Ljava/lang/Integer;

    iget v2, p0, Lcom/bytedance/sdk/openadsdk/core/hm$5;->cJ:I

    invoke-static {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/core/hm;->ac(Lcom/bytedance/sdk/openadsdk/core/hm;Ljava/lang/Integer;I)V

    return-void
.end method
