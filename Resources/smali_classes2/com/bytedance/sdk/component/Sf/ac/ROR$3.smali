.class Lcom/bytedance/sdk/component/Sf/ac/ROR$3;
.super Lcom/bytedance/sdk/component/Sf/ac/cJ;
.source "PagThreadPoolExecutor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/Sf/ac/ROR;->execute(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/component/Sf/ac/ROR;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/Sf/ac/ROR;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    .line 199
    iput-object p1, p0, Lcom/bytedance/sdk/component/Sf/ac/ROR$3;->Qhi:Lcom/bytedance/sdk/component/Sf/ac/ROR;

    invoke-direct {p0, p2, p3}, Lcom/bytedance/sdk/component/Sf/ac/cJ;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 202
    invoke-virtual {p0}, Lcom/bytedance/sdk/component/Sf/ac/ROR$3;->Sf()Ljava/lang/Runnable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 204
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method
