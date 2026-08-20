.class Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/cJ$1;
.super Ljava/lang/Object;
.source "NetCall.java"

# interfaces
.implements Lcom/bytedance/sdk/component/cJ/Qhi/hm;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/cJ;->Qhi()Lcom/bytedance/sdk/component/cJ/Qhi/hpZ;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/cJ;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/cJ;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/cJ$1;->Qhi:Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/cJ;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Qhi(Lcom/bytedance/sdk/component/cJ/Qhi/hm$Qhi;)Lcom/bytedance/sdk/component/cJ/Qhi/hpZ;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/cJ$1;->Qhi:Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/cJ;

    invoke-interface {p1}, Lcom/bytedance/sdk/component/cJ/Qhi/hm$Qhi;->Qhi()Lcom/bytedance/sdk/component/cJ/Qhi/iMK;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/bytedance/sdk/component/cJ/Qhi/Qhi/Qhi/cJ;->Qhi(Lcom/bytedance/sdk/component/cJ/Qhi/iMK;)Lcom/bytedance/sdk/component/cJ/Qhi/hpZ;

    move-result-object p1

    return-object p1
.end method
