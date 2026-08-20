.class public abstract Lcom/bytedance/sdk/component/cJ/Qhi/iMK;
.super Ljava/lang/Object;
.source "Request.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/bytedance/sdk/component/cJ/Qhi/iMK$Qhi;
    }
.end annotation


# instance fields
.field public Qhi:Lcom/bytedance/sdk/component/cJ/Qhi/zc;

.field public cJ:Lcom/bytedance/sdk/component/ac/Qhi/Qhi;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Lcom/bytedance/sdk/component/ac/Qhi/Qhi;

    invoke-direct {v0}, Lcom/bytedance/sdk/component/ac/Qhi/Qhi;-><init>()V

    iput-object v0, p0, Lcom/bytedance/sdk/component/cJ/Qhi/iMK;->cJ:Lcom/bytedance/sdk/component/ac/Qhi/Qhi;

    return-void
.end method


# virtual methods
.method public abstract CJ()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract Qhi()Ljava/lang/Object;
.end method

.method public Qhi(Lcom/bytedance/sdk/component/cJ/Qhi/zc;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/bytedance/sdk/component/cJ/Qhi/iMK;->Qhi:Lcom/bytedance/sdk/component/cJ/Qhi/zc;

    return-void
.end method

.method public abstract ROR()I
.end method

.method public Sf()Lcom/bytedance/sdk/component/cJ/Qhi/pA;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract Tgh()Ljava/lang/String;
.end method

.method public abstract ac()Ljava/lang/String;
.end method

.method public abstract cJ()Lcom/bytedance/sdk/component/cJ/Qhi/Sf;
.end method

.method public abstract fl()Lcom/bytedance/sdk/component/cJ/Qhi/Qhi;
.end method

.method public hm()Lcom/bytedance/sdk/component/cJ/Qhi/iMK$Qhi;
    .locals 1

    .line 49
    new-instance v0, Lcom/bytedance/sdk/component/cJ/Qhi/iMK$Qhi;

    invoke-direct {v0, p0}, Lcom/bytedance/sdk/component/cJ/Qhi/iMK$Qhi;-><init>(Lcom/bytedance/sdk/component/cJ/Qhi/iMK;)V

    return-object v0
.end method
