.class Lcom/bytedance/sdk/component/Tgh/Qhi/Tgh/ac$2;
.super Lcom/bytedance/sdk/component/Tgh/Qhi/fl/Tgh;
.source "TrackAdUrlImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/Tgh/Qhi/Tgh/ac;->Qhi(Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Ljava/lang/String;

.field final synthetic ac:Lcom/bytedance/sdk/component/Tgh/Qhi/Tgh/ac;

.field final synthetic cJ:Z


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/Tgh/Qhi/Tgh/ac;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Tgh/ac$2;->ac:Lcom/bytedance/sdk/component/Tgh/Qhi/Tgh/ac;

    iput-object p3, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Tgh/ac$2;->Qhi:Ljava/lang/String;

    iput-boolean p4, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Tgh/ac$2;->cJ:Z

    invoke-direct {p0, p2}, Lcom/bytedance/sdk/component/Tgh/Qhi/fl/Tgh;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 99
    iget-object v0, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Tgh/ac$2;->ac:Lcom/bytedance/sdk/component/Tgh/Qhi/Tgh/ac;

    invoke-static {v0}, Lcom/bytedance/sdk/component/Tgh/Qhi/Tgh/ac;->Qhi(Lcom/bytedance/sdk/component/Tgh/Qhi/Tgh/ac;)Lcom/bytedance/sdk/component/Tgh/Qhi/Tgh/Tgh;

    move-result-object v0

    invoke-interface {v0}, Lcom/bytedance/sdk/component/Tgh/Qhi/Tgh/Tgh;->Qhi()Ljava/util/List;

    move-result-object v0

    .line 100
    iget-object v1, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Tgh/ac$2;->ac:Lcom/bytedance/sdk/component/Tgh/Qhi/Tgh/ac;

    iget-object v2, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Tgh/ac$2;->Qhi:Ljava/lang/String;

    iget-boolean v3, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/Tgh/ac$2;->cJ:Z

    invoke-static {v1, v0, v2, v3}, Lcom/bytedance/sdk/component/Tgh/Qhi/Tgh/ac;->Qhi(Lcom/bytedance/sdk/component/Tgh/Qhi/Tgh/ac;Ljava/util/List;Ljava/lang/String;Z)V

    return-void
.end method
