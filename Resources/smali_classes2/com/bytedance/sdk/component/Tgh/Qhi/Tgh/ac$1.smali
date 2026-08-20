.class Lcom/bytedance/sdk/component/Tgh/Qhi/Tgh/ac$1;
.super Ljava/lang/Object;
.source "TrackAdUrlImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/Tgh/Qhi/Tgh/ac;->Qhi(Lcom/bytedance/sdk/component/Tgh/Qhi/Tgh/fl;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Runnable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic CJ:Lcom/bytedance/sdk/component/Tgh/Qhi/Tgh/ac;

.field final synthetic Qhi:Lcom/bytedance/sdk/component/Tgh/Qhi/Tgh/fl;

.field final synthetic ac:Ljava/util/Map;

.field final synthetic cJ:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/Tgh/Qhi/Tgh/ac;Lcom/bytedance/sdk/component/Tgh/Qhi/Tgh/fl;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Tgh/ac$1;->CJ:Lcom/bytedance/sdk/component/Tgh/Qhi/Tgh/ac;

    iput-object p2, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Tgh/ac$1;->Qhi:Lcom/bytedance/sdk/component/Tgh/Qhi/Tgh/fl;

    iput-object p3, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Tgh/ac$1;->cJ:Ljava/lang/String;

    iput-object p4, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Tgh/ac$1;->ac:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 79
    iget-object v0, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Tgh/ac$1;->CJ:Lcom/bytedance/sdk/component/Tgh/Qhi/Tgh/ac;

    invoke-static {v0}, Lcom/bytedance/sdk/component/Tgh/Qhi/Tgh/ac;->Qhi(Lcom/bytedance/sdk/component/Tgh/Qhi/Tgh/ac;)Lcom/bytedance/sdk/component/Tgh/Qhi/Tgh/Tgh;

    move-result-object v0

    iget-object v1, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Tgh/ac$1;->Qhi:Lcom/bytedance/sdk/component/Tgh/Qhi/Tgh/fl;

    invoke-virtual {v1}, Lcom/bytedance/sdk/component/Tgh/Qhi/Tgh/fl;->Qhi()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/bytedance/sdk/component/Tgh/Qhi/Tgh/Tgh;->Qhi(Ljava/lang/String;)Lcom/bytedance/sdk/component/Tgh/Qhi/Tgh/fl;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 81
    new-instance v0, Lcom/bytedance/sdk/component/Tgh/Qhi/Tgh/ac$Qhi;

    iget-object v2, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Tgh/ac$1;->CJ:Lcom/bytedance/sdk/component/Tgh/Qhi/Tgh/ac;

    iget-object v3, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Tgh/ac$1;->Qhi:Lcom/bytedance/sdk/component/Tgh/Qhi/Tgh/fl;

    iget-object v4, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Tgh/ac$1;->cJ:Ljava/lang/String;

    iget-object v5, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Tgh/ac$1;->ac:Ljava/util/Map;

    const/4 v6, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/bytedance/sdk/component/Tgh/Qhi/Tgh/ac$Qhi;-><init>(Lcom/bytedance/sdk/component/Tgh/Qhi/Tgh/ac;Lcom/bytedance/sdk/component/Tgh/Qhi/Tgh/fl;Ljava/lang/String;Ljava/util/Map;Lcom/bytedance/sdk/component/Tgh/Qhi/Tgh/ac$1;)V

    invoke-virtual {v0}, Lcom/bytedance/sdk/component/Tgh/Qhi/Tgh/ac$Qhi;->run()V

    :cond_0
    return-void
.end method
