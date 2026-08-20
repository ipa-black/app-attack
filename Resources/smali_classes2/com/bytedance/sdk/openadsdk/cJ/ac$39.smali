.class final Lcom/bytedance/sdk/openadsdk/cJ/ac$39;
.super Ljava/lang/Object;
.source "AdEventManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/cJ/ac;->Qhi(Lcom/bytedance/sdk/component/Sf/hm;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/component/Sf/hm;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/Sf/hm;)V
    .locals 0

    .line 1454
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$39;->Qhi:Lcom/bytedance/sdk/component/Sf/hm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1457
    iget-object v0, p0, Lcom/bytedance/sdk/openadsdk/cJ/ac$39;->Qhi:Lcom/bytedance/sdk/component/Sf/hm;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lcom/bytedance/sdk/openadsdk/utils/lG;->cJ(Lcom/bytedance/sdk/component/Sf/hm;I)V

    return-void
.end method
