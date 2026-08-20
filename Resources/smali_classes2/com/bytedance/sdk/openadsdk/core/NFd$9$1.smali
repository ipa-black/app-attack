.class Lcom/bytedance/sdk/openadsdk/core/NFd$9$1;
.super Ljava/lang/Object;
.source "TTAndroidObject.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/core/NFd$9;->Qhi(ZLjava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Z

.field final synthetic ac:Lcom/bytedance/sdk/openadsdk/core/NFd$9;

.field final synthetic cJ:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/core/NFd$9;ZLjava/util/List;)V
    .locals 0

    .line 1495
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/core/NFd$9$1;->ac:Lcom/bytedance/sdk/openadsdk/core/NFd$9;

    iput-boolean p2, p0, Lcom/bytedance/sdk/openadsdk/core/NFd$9$1;->Qhi:Z

    iput-object p3, p0, Lcom/bytedance/sdk/openadsdk/core/NFd$9$1;->cJ:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1498
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/core/NFd$9$1;->ac:Lcom/bytedance/sdk/openadsdk/core/NFd$9;

    iget-object v0, v0, Lcom/bytedance/sdk/openadsdk/core/NFd$9;->Qhi:Lcom/bytedance/sdk/openadsdk/WAv/ac;

    iget-boolean v1, p0, Lcom/bytedance/sdk/openadsdk/core/NFd$9$1;->Qhi:Z

    iget-object v2, p0, Lcom/bytedance/sdk/openadsdk/core/NFd$9$1;->cJ:Ljava/util/List;

    invoke-interface {v0, v1, v2}, Lcom/bytedance/sdk/openadsdk/WAv/ac;->Qhi(ZLjava/util/List;)V

    return-void
.end method
