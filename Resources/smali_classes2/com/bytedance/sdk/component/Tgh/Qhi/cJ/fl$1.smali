.class Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/fl$1;
.super Ljava/lang/Object;
.source "LogThreadCenter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/fl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/Tgh;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/fl;


# direct methods
.method constructor <init>(Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/fl;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/fl$1;->Qhi:Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/fl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Qhi(Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/Tgh;Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/Tgh;)I
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/fl$1;->Qhi:Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/fl;

    invoke-static {v0, p1, p2}, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/fl;->Qhi(Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/fl;Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/Tgh;Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/Tgh;)I

    move-result p1

    return p1
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 42
    check-cast p1, Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/Tgh;

    check-cast p2, Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/Tgh;

    invoke-virtual {p0, p1, p2}, Lcom/bytedance/sdk/component/Tgh/Qhi/cJ/fl$1;->Qhi(Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/Tgh;Lcom/bytedance/sdk/component/Tgh/Qhi/CJ/Tgh;)I

    move-result p1

    return p1
.end method
