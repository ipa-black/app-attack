.class final Lcom/bytedance/adsdk/Qhi/cJ/Qhi$2;
.super Ljava/lang/Object;
.source "Expression.java"

# interfaces
.implements Lcom/bytedance/adsdk/Qhi/cJ/ac/Qhi;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bytedance/adsdk/Qhi/cJ/Qhi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic Qhi:Lcom/bytedance/adsdk/Qhi/cJ/ac/Qhi/ROR;

.field final synthetic cJ:Lcom/bytedance/adsdk/Qhi/cJ/ac/Qhi;


# direct methods
.method constructor <init>(Lcom/bytedance/adsdk/Qhi/cJ/ac/Qhi/ROR;Lcom/bytedance/adsdk/Qhi/cJ/ac/Qhi;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/bytedance/adsdk/Qhi/cJ/Qhi$2;->Qhi:Lcom/bytedance/adsdk/Qhi/cJ/ac/Qhi/ROR;

    iput-object p2, p0, Lcom/bytedance/adsdk/Qhi/cJ/Qhi$2;->cJ:Lcom/bytedance/adsdk/Qhi/cJ/ac/Qhi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Qhi(Ljava/lang/String;ILjava/util/Deque;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Deque<",
            "Lcom/bytedance/adsdk/Qhi/cJ/cJ/Qhi;",
            ">;)I"
        }
    .end annotation

    .line 58
    iget-object v0, p0, Lcom/bytedance/adsdk/Qhi/cJ/Qhi$2;->Qhi:Lcom/bytedance/adsdk/Qhi/cJ/ac/Qhi/ROR;

    iget-object v1, p0, Lcom/bytedance/adsdk/Qhi/cJ/Qhi$2;->cJ:Lcom/bytedance/adsdk/Qhi/cJ/ac/Qhi;

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/bytedance/adsdk/Qhi/cJ/ac/Qhi/ROR;->Qhi(Ljava/lang/String;ILjava/util/Deque;Lcom/bytedance/adsdk/Qhi/cJ/ac/Qhi;)I

    move-result p1

    return p1
.end method
