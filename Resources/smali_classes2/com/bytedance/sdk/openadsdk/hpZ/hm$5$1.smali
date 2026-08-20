.class Lcom/bytedance/sdk/openadsdk/hpZ/hm$5$1;
.super Ljava/lang/Object;
.source "PlayablePlugin.java"

# interfaces
.implements Landroid/webkit/ValueCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/openadsdk/hpZ/hm$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/webkit/ValueCallback<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/openadsdk/hpZ/hm$5;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/openadsdk/hpZ/hm$5;)V
    .locals 0

    .line 463
    iput-object p1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm$5$1;->Qhi:Lcom/bytedance/sdk/openadsdk/hpZ/hm$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Qhi(Ljava/lang/String;)V
    .locals 2

    .line 467
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm$5$1;->Qhi:Lcom/bytedance/sdk/openadsdk/hpZ/hm$5;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/hpZ/hm$5;->Qhi:Lcom/bytedance/sdk/openadsdk/hpZ/hm;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->ROR(Lcom/bytedance/sdk/openadsdk/hpZ/hm;)Lcom/bytedance/sdk/openadsdk/hpZ/cJ;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 468
    iget-object p1, p0, Lcom/bytedance/sdk/openadsdk/hpZ/hm$5$1;->Qhi:Lcom/bytedance/sdk/openadsdk/hpZ/hm$5;

    iget-object p1, p1, Lcom/bytedance/sdk/openadsdk/hpZ/hm$5;->Qhi:Lcom/bytedance/sdk/openadsdk/hpZ/hm;

    invoke-static {p1}, Lcom/bytedance/sdk/openadsdk/hpZ/hm;->ROR(Lcom/bytedance/sdk/openadsdk/hpZ/hm;)Lcom/bytedance/sdk/openadsdk/hpZ/cJ;

    move-result-object p1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/bytedance/sdk/openadsdk/hpZ/cJ;->Qhi(J)V

    :cond_0
    return-void
.end method

.method public synthetic onReceiveValue(Ljava/lang/Object;)V
    .locals 0

    .line 463
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/bytedance/sdk/openadsdk/hpZ/hm$5$1;->Qhi(Ljava/lang/String;)V

    return-void
.end method
