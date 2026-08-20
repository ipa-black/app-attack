.class public Lcom/bytedance/adsdk/Qhi/cJ/ac/Qhi/Gm;
.super Lcom/bytedance/adsdk/Qhi/cJ/ac/Qhi/ROR;
.source "SkipIgnoredToken.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/bytedance/adsdk/Qhi/cJ/ac/Qhi/ROR;-><init>()V

    return-void
.end method


# virtual methods
.method public Qhi(Ljava/lang/String;ILjava/util/Deque;Lcom/bytedance/adsdk/Qhi/cJ/ac/Qhi;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/Deque<",
            "Lcom/bytedance/adsdk/Qhi/cJ/cJ/Qhi;",
            ">;",
            "Lcom/bytedance/adsdk/Qhi/cJ/ac/Qhi;",
            ")I"
        }
    .end annotation

    .line 13
    invoke-virtual {p0, p2, p1}, Lcom/bytedance/adsdk/Qhi/cJ/ac/Qhi/Gm;->cJ(ILjava/lang/String;)I

    move-result p2

    .line 14
    invoke-interface {p4, p1, p2, p3}, Lcom/bytedance/adsdk/Qhi/cJ/ac/Qhi;->Qhi(Ljava/lang/String;ILjava/util/Deque;)I

    move-result p1

    return p1
.end method
