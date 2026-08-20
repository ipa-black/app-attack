.class public Lcom/bytedance/adsdk/ugeno/core/hpZ;
.super Ljava/lang/Object;
.source "UGenTrack.java"


# instance fields
.field private Qhi:I

.field private ac:Lcom/bytedance/adsdk/ugeno/component/cJ;

.field private cJ:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Qhi()I
    .locals 1

    .line 11
    iget v0, p0, Lcom/bytedance/adsdk/ugeno/core/hpZ;->Qhi:I

    return v0
.end method

.method public Qhi(I)V
    .locals 0

    .line 15
    iput p1, p0, Lcom/bytedance/adsdk/ugeno/core/hpZ;->Qhi:I

    return-void
.end method

.method public Qhi(Lcom/bytedance/adsdk/ugeno/component/cJ;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/core/hpZ;->ac:Lcom/bytedance/adsdk/ugeno/component/cJ;

    return-void
.end method

.method public Qhi(Ljava/lang/String;)V
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/bytedance/adsdk/ugeno/core/hpZ;->cJ:Ljava/lang/String;

    return-void
.end method

.method public cJ()Ljava/lang/String;
    .locals 1

    .line 19
    iget-object v0, p0, Lcom/bytedance/adsdk/ugeno/core/hpZ;->cJ:Ljava/lang/String;

    return-object v0
.end method
